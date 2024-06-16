#-*-coding:utf8;-*-

try
    a = 5/0
    assert False
except
    assert True
end

# try except with arg
try
    a = 5/0
    assert False
except BaseException as e do
    assert str(e).strip() == "division by zero"
end
