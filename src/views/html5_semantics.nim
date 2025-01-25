import prologue
import nimja/parser

proc semantics_fn*(ctx: Context) {.async.} =
  proc render(): string =
    let title = "HTML5 Semantic Tags"
    compileTemplateFile("../templates/semantics.html", baseDir = getScriptDir())

  resp render()
