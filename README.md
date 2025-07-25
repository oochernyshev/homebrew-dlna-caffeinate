# dlna-caffeinate

🛌 Prevent your Mac from sleeping while MiniDLNA is running — lightweight background utility powered by `caffeinate`.


## 🔧 What It Does

`dlna-caffeinate` monitors the `minidlnad` process and only activates macOS's `caffeinate` utility **while MiniDLNA is actively running**. This ensures your Mac stays awake while streaming media to other devices — but can still sleep when idle.

Perfect for setups using:

* MiniDLNA to serve movies from macOS
* Android TV or DLNA clients

## 🍺 Homebrew Installation

```bash
brew tap oochernyshev/dlna-caffeinate
brew install dlna-caffeinate
brew services start dlna-caffeinate
```


## 🚦 Commands

```bash
brew services start dlna-caffeinate   # Start background monitor as a service
brew services stop dlna-caffeinate    # Stop the background service
brew services list                    # Check if it's running
```



## 💡 How It Works

* Monitors if **MiniDLNA is actively streaming** (i.e., serving content to a remote device).
* Keeps your Mac awake **only while there is an active DLNA streaming session**.
* Uses the built-in `caffeinate` command to prevent system sleep.
* Automatically stops keeping the Mac awake when streaming ends or no clients are connected.



## 📝 Logs

The background service writes logs to:

* `/opt/homebrew/var/log/dlna-caffeinate.log` (Apple Silicon)
* `/usr/local/var/log/dlna-caffeinate.log` (Intel)

*(Depends on your Homebrew install location.)*



## 📄 License

This project is licensed under the [MIT License](LICENSE).



**That’s it!** This README now fits a single Homebrew-native open-source project.

Let me know if you want a contributor section or anything else added!
