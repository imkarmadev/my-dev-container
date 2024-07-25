> [!NOTE]
>
> This `Devcontainer` I made for myself, so if you like it you can use it, if you don't like - no use. It provide As It Is. But PR's with help or good suggestion are wellcom xD. Peace and Prosperity my friend. 

# My vscode devcontainer

## Inside
- Zsh with OhMyZSH
- NodeJS 20
- Rust 
- Golang 1.22.5
- VNC (vnc on 5901 and http on 6080) 

and little more ...


## Motivation
Develop `tauri` or `fyne.io` app on windows with out install any "hard" deps on windows

## After Build
Run all `*.sh` script in `.devcontainer/scripts` folder
As example I login to `Atuin` with creds from `.env` file (no exist create for your self xD)

## TODO
- [ ] Add all hooks runner (postCreateCommand, postAttachCommand etc.)
- [ ] Cut on logic slice `Dockerfile` to easy add or remove needed tools
- [ ] Add VS Code extansions to `devcontainer.json`