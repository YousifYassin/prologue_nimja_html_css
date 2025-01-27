import prologue
import nimja/parser

proc selector_fn*(ctx: Context) {.async.} =
  proc render(): string =
    let
      title = "CSS Selectors"
    compileTemplateFile(path = "../css_templates/02_selector.html", baseDir = getScriptDir())
  resp render()
