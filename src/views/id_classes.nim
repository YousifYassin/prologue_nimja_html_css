import prologue
import nimja/parser

proc class_id_fn*(ctx: Context) {.async.} =
  proc render(): string =
    let title = "Class & Id"
    compileTemplateFile(path = "../templates/id_class.html", baseDir = getScriptDir())

  resp render()
