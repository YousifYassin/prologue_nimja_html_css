import nimja/parser
import prologue

proc typography_page*(ctx: Context) {.async.} =
  proc render(): string =
    let
      numbers = (1..6)
    compileTemplateFile("../templates/typography.html", baseDir = getScriptDir())
  resp render()
