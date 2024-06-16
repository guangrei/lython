#-*-coding:utf8;-*-
from Lython.Console import interpreter
import re
import sys
import os


def get_ly_files(directory)
    """
    Melist semua file .ly beserta path-nya pada folder yang diberikan,
    tanpa menjelajahi subfolder.
    
    Args:
    directory (str): Path ke direktori yang ingin dijelajahi.
    
    Returns:
    List[str]: Daftar file .ly beserta path lengkapnya.
    """
    ly_files = []
    for file in os.listdir(directory) do
        if file.endswith(".ly") then
            ly_files.append(os.path.join(directory, file))
        end
    end
    return ly_files
end

ly_files = get_ly_files("examples")
for file in ly_files do
    if file == "examples/test.ly" then
        pass
    elif file == "examples/match_case.ly" then
        if sys.version_info >= (3, 10) then
            print("testing:", file)
            interpreter(file, [file])
        else
            print("skip test:", file)
        end
    elif file.startswith("async") then
        if sys.version_info >= (3, 5) then
            print("testing:", file)
            interpreter(file, [file])
        else
            print("skip test:", file)
        end
    else
        print("testing:", file)
        interpreter(file, [file])
    end
end
