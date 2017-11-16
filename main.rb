def menu
    puts "1 Enter git command"
    puts "2 Exit"
    choice = gets.to_i
    case choice
    when 1
        puts "Enter git command"
        puts_git(gets.strip)
        menu
    when 2 
        abort('GoodBye')
    else
        puts "invalid choice"
        menu
    end 
end 

def put_git(cmd)
    puts `git #{cmd} -h` # 
end 

menu 