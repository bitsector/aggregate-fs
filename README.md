# Text File Aggregator

BitSector 6.10.23

## Introduction

Aggregate all readable text files in a path into the clipboard.

Why should you care?

- To avoid manual copy-pasting from file to file.
- To quickly dump all readable content into the clipboard.
- Highly useful with [ChatGPT](https://chat.openai.com/): Make it easier for ChatGPT to read and process contents from multiple files.

## Ubuntu Version

> **Note**: If you're not using the zsh shell, replace `.zshrc` with `.bashrc` or your relevant `.*rc` file.

1. **Backup Your .zshrc**:
   cp ~/.zshrc ~/.zshrc.old

2. **Install xsel**:
   sudo apt update && sudo apt install -y xsel

3. **Add the Script [agg_ubuntu.sh](agg_ubuntu.sh) script to .zshrc**

4. **Reload the Shell**:
   source ~/.zshrc

5. **Use the Function**:
   agg /path/to/dir/with/content/

6. **Heredoc Version for Quick Use**:
   See [agg_as_heredoc_ubuntu.c](agg_as_heredoc_ubuntu.c)
   
## MacOS Version

> **Note**: If you're not using the zsh shell, replace `.zshrc` with `.bashrc` or your respective `.*rc` file.

1. **Backup Your .zshrc**:
   cp ~/.zshrc ~/.zshrc.old

2. **Verify pbcopy is Installed**:
   which pbcopy

3. **Add the Script to in [agg_mac.sh](agg_mac.sh) to .zshrc**

4. **Reload the Shell**:
   source ~/.zshrc

5. **Use the Function**:
   agg /path/to/dir/with/content/

6. **Heredoc Version for Quick Use**:
   [agg_as_heredoc_mac.sh](agg_as_heredoc_mac.sh)

## Final Notes

### Limitations

The clipboard size may be limited, leading to truncation of data. It's best to avoid copying overly large amounts of data. The exact limits vary, with some reporting as low as 4000 bytes and others as high as [1MB](https://github.com/astrand/xclip/issues/43).



To check your current clipboard size on Ubuntu:
echo "Clipboard size: $(xsel -b | wc -c) bytes, $(xsel -b | wc -m) characters"

As of this writing, ChatGPT’s input limit stands at 4096 characters.

## Credits

https://installati.one/install-xsel-ubuntu-20-04/

https://askubuntu.com/questions/11925/a-command-line-clipboard-copy-and-paste-utility

https://linux.die.net/man/1/xsel

https://bbs.archlinux.org/viewtopic.php?id=217604

https://chat.openai.com/

https://www.androidauthority.com/chatgpt-character-limit-3292997/

https://linuxize.com/post/bash-heredoc/

https://github.com/kfish/xsel

https://github.com/astrand/xclip/issues/43
