#-*-coding:utf8;-*-
# only: ^3.10

name = "guangrei"

match name
    case "guangrei" do
        assert True
    end
    case "budi" do
        assert False
    end
end
