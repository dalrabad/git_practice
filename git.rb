module Git
    def put_git(cmd)
        puts `git #{cmd} -h` # 
    end 
end 