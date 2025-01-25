import prologue
import nimja/parser

proc inlines_blocks*(ctx: Context) {.async.} =
  proc render(): string =
    let
      title = "Inline vs Block"
    compileTemplateFile(path = "../templates/block_inline.html", baseDir = getScriptDir())

  resp render()
