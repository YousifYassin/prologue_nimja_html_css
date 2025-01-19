import nimja/parser
import prologue

proc home_page(ctx: Context) {.async.} =
  proc render_home(): string =
    let name = "Raiden"
    try:
      compileTemplateFile(path = "../templates/index.html", baseDir = getScriptDir())
    except KeyError:
      quit "Key Error"
    except IOError:
      quit "IO Error"
    except ValueError:
      quit "Value Error"
  resp render_home()

