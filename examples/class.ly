#-*-coding:utf8;-*-

class Test
    def __init__(self, name)
        self.name = name
    end
    
    def get_name(self)
        return self.name
    end
end

test = Test("guangrei")
assert test.get_name() == "guangrei"
