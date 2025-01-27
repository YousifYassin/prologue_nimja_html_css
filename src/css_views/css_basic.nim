import prologue
import nimja/parser

proc basic_css_fn*(ctx: Context) {.async.} =
  proc render_css(): string =
    let
      title = "Implementing Css"
      numbers: array[3, string] = ["One", "Two", "Three"] 
    compileTemplateFile(path = "../css_templates/01_basic.html", baseDir = getScriptDir())
  resp render_css()
