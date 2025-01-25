import prologue
import nimja/parser

proc entities_fn*(ctx: Context) {.async.} =
  proc render(): string =
    let title = "Entitites"
    compileTemplateFile(path = "../templates/entities.html", baseDir = getScriptDir())

  resp render()
