import nimja/parser
import prologue

proc basic*(ctx: Context) {.async.} =
  proc render(): string =
    let
      title = "nimja"
      name = "Raiden"
    compileTemplateFile(path = "../templates/basic_layout.html", baseDir = getScriptDir())
  resp render()
