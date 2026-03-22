# bash-lab

A collection of Bash scripting experiments covering core language features and practical file-management projects.

## Repository Structure

```
bash-lab/
├── features/            # 15 standalone scripts — one concept per file
│   ├── testvscode.sh
│   ├── emptyString.sh
│   ├── greetings.sh
│   ├── stringIf.sh
│   ├── variableSpace.sh
│   ├── loopScript.sh
│   ├── ExScript.sh
│   ├── ExScript2.sh
│   ├── caseScript.sh
│   ├── txtSearch.sh
│   ├── funcScript.sh
│   ├── whileScript.sh
│   ├── fileIf.sh
│   ├── number.sh
│   └── divisible3.sh
└── projects/
    ├── word_search/     # Recursive file-content search tool
    │   ├── wordsearchfiles.sh
    │   └── wordsearchfolders.sh
    └── jpgtxt/
        └── renamefiles.sh  # Interactive batch file renamer
```

## Features — Script-by-Script

| Script | Topic | Key Concepts |
|--------|-------|-------------|
| `testvscode.sh` | Basic I/O & conditionals | `echo`, `read`, `if/else`, exit status |
| `emptyString.sh` | String validation | `-z` (empty-string test), importance of quoting variables in `[ ]` |
| `greetings.sh` | User interaction | Multiple `read -p` prompts, `${variable}` interpolation, `cat` |
| `stringIf.sh` | String comparison | `==`, `!=`, case-sensitive matching, password-validation pattern |
| `variableSpace.sh` | Quoting pitfalls | Demonstrates breakage when variables containing spaces are unquoted |
| `loopScript.sh` | `for` loops | Iterating over `$(ls)`, `break`, conditional inside loop body |
| `ExScript.sh` | File/dir operations | `mkdir`, `touch`, `ls -l > file`, `mv` rename |
| `ExScript2.sh` | File creation | `touch` + `chmod +x` from user-provided filename |
| `caseScript.sh` | `case` statements | Menu-driven `case … in`, pattern matching, `*)` default |
| `txtSearch.sh` | Glob + arithmetic | `for file in *.txt`, `$((++num))` counter |
| `funcScript.sh` | Functions (advanced) | `return` values, `$1`/`$2`/`$3` args, `$?` exit status, `local` keyword, global-vs-local scope |
| `whileScript.sh` | `while` loops | `-le` comparison, `$((number + 1))` increment |
| `fileIf.sh` | File-test operators | `-e`, `-f`, `-d`, `-r`, `-w`, `-x`, `-s`, `!` negation |
| `number.sh` | Arithmetic & comparisons | `+` `-` `*` `/` `%` `**`, pre/post increment, compound assignment (`+=`, `*=`), `-eq` `-gt` `-lt` `-ne`, `-o` (OR) `-a` (AND), `elif` chains |
| `divisible3.sh` | Functional loop pattern | Function with `local`, modulo `%` divisibility check, loop with custom exit condition |

## Projects

### Word Search

Two scripts that search for a user-supplied phrase across files and directories.

- **`wordsearchfiles.sh`** — searches files in the current directory with `grep -ni`, copies matching files into a `search_result/` directory, and appends grep output.
- **`wordsearchfolders.sh`** — extends the search recursively using `find . -type d` with nested loops; includes a safety confirmation before deleting prior results.

### JPG/TXT Batch Renamer

**`renamefiles.sh`** — an interactive, menu-driven workflow that:

1. Lists and optionally removes existing `.txt`/`.jpg` files.
2. Creates new files via brace expansion (`{1..4}`).
3. Bulk-renames files with a user-supplied prefix using a `while` loop and `mv`.
4. Handles case-insensitive yes/no input through duplicate `case` branches.

Includes inline comments explaining the common `mv` gotcha with glob patterns.

## Bash Concepts Covered

**Control flow:** `if`/`elif`/`else`, `case`/`esac`, `for`, `while`, `break`

**Operators & tests:**
- String — `==`, `!=`, `-z`
- Numeric — `-eq`, `-gt`, `-lt`, `-le`, `-ge`, `-ne`, `-a` (AND), `-o` (OR)
- File system — `-e`, `-f`, `-d`, `-r`, `-w`, `-x`, `-s`, `!`

**Variables & scope:** global by default, `local` keyword, `$1`–`$3` positional params, `$?` exit status, arithmetic expansion `$(( ))`, `${var}` interpolation

**Functions:** declaration syntax, `return` overriding exit status, parameter passing

**File operations:** `touch`, `mkdir`, `rm`, `cp`, `mv`, `chmod`, `cat`, `ls`, `find`, `grep -ni`, output redirection (`>`, `>>`)

**I/O:** `read -p`, `echo`, `sleep`, `date`, `basename`

## Running

All scripts use `#!/usr/bin/bash`. Make a script executable and run it:

```bash
chmod +x features/number.sh
./features/number.sh
```
