#-*-coding:utf8;-*-
from Lython.util import require

test = require("testmodule/a.ly")
assert test.test == "OK"
