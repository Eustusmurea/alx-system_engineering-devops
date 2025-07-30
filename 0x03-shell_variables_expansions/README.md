# Shell Basics and Scripting Guide

This README provides a concise summary of key shell concepts, commands, and configuration files. It’s designed alx shell scripting projects and technical interviews.

---

## 📁 What Happens When You Run: `ls -l *.txt`

- `*.txt`: Shell performs **filename expansion** (globbing) to match `.txt` files.
- `ls -l`: Lists files in **long format**.
- The shell expands the wildcard **before** passing it to `ls`.

---

## 🗂️ Shell Initialization Files

| File | Purpose |
|------|---------|
| `/etc/profile` | System-wide config for login shells |
| `/etc/profile.d/` | Scripts sourced by `/etc/profile` |
| `~/.bashrc` | User config for interactive non-login shells |
| `~/.bash_profile` or `~/.profile` | User config for login shells |

---

## 🔁 Shell Variables

### Local vs Global Variables

- **Local**: Exist only in the current shell.
  ```bash
  name="Eustus"
  ```
- **Global** (Environment Variables): Passed to child processes.
  ```bash
  export NAME="Eustus"
  ```

### Reserved Variables

| Variable | Meaning |
|---------|---------|
| `HOME` | Home directory path |
| `PATH` | Executable search paths |
| `PS1`  | Prompt string |

### Special Parameters

| Parameter | Description |
|----------|-------------|
| `$?` | Exit status of last command |
| `$0` | Script name |
| `$1`, `$2`, ... | Positional arguments |
| `$#` | Number of arguments |
| `$@`, `$*` | All arguments |

---

## 🔍 Expansions

### Types of Expansions

- **Variable Expansion**:
  ```bash
  echo $USER
  ```

- **Command Substitution**:
  ```bash
  today=$(date)
  echo "Today is $today"
  ```

- **Arithmetic Expansion**:
  ```bash
  echo $((3 + 4))
  ```

### Quotes

| Quotes | Effect |
|--------|--------|
| `'single'` | Prevents **all** expansion |
| `"double"` | Allows **variables/commands**, prevents word splitting |

---

## ➗ Shell Arithmetic

Perform integer arithmetic using `((...))` or `$((...))`:

```bash
a=10
b=3
echo $((a + b))   # Output: 13
```

Supported: `+ - * / %`

---

## 🧩 Alias Command

- **Create Alias**:
  ```bash
  alias ll='ls -l'
  ```
- **List Aliases**:
  ```bash
  alias
  ```
- **Temporarily Disable**:
  ```bash
  \ll
  ```
- **Remove Alias**:
  ```bash
  unalias ll
  ```

---

## 🛠 Built-in Shell Commands

| Command | Description |
|---------|-------------|
| `printenv` | Show environment variables |
| `set` | Display all variables/functions |
| `unset VAR` | Remove a variable |
| `export VAR=value` | Make variable global |
| `alias` / `unalias` | Create/remove aliases |
| `.` or `source` | Execute a file in the current shell |
| `printf` | Formatted output |
| `bash script.sh` | Run script in a **new** shell |
| `source script.sh` | Run script in **current** shell |

---

## ✍️ Technical Writing Tips

- Include a header comment in scripts
- Comment complex or tricky parts
- Follow consistent naming conventions
- Write clearly and concisely

---

## 📌 Summary Tips

- Use `export` for environment variables
- Use `source` to run scripts that set variables/functions
- Prefer `$(command)` over backticks for command substitution
- Use `echo $?` to check the exit status of the last command
- Use aliases to save time with frequent commands

---

> This guide is based on core concepts from shell scripting, commonly encountered in Linux systems and technical interviews.