# highlight.vim

A simple, low-contrast Vim colorscheme with (drastically) reduced syntax
highlighting.

![c](https://files.emnace.org/igemnace/highlight.vim/c.png)

## Concept

Highlight only when **exceptional**. Such is the way of highlight.vim.

![statusline-default](https://files.emnace.org/igemnace/highlight.vim/statusline-default.png)
![statusline-modified](https://files.emnace.org/igemnace/highlight.vim/statusline-modified.png)
![statusline-readonly](https://files.emnace.org/igemnace/highlight.vim/statusline-readonly.png)

You can see it in the editor's own UI elements. Notice how the statusline
remains unassuming, unless something of note appears.

---

![js](https://files.emnace.org/igemnace/highlight.vim/js.png)

You can see it in the syntax highlighting itself. Notice how everything is a
colorless white by default. Comments are melded into a background gray. Strings
are highlighted.

## Installation

Copy the contents of `colors` into `~/.vim` on UNIX-like systems, or install
with your favorite plugin manager.

## Setup

### GUI Vim and 256-Color Terminals

If you're on GUI, [termguicolors][1], or any terminal with 256-color support,
highlight.vim should Just Work™.

[1]: https://vimhelp.org/options.txt.html#'termguicolors'

### 16-Color Terminals

If you're on a 16-color terminal, you'll have to configure your terminal's
palette. Here's a sample `.Xresources`. Use it directly, or import it into
[terminal.sexy][terminal.sexy] then export to any needed format.

[terminal.sexy]: https://terminal.sexy

```
/* ! HIGHLIGHT */
/* ! special */
*.foreground:   #d0d0d0
*.background:   #303030
*.cursorColor:  #d0d0d0

! black
*.color0:       #303030
*.color8:       #767676

! red
*.color1:       #ff8787
*.color9:       #ff8787

! green
*.color2:       #87d787
*.color10:      #87d787

! yellow
*.color3:       #ffd75f
*.color11:      #ffd75f

! blue
*.color4:       #5f87d7
*.color12:      #5f87d7

! magenta
*.color5:       #d787d7
*.color13:      #d787d7

! cyan
*.color6:       #5fd7d7
*.color14:      #5fd7d7

! white
*.color7:       #d0d0d0
*.color15:      #d0d0d0
```

## FAQs

### Why the name?

I called it "Highlight" because that's what it does: it **highlights**.

### Wouldn't it be confusing with Vim's own [:highlight][2]?

I see it as a fortunate coincidence. It's called "Highlight", and it uses
`:highlight`. Simple enough! Such is the way of highlight.vim.

[2]: https://vimhelp.org/syntax.txt.html#:highlight

### Why reduced highlighting?

Yes, this may be controversial. So far, though, the reasoning has been pretty
simple for me:

1. First it was very jarring.
2. Then I got used to it.
3. Then I noticed I could read and comprehend code more quickly.
4. Then I realized it was hard for me to go back — "normal" syntax highlighting
   now takes my eyes all over the place and *hampers* my reading ability.

It's a positive for some people, a negative for others. It turned out to be a
positive for me.

Here's a bit more discussion on it:

- ["No Frils (AKA: Syntax Highlighting Off)"](https://robertmeta.com/posts/syntax-highlighting-off/)
- ["A case against syntax highlighting"](http://www.linusakesson.net/programming/syntaxhighlighting/)

## Acknowledgement

I've used [Chris Kempson's Base 16 Eighties palette][base16] for the longest
time. The final colors in highlight.vim's palette are the closest Xterm-palette
equivalents I found. It was easy, thanks to [ClosestX11Color][ClosestX11Color].

The structure behind the colorscheme file is inspired by [vim-rnb's][vim-rnb]
way of doing things. Perhaps one day I'll upgrade to the new, up-and-coming
[vim/colorschemes][vim-colorschemes].

[base16]: http://chriskempson.com/projects/base16/
[ClosestX11Color]: https://github.com/jabbalaci/ClosestX11Color
[vim-rnb]: https://github.com/romainl/vim-rnb
[vim-colorschemes]: https://github.com/vim/colorschemes

## Licensing

If anyone else sees this and wants to use it, go ahead.

This project is open source, licensed under MIT.

## Gallery

![showcase](https://files.emnace.org/igemnace/highlight.vim/showcase.png)
![gitcommit](https://files.emnace.org/igemnace/highlight.vim/gitcommit.png)
![html](https://files.emnace.org/igemnace/highlight.vim/html.png)
![vue](https://files.emnace.org/igemnace/highlight.vim/vue.png)
