import prologue
import nimja/parser

proc colors_fn*(ctx: Context) {.async.} =
  proc render_color_page(): string =
    let title = "Colors"
    compileTemplateFile(path = "../css_templates/04_colors.html", baseDir = getScriptDir())

  resp render_color_page()
