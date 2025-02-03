import prologue
import nimja/parser

proc float_fn*(ctx: Context) {.async.} =
  proc render_page(): string =
    let
      title = "Float & Align"
    compileTemplateFile(path = "../css_templates/07_float_align.html", baseDir = getScriptDir())

  resp render_page()
