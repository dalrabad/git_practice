require 'colorize'
require 'git'

class Mian 
    include Git
    def self.mainmenu
        puts "1 Enter git command".colorize(:yellow)
        puts "2 Exit"
        choice = gets.to_i
        case choice
        when 1
            puts "Enter git command".colorize(:pink)
            puts_git(gets.strip)
            menu
        when 2 
            abort('GoodBye')
        else
            puts "invalid choice"
            menu
        end 
    end 
end 

Main.menu 

# git checkout -b my_branch -b makes a new branch 