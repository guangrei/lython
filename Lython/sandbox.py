def sandbox(
    code, endpoints="https://untrusted-python.fly.dev/api/exec", filename="<str>"
):
    """Interpreter dengan untrusted-python api"""
    import requests

    output = ""
    try:
        pycode = parse(code, filename=filename)
        if not len(code):
            return "Null"
        payload = {"code": pycode.strip()}
        r = requests.post(endpoints, json=payload)
        res = r.text.strip()
        if len(res):
            ret = res
        else:
            ret = "Null"
        return ret
    except SyntaxError as e:
        # Menangani SyntaxError secara khusus
        file_path = e.filename
        line_number = e.lineno
        error_line = e.text.strip()
        indicator_line = "{:>{}}".format("^", e.offset)

        err = 'File "{}", line {}\n    {}\n    {}'.format(
            file_path, line_number, error_line, indicator_line
        )
        err = err + "\n" + "{}: {}".format(type(e).__name__, e.msg)
        raise ParseError(err)
    except Exception as e:
        # Menangani Exception lain
        tb = traceback.extract_tb(e.__traceback__)
        last_tb = tb[-1]
        error_details = traceback.format_exception_only(type(e), e)[-1].strip()
        error_line = pycode.split("\n")[last_tb.lineno - 1]

        err = 'File "{}", line {}\n    {}'.format(
            last_tb.filename, last_tb.lineno, error_line
        )
        err = err + "\n" + error_details
        raise ParseError(err)
