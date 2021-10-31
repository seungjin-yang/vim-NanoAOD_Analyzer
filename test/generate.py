#!/usr/bin/env python3
import os
import glob
from pathlib import Path
import argparse

COMMON_SYNTAX = r'''""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" numbers
syntax match NanoAODAnalyzerNumber "\v<\d+>"
syntax match NanoAODAnalyzerNumber "\v<\d+\.\d+>"
syntax match NanoAODAnalyzerNumber "\v<\d*\.?\d+([Ee]-?)?\d+>"
syntax match NanoAODAnalyzerNumber "\v<0x\x+([Pp]-?)?\x+>"
syntax match NanoAODAnalyzerNumber "\v<0b[01]+>"
syntax match NanoAODAnalyzerNumber "\v<0o\o+>"

highlight default link NanoAODAnalyzerNumber Number

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" boolean
syntax match NanoAODAnalyzerTrue "\v<true>"
highlight default link NanoAODAnalyzerTrue Special

syntax match NanoAODAnalyzerFalse "\v<false>"
highlight default link NanoAODAnalyzerFalse Boolean


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" comment
syntax match NanoAODAnalyzerComment "#.*$" contains=NanoAODAnalyzerTodo
syntax match NanoAODAnalyzerComment "//.*$" contains=NanoAODAnalyzerTodo

highlight default link NanoAODAnalyzerComment Comment

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" todo
syntax keyword NanoAODAnalyzerTodo TODO contained
syntax keyword NanoAODAnalyzerTodo FIXME contained
syntax keyword NanoAODAnalyzerTodo NOTE contained
syntax keyword NanoAODAnalyzerTodo XXX contained

highlight default link NanoAODAnalyzerTodo Todo
'''

SYNTAX_TEMPLATE = """\" VandyHEP/NanoAOD_Analyzer Configuration, {filename}
\" Maintainer: Seungjin Yang
\" Version: 0.1

let syntax_dir = fnamemodify(resolve(expand('<sfile>:p')), ':p:h')
exec 'source' syntax_dir . '/NanoAOD_Analyzer.vim'
{blocks}
syntax keyword keys
    \\ {keys}

highlight default link keys Identifier
"""

BLOCKS_TEMPLATE = """
syntax keyword blocks
    \\ {0}

highlight default link blocks Todo
"""


FTDETECT_TEMPLATE = "auto BufRead,BufNewFile {0} set filetype={0}"

def parse_block_line(line):
    if line.startswith(("#", "\n", "//")):
        return None

    while line.endswith("\n"):
        line = line[:-1]

    for comment_start in ["#", "//"]:
        if comment_start in line:
            line = line[: line.index(comment_start)]

    line = line.replace("\t", " ")
    line = line.replace("***", "")
    line = [token for token in line.split(" ") if len(token) > 0]

    num_tokens = len(line)
    if num_tokens == 1:
        return line[0]
    else:
        return None

def parse_key_line(line):
    if line.startswith(("#", "\n", "//", " ", "\t")):
        return None

    while line.endswith("\n"):
        line = line[:-1]

    for comment_start in ["#", "//"]:
        if comment_start in line:
            line = line[: line.index(comment_start)]

    line = line.replace("\t", " ")
    line = line.replace("***", "")
    line = [token for token in line.split(" ") if len(token) > 0]

    num_tokens = len(line)
    if num_tokens == 1:
        return None
    elif num_tokens > 1:
        return line[0]
    else:
        raise ValueError(line)

def parse_line(config, parsing_fn):
    config = [parsing_fn(line) for line in config]
    config = [each for each in config if each is not None]
    if len(config) == 0:
        return None
    else:
        unique_keys = list(set(config))
        unique_keys = sorted(unique_keys, key=lambda each: config.index(each))
        return "\n    \\ ".join(unique_keys)


def generate_common_syntax(syntax_dir: Path
) -> None:
    syntax_path = syntax_dir.joinpath("NanoAOD_Analyzer.vim")
    with open(syntax_path, "w") as syntax_file:
        syntax_file.write(COMMON_SYNTAX)
    return syntax_path

def generate_syntax(config_path: Path,
                    syntax_dir: Path
) -> None:
    with open(config_path, "r") as config_file:
        config = config_file.readlines()

    keys = parse_line(config, parsing_fn=parse_key_line)
    blocks = parse_line(config, parsing_fn=parse_block_line)

    blocks = BLOCKS_TEMPLATE.format(blocks) if blocks is not None else ""

    syntax = SYNTAX_TEMPLATE.format(
        filename=config_path.name,
        blocks=blocks,
        keys=keys)

    syntax_path = syntax_dir.joinpath(config_path.with_suffix(".vim").name)
    with open(syntax_path, "w") as syntax_file:
        syntax_file.write(syntax)
    return syntax_path


def generate_ftdetect(part_det_dir: Path,
                      ftdetect_dir: Path
) -> None:
    ftdetect = sorted(part_det_dir.glob("*.in"))
    ftdetect = [FTDETECT_TEMPLATE.format(each.name) for each in ftdetect]
    ftdetect = "\n".join(ftdetect)

    ftdetect_path = ftdetect_dir.joinpath("NanoAOD-Analyzer.vim")
    with open(ftdetect_path, "w") as ftdetect_file:
        ftdetect_file.write(ftdetect)
    return ftdetect_path

def main():
    parser = argparse.ArgumentParser(
        formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    parser.add_argument("-i", "--part-det-dir", type=Path, required=True,
                        help='NanoAOD_Analyzer/PartDet')
    parser.add_argument("-o", "--vim-dir", type=Path, required=True,
                        help='output directory')
    args = parser.parse_args()

    part_det_dir = args.part_det_dir

    vim_dir = args.vim_dir
    syntax_dir = vim_dir.joinpath("syntax")
    ftdetect_dir = vim_dir.joinpath("ftdetect")

    if not vim_dir.exists():
        # TODO verbose
        vim_dir.mkdir(parents=True)
    syntax_dir.mkdir()
    ftdetect_dir.mkdir()

    config_file_list = list(part_det_dir.glob("*.in"))
    if len(config_file_list) == 0:
        raise FileNotFoundError(f'file not found: {part_det_dir}')

    for each in config_file_list:
        generate_syntax(each, syntax_dir)
    generate_common_syntax(syntax_dir)
    generate_ftdetect(part_det_dir, ftdetect_dir)

if __name__ == "__main__":
    main()
