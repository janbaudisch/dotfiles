# dotfiles

> My personal dotfiles. CC0 licesensed, just pick out what you can use.

## Management

I handle everything via git, all files are relative to the home directory where
the git repo is. `.gitignore` defines what gets included and what doesn't.
This is not the most ergonomic way for a first time setup (e.g. new system),
but the most pure solution and I don't want to use another tool for such a
simple task.

Because it can be troublesome to have a git root in your home directory, I
move `.git` to `._git` and only bring it back to update something.
Again, maybe not the most ergonomic thing to do, but simple and possibly
easy to script.

## Files

### `.config`

#### Alacritty

Not used right now.

#### Cura

Stores the config containing my printer setup. Not really reusable.

#### Fish

Uses bass to source my bash-like profile, nothing more (for now).

#### Redshift

Not used right now.

#### Rofi

Not used right now.

#### Sway

Not used right now.

#### Waybar

Not used right now.

---

### Scripts

I put all my executable scripts in `.local/share/scripts`, which is put into
the `$PATH` by `.profile`.

#### `brlupdate`

Updates bedrock and the arch strata via trizen.

_Uses `sudo`._

#### `rupdate`

Updates the Rust toolchain via `rustup` and uses `cargo-install` to update all
Cargo-installed crates.

#### `update`

Updates:

 1. Fedora (`dnf`)
 2. Bedrock if available (`brlupdate`)
 3. Flatpak + removes unused
 4. Rust (`rupdate`)
 5. Android SDK
 6. Flutter + disables analytics

_Uses `sudo`._

---

### Everything else

#### Bash

Just redirects to the general profile. `.bash_profile` sources `.bashrc` which
in turn sources `.profile`.

#### Git

`.gitignore` controlls which dotfiles get version-controlled.

`.gitconfig` contains global configurations for Git.

#### Profile

`.profile` contains the shell configuration. `lsd` is used as an `ls`
replacement, Rust, Dart, Flutter and Android SDK are set up.

The following paths are used:

 - Android SDK: `~/.android/sdk`
 - Dart: `~/.dart-sdk`
 - Flutter: `~/.flutter-sdk`

Also, GnuPG is configured to use a smartcard and provide SSH authentication.
