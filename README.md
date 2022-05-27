<p align="center">
  <img
    width="400"
    src="https://raw.githubusercontent.com/starship/starship/master/media/logo.png"
    alt="Starship – Cross-shell prompt"
  />
</p>

# Custom Configurations

Starship is a free opensource shell prompt available for Linux, Windows and MacOS. It is extremely fast, very light and highly customizable. It works for any shell including bash, zsh and Fish. Starship is designed to intelligently show you only the information you require while working.

<p align="center">
    <a href="https://starship.rs">Starship Website</a>
    <a href="https://starship.rs">Starship Github</a></p>

I wanted a beautiful shell with reliability and speed. I share my Starship and all others configurations and if you have any suggestions to optimize it, your are welcome.

## What are the components ?

- Support Linux and macOS. Windows is very different and limited for our configuration. [More details](./windows/README.MD)

- [Git](https://git-scm.com) -> Git must be installed. We will use it to clone others Github repository.

- Fonts -> We use Hack Nerd Font from [Nerd Font](https://www.nerdfonts.com). For me, this one seems better. It will be used by your terminal.

- Shell -> We will use [starship](https://starship.rs) shell on [zsh](https://zsh.sourceforge.io) for macOS & Linux.

- Plugins -> We will downloads some zsh plugins.
  We support:
  - [Syntax Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting.git)
  - [Auto Suggestion](https://github.com/zsh-users/zsh-autosuggestions)

- [Fuzzy](https://github.com/junegunn/fzf) -> It's an interactive Unix filter for command-line that can be used with any list; files, command history, processes, hostnames, bookmarks, git commits, etc...

- [Exa](https://the.exa.website) -> It is an improved file lister with more features and better defaults. It uses colours to distinguish file types and metadata. It knows about symlinks, extended attributes, and Git. And it’s small, fast, and just one single binary.

- [Bat](https://githubc.com/sharkdp/bat) -> A cat clone with syntax highlighting and Git integration.

## 🚀 Installation

1. Clone this repository. (For this document, we use ~/.zsh/starship as path.)

2. Install earlier downloaded Hack Nerd Font on your system.

3. Configure your terminal to use Hack Nerd Font.

4. Install zsh shell on Linux or macOS using this this [guide](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH).

5. Install starship follow the official starship [guide](https://starship.rs/guide/#🚀-installation).

6. Download zsh custom plugins :

```
mkdir $HOME/.zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git  ~/.zsh/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions  ~/.zsh/zsh-autosuggestions
```

7. Install Fuzzy

```
git clone --depth 1 <https://github.com/junegunn/fzf.git> ~/.fzf
~/.fzf/install --key-bindings --completion --update-rc
```

8. Install Bat using the following [guide](https://github.com/sharkdp/bat#installation).

9. Install EXA using the followinf [guide](https://the.exa.website/install).

10. Instead of copying all necessary files in each users profile, we create symbolic link. When we update the repository, all profiles are automatically updated.

```

# Remove the current .zshrc file and link one inside the repo directory.
rm ~/.zshrc
ln -s ~/.zsh/starship/.zshrc ~/.zshrc

# Remove the current .zalias file and link one inside the repo directory. (Optional)
rm ~/.zalias
ln -s ~/.zsh/starship/.zalias ~/.zalias

# Remove the default starship.toml file and link one inside the repo directory.
rm ~/.config/starship.toml
ln -s ~/.zsh/starship/starship.toml ~/.config/starship.toml

Repeat for all users in /home directory on Linux if you want.
For Ubuntu, use /etc/skel directory to set up new user profile directory.

```