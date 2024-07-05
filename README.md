

# Vim Keybindings Configuration - README

This README file provides an overview of the custom keybindings set in your Vim configuration. It explains what each keybinding does and how to use it effectively.

## Table of Contents
1. [Basic Operations](#basic-operations)
   - [Do Things Without Affecting the Registers](#do-things-without-affecting-the-registers)
   - [Increment/Decrement](#incrementdecrement)
   - [Delete a Word Backwards](#delete-a-word-backwards)
   - [Select All](#select-all)
2. [Text Insertion](#text-insertion)
3. [Navigation](#navigation)
4. [Tabs and Windows](#tabs-and-windows)
   - [New Tab](#new-tab)
   - [Split Window](#split-window)
   - [Move Window](#move-window)
   - [Resize Window](#resize-window)
5. [Diagnostics](#diagnostics)
6. [Plugins](#plugins)
   - [Annotations](#annotations)
   - [Incremental Rename](#incremental-rename)
   - [Refactoring](#refactoring)
   - [Bracket Navigation](#bracket-navigation)
   - [Increment/Decrement Enhancement](#incrementdecrement-enhancement)
   - [Symbols Outline](#symbols-outline)
   - [Emoji Completion](#emoji-completion)
7. [Examples](#examples)
   - [Efficiently Delete Text](#efficiently-delete-text)
   - [Incrementing Numbers](#incrementing-numbers)
   - [Managing Tabs](#managing-tabs)
   - [Splitting and Moving Windows](#splitting-and-moving-windows)
   - [Finding Files](#finding-files)
   - [Searching for Strings](#searching-for-strings)
   - [Navigating Buffers](#navigating-buffers)
   - [Browsing Git Information](#browsing-git-information)
   - [Opening the File Browser](#opening-the-file-browser)

## Basic Operations

### Do Things Without Affecting the Registers
- `x` - Delete a character without affecting the registers.
- `<Leader>p` / `<Leader>P` - Paste the last yanked text without affecting the registers.
- `<Leader>c` / `<Leader>C` - Change text without affecting the registers.
- `<Leader>d` / `<Leader>D` - Delete text without affecting the registers.

### Increment/Decrement
- `+` - Increment the number under the cursor.
- `-` - Decrement the number under the cursor.

### Delete a Word Backwards
- `dw` - Delete the word backward (equivalent to `vb"_d`).

### Select All
- `<C-a>` - Select all text in the file.

## Text Insertion
- `<Leader>o` - Insert a new line below the current line without continuing comments.
- `<Leader>O` - Insert a new line above the current line without continuing comments.

## Navigation
- `<C-m>` - Jump to the next position in the jumplist (equivalent to `<C-i>`).

## Tabs and Windows

### New Tab
- `te` - Open a new tab.
- `<tab>` - Move to the next tab.
- `<s-tab>` - Move to the previous tab.

### Split Window
- `ss` - Split the window horizontally.
- `sv` - Split the window vertically.

### Move Window
- `sh` - Move to the window on the left.
- `sk` - Move to the window above.
- `sj` - Move to the window below.
- `sl` - Move to the window on the right.

### Resize Window
- `<C-w><left>` - Decrease the width of the current window.
- `<C-w><right>` - Increase the width of the current window.
- `<C-w><up>` - Increase the height of the current window.
- `<C-w><down>` - Decrease the height of the current window.

## Diagnostics
- `<C-j>` - Move to the next diagnostic issue.

## Plugins

### Annotations
- **Plugin**: `danymat/neogen`
- **Keybinding**: `<Leader>cc`
- **Description**: Create annotations with one keybind, and jump your cursor in the inserted annotation.
- **Usage**: Press `<Leader>cc` to generate a comment annotation using `neogen`.

### Incremental Rename
- **Plugin**: `smjonas/inc-rename.nvim`
- **Command**: `IncRename`
- **Description**: Incremental rename.
- **Usage**: Use the command `:IncRename` to incrementally rename symbols in your code.

### Refactoring
- **Plugin**: `ThePrimeagen/refactoring.nvim`
- **Keybinding**: `<Leader>r` (visual mode)
- **Description**: Refactoring tool.
- **Usage**: Select the code you want to refactor in visual mode and press `<Leader>r` to choose a refactoring option.

### Bracket Navigation
- **Plugin**: `echasnovski/mini.bracketed`
- **Event**: `BufReadPost`
- **Description**: Navigate forward/backward with square brackets.
- **Usage**: The plugin is configured to navigate through files, windows, quickfix lists, yanks, and treesitter nodes using square brackets.

### Increment/Decrement Enhancement
- **Plugin**: `monaqa/dial.nvim`
- **Keybindings**: 
  - `<C-a>`: Increment
  - `<C-x>`: Decrement
- **Description**: Better increment/decrement functionality.
- **Usage**: Press `<C-a>` to increment and `<C-x>` to decrement values such as numbers, dates, and booleans.

### Symbols Outline
- **Plugin**: `simrat39/symbols-outline.nvim`
- **Keybinding**: `<Leader>cs`
- **Command**: `SymbolsOutline`
- **Description**: Display symbols outline.
- **Usage**: Press `<Leader>cs` or use the command `:SymbolsOutline` to open the symbols outline on the right.

### Emoji Completion
- **Plugin**: `nvim-cmp`
- **Dependency**: `hrsh7th/cmp-emoji`
- **Description**: Adds emoji completion to `nvim-cmp`.
- **Usage**: Use `nvim-cmp` as usual, and emoji suggestions will be included in the completion menu.

## Examples

### Efficiently Delete Text
If you want to delete a word backward without affecting the registers, use the `dw` keybinding. This is helpful when you need to remove words quickly and keep your registers intact for other operations.

### Incrementing Numbers
When working with numbered lists or version numbers in your code, you can use `+` to increment and `-` to decrement the number under the cursor. This makes it easier to update numbers without manually editing them.

### Managing Tabs
To quickly navigate between multiple tabs, use `<tab>` to move to the next tab and `<s-tab>` to move to the previous tab. This allows you to manage multiple files efficiently within Vim.

### Splitting and Moving Windows
If you need to work with multiple views of your code, use `ss` to split the window horizontally and `sv` to split it vertically. You can then move between windows using `sh`, `sk`, `sj`, and `sl`.

### Finding Files
Press `;f` to open a list of files in your current directory, including hidden files. This helps quickly locate and open files without leaving the editor.

### Searching for Strings
Press `;r` to start a live grep search for a string in your current directory. The results update as you type, making it easier to find and navigate to specific lines in your codebase.

### Navigating Buffers
Press `\\\\` to list all open buffers. This provides a quick way to switch between different files you have open in your current session.

### Browsing Git Information
Press `<Leader>gb` to open a git blame window for the current file, allowing you to see who last modified each line.  
Press `<Leader>go` to open the current file or folder in your git repository, providing quick access to your project's remote repository.

### Opening the File Browser
Press `sf` to open the Telescope file browser with the current buffer's directory path. This makes navigating your project's directory structure more efficient.

By leveraging these keybindings, you can enhance your productivity and streamline your workflow in Vim. Keep this README handy for quick reference as you get accustomed to the new keybindings.
