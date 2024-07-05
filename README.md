# Vim Keybindings Configuration - README

This README file provides an overview of the custom keybindings set in your Vim configuration. It explains what each keybinding does and how to use it effectively.

## Table of Contents

1. [Basic Operations](#basic-operations)
   - Do Things Without Affecting the Registers
   - Increment/Decrement
   - Delete a Word Backwards
   - Select All
2. [Text Insertion](#text-insertion)
3. [Navigation](#navigation)
4. [Tabs and Windows](#tabs-and-windows)
   - New Tab
   - Split Window
   - Move Window
   - Resize Window
5. [Diagnostics](#diagnostics)

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

## Examples

### Example 1: Efficiently Delete Text

If you want to delete a word backward without affecting the registers, use the `dw` keybinding. This is helpful when you need to remove words quickly and keep your registers intact for other operations.

### Example 2: Incrementing Numbers

When working with numbered lists or version numbers in your code, you can use `+` to increment and `-` to decrement the number under the cursor. This makes it easier to update numbers without manually editing them.

### Example 3: Managing Tabs

To quickly navigate between multiple tabs, use `<tab>` to move to the next tab and `<s-tab>` to move to the previous tab. This allows you to manage multiple files efficiently within Vim.

### Example 4: Splitting and Moving Windows

If you need to work with multiple views of your code, use `ss` to split the window horizontally and `sv` to split it vertically. You can then move between windows using `sh`, `sk`, `sj`, and `sl`.

By leveraging these keybindings, you can enhance your productivity and streamline your workflow in Vim. Keep this README handy for quick reference as you get accustomed to the new keybindings.
