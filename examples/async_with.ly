#-*-coding:utf8;-*-
import asyncio


class Test
    ok = ""
    async def __aenter__(self)
        self.ok = "test "
        return self
    end
    
    async def __aexit__(self, *args)
        self.ok = self.ok + "ok"
        return self
    end
end

async def try_main()
    async with Test() as t do
        test = t
    end
    assert test.ok == "test ok"
    return
end
loop = asyncio.get_event_loop()
loop.run_until_complete(try_main())
loop.close()
