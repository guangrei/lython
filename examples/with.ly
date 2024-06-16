#-*-coding:utf8;-*-

class Test
    ok = ""
    def __enter__(self)
        self.ok = "test "
        return self
    end
    
    def __exit__(self, *args)
        self.ok = self.ok + "ok"
        return self
    end
end

with Test() as t do
    test = t
end

assert test.ok == "test ok"
