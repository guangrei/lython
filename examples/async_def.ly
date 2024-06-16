#-*-coding:utf8;-*-
import asyncio


async def test(name)
    return name
end

async def def_main()
    t = await test("guangrei")
    assert t == "guangrei"
end

loop = asyncio.get_event_loop()
loop.run_until_complete(def_main())
loop.close()
