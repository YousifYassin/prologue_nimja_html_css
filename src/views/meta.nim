import prologue, nimja/parser

proc meta_page*(ctx: Context) {.async.} =
  proc render(): string =
    compileTemplateFile(path = "../templates/meta_tags.html", baseDir = getScriptDir())
  resp render()
