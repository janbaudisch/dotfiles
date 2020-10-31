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

#### [Alacritty][alacritty]

Not used right now.

#### Cura

Stores the config containing my printer setup. Not really reusable.

#### [Fish][fish]

Uses [bass][bass] to source my bash-like profile, nothing more (for now).

#### [Redshift][redshift]

Not used right now.

#### [Rofi][rofi]

Not used right now.

#### [Sway][sway]

Not used right now.

#### [Waybar][waybar]

Not used right now.

---

### Scripts

I put all my executable scripts in `.local/share/scripts`, which is put into
the `$PATH` by `.profile`.

#### `brlupdate`

Updates [Bedrock Linux][bedrock] and the arch strata via [trizen][trizen].

_Uses `sudo`._

#### `rupdate`

Updates the [Rust][rust] toolchain via [`rustup`][rustup] and uses [cargo-update][cargo-update] to update all
Cargo-installed crates.

#### `update`

Updates:

 1. Fedora (`dnf`)
 2. Bedrock if available (`brlupdate`)
 3. [Flatpak][flatpak] + removes unused
 4. Rust (`rupdate`)
 5. [Android SDK][android]
 6. [Flutter][flutter] + disables analytics

_Uses `sudo`._

---

### Everything else

#### [Bash][bash]

Just redirects to the general profile. `.bash_profile` sources `.bashrc` which
in turn sources `.profile`.

#### Git

`.gitignore` controlls which dotfiles get version-controlled.

`.gitconfig` contains global configurations for Git.

#### Profile

`.profile` contains the shell configuration. [`lsd`][lsd] is used as an `ls`
replacement, Rust, [Dart][dart], Flutter and Android SDK are set up.

The following paths are used:

 - Android SDK: `~/.android/sdk`
 - Dart: `~/.dart-sdk`
 - Flutter: `~/.flutter-sdk`

Also, [GnuPG][gnupg] is configured to use a smartcard and provide SSH authentication.

[alacritty]: https://github.com/alacritty/alacritty
[fish]: https://fishshell.com
[bass]: https://github.com/edc/bass
[redshift]: http://jonls.dk/redshift
[rofi]: https://github.com/davatorium/rofi
[sway]: https://swaywm.org
[waybar]: https://github.com/Alexays/Waybar
[bedrock]: https://bedrocklinux.org
[trizen]: https://github.com/trizen/trizen
[rust]: https://rust-lang.org
[rustup]: https://rustup.rs
[cargo-update]: https://github.com/nabijaczleweli/cargo-update
[flatpak]: https://flatpak.org
[android]: https://developer.android.com/studio
[flutter]: https://flutter.dev
[bash]: https://gnu.org/software/bash
[dart]: https://dart.dev
[lsd]: https://github.com/Peltoche/lsd
[gnupg]: https://gnupg.org
