import nimja/parser
import prologue

proc form*(ctx: Context) {.async.} =
  proc render(): string =
    let title = "Forms & Input"
    compileTemplateFile(path = "../templates/forms_input.html", baseDir = getScriptDir())

  case ctx.request.reqMethod:
  of HttpGet:
    echo "This is GET section"
  of HttpPost:
    echo "This is POST section"
    try:
      echo ctx.getFormParams("person_name")
    except KeyError:
      echo getCurrentExceptionMsg()
      quit "\nKey Error"
  else:
    quit "Odd request"

  resp render()
