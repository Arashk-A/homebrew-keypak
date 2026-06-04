# homebrew-keypak

Homebrew tap for **keypak** — the official CLI for [KeyOpera](https://apps.apple.com/app/keyopera/id6740422141).

---

## Install

```bash
brew tap birangdev/keypak
brew install keypak
```

---

## Sound Packs

Download free `.keypak` packs at **[mbirang.com/keyopera](https://mbirang.com/keyopera)** or directly from **[GitHub Releases](https://github.com/birangdev/homebrew-keypak/releases/tag/packs-v1)**.

Double-click any `.keypak` file to install it into KeyOpera automatically, or install from the terminal:

```bash
keypak install mypack.keypak
keypak effect mypack
```

---

## What is keypak?

`keypak` is a command-line tool that lets you control KeyOpera and create your own custom mechanical keyboard sound packs.

### Control KeyOpera from the terminal

```bash
keypak list                           # List all available sound packs
keypak effect <name>                  # Switch the active sound pack
keypak mute keyboard|mouse            # Mute keyboard or mouse sounds
keypak unmute keyboard|mouse          # Unmute keyboard or mouse sounds
keypak volume keyboard|mouse <0-100>  # Set volume (0–100)
```

### Create and distribute sound packs

```bash
keypak init [path]      # Generate manifest.json from your audio files
keypak validate [path]  # Validate a pack before distributing
keypak pack [directory] # Bundle into a .keypak file
keypak install <path>   # Install a .keypak into KeyOpera
```

`init`, `validate`, and `pack` auto-detect the current directory — just `cd` into your pack folder and run the command with no arguments.

---

## Creating a sound pack

### 1. Put your audio files in a folder

Name them after the keys they should play for:

| Filename | Key | Filename | Key |
|---|---|---|---|
| `a.wav` – `z.wav` | Letters | `space.wav` | Space |
| `0.wav` – `9.wav` | Numbers | `return.wav` | Return |
| `F1.wav` – `F12.wav` | Function keys | `delete.wav` | Delete |
| `shift.wav` | Shift | `tab.wav` | Tab |
| `command.wav` | Command | `option.wav` | Option |
| `control.wav` | Control | `fn.wav` | Fn |
| `capsLock.wav` | Caps Lock | `esc.wav` | Escape |
| `underscore.wav` | `_` | `plus.wav` | `+` |
| `bracketOpen.wav` | `[` | `bracketClose.wav` | `]` |
| `backslash.wav` | `\` | `semicolon.wav` | `;` |
| `singleQuote.wav` | `'` | `comma.wav` | `,` |
| `period.wav` | `.` | `slash.wav` | `/` |
| `Numpad0.wav` – `Numpad9.wav` | Numpad digits | `NumpadAdd.wav` | Numpad `+` |

Any file not matching a specific key name becomes part of the **default pool** — a random sound from this pool plays for unmapped keys. You don't need a file for every key.

### 2. Run init, validate, pack

```bash
cd my-pack/

keypak init --author yourName
# → generates manifest.json with your name set automatically

keypak validate
# → OK  '/path/to/my-pack'

keypak pack
# → my-pack.keypak
```

You can pass your name in any of these forms:

```bash
keypak init --author yourName
keypak init --author=yourName
keypak init author=yourName
```

`--author` also works when creating a named subfolder:

```bash
keypak init my-pack --author yourName
```

### 3. Install and share

```bash
keypak install my-pack.keypak
keypak effect my-pack
```

Share the `.keypak` file — recipients can double-click it to import directly into KeyOpera, or install it with `keypak install`.

---

## Requirements

- macOS 13+
- [KeyOpera](https://apps.apple.com/app/keyopera/id6740422141)

---

## License

MIT
