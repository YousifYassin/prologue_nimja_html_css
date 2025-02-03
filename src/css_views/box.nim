import prologue
import nimja/parser

proc box_fn*(ctx: Context) {.async.} =
  proc render_box_page(): string =
    let title = "Box model / Margin & padding"
    compileTemplateFile(path = "../css_templates/06_box_model.html", baseDir = getScriptDir())
  resp render_box_page()
