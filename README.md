# Homebrew Tap: dlna-caffeinate

🍺 This is a Homebrew tap for [dlna-caffeinate](https://github.com/oochernyshev/dlna-caffeinate), a lightweight macOS CLI tool that prevents your Mac from sleeping while [MiniDLNA](https://sourceforge.net/projects/minidlna/) is running.

---

## 🔧 Install

First, tap the repository:

```bash
brew tap oochernyshev/dlna-caffeinate
````

Then install the CLI utility:

```bash
brew install dlna-caffeinate
```

To install the background monitor:

```bash
dlna-caffeinate install
```

---

## 💡 What It Does

* Watches for the `minidlnad` process
* Keeps your Mac awake only while it is running
* Uses the built-in `caffeinate` command
* Stops keeping awake when DLNA activity ends

---

## 📄 License

See the main project at [oochernyshev/dlna-caffeinate](https://github.com/oochernyshev/dlna-caffeinate) for license and source.

```
