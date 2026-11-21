# 🦉 Hack4U · S4vitar Knowledge

**Everything I've learned from S4vitar's (Hack4U) courses, in one place.** Each course is its own section with notes grouped by what they do, copy-ready examples, and a searchable web version. There's also an **Everything** section where all courses are mixed together, and my own **Practice Scripts**.

## 📚 Courses

| Course | What's inside | Notes | Web |
|:--|:--|:--|:--|
| 🐧 **[Linux Fundamentals · S4VITAR](Linux-Fundamentals-S4VITAR/README.md)** | Linux commands and Bash scripting | [README](Linux-Fundamentals-S4VITAR/README.md) | [`index.html`](Linux-Fundamentals-S4VITAR/docs/index.html) |
| 🐚 **[Bash Scripting Fundamentals · S4VITAR](Bash-Scripting-Fundamentals-S4VITAR/README.md)** | Commands, parameters and scripting from the Bash course | [README](Bash-Scripting-Fundamentals-S4VITAR/README.md) | [`index.html`](Bash-Scripting-Fundamentals-S4VITAR/docs/index.html) |

## 🧠 Everything

Everything from every course, all mixed together and grouped by what it does (no split by course).

| Section | What's inside | Notes | Web |
|:--|:--|:--|:--|
| 🧠 **[Everything](Everything/README.md)** | All I've learned, in one place | [README](Everything/README.md) | [`index.html`](Everything/docs/index.html) |

## 🧪 Practice Scripts

| Section | What's inside |
|:--|:--|
| 🧪 **[Practice Scripts](Practice-Scripts/README.md)** | Real Bash scripts I wrote while learning |

## 🛠️ How it works

Every course section (and Everything) is generated from its own CSVs:

- `data/*.csv` → the source of truth (categories, commands, parameters)
- `python3 scripts/build.py` → regenerates that section's `README.md`, `notes/` and `docs/index.html`

New courses get their own section, a new row in the Courses table, and their content is also added to Everything.
