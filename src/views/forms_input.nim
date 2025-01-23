import nimja/parser
import prologue

proc form*(ctx: Context) {.async.} =
  proc render(): string =
    let title = "Forms & Input"
    compileTemplateFile(path = "../templates/forms_input.html", baseDir = getScriptDir())
  resp render()
