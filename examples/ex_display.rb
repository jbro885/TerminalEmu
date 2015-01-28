# Just a simple example of the terminal in its current state 

#!/usr/bin/ruby -w
require './lib/terminal_emu.rb'

terminal = Terminal.new(80, 25, "Example Terminal")

terminal.put_string(0, 0, "This is an example terminal!", Color.new(ColorList::BRIGHT_GREEN, ColorList::BLACK))
terminal.outline_box(0, 0, "This is an example terminal!".length, 1, ColorList::BLUE)

sub_terminal = SubTerminal.new(terminal, 4, 3, terminal.x - 2, terminal.y - 10)
sub_terminal.put_string(0, 0, "I'm a sub-terminal!", Color.new, :bottom_line)
sub_terminal.put_string(0, 1, "I've been outlined")


sub_terminal.put_char(0, 3, 'I', Color.new(ColorList::YELLOW))
sub_terminal.put_char(2, 3, 's', Color.new(ColorList::BROWN))
sub_terminal.put_char(3, 3, 'u', Color.new(ColorList::GREEN))
sub_terminal.put_char(4, 3, 'p', Color.new(ColorList::BRIGHT_GREEN))
sub_terminal.put_char(5, 3, 'p', Color.new(ColorList::BLUE))
sub_terminal.put_char(6, 3, 'o', Color.new(ColorList::CYAN))
sub_terminal.put_char(7, 3, 'r', Color.new(ColorList::RED))
sub_terminal.put_char(8, 3, 't', Color.new(ColorList::ORANGE))
sub_terminal.put_string(10, 3, "COLORS!")
sub_terminal.put_char(10, 4, '&')
sub_terminal.put_string(10, 5, "FLASHING", Color.new(ColorList::YELLOW, ColorList::BROWN), :flashing)
sub_terminal.put_char(10, 6, '&')

sub_terminal.put_string(0, 7,"These traits: bold, italic, dim, lines (bottom, top, left, right)")
sub_terminal.outline

terminal.outline_box(1, terminal.y - 9, terminal.x - 1, terminal.y - 1, ColorList::BRIGHT_GREEN)
terminal.put_string(2, terminal.y - 8, "I can also draw boxes like this one!")

terminal.show