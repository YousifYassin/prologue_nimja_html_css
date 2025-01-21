import prologue
import nimja/parser

proc list_table*(ctx: Context) {.async.} =
  proc render(): string =
    let
      title = "List & Links"
      numbers = (1..4)
    compileTemplateFile(path = "../templates/lists_tables.html", baseDir = getScriptDir())
  resp render()
