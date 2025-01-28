import prologue
import nimja/parser

proc border_bg_fn*(ctx: Context) {.async.} =
  proc render_bg_page(): string =
    let
      title = "Border & background"
    compileTemplateFile(path = "../css_templates/05_background_border.html", baseDir = getScriptDir())

  resp render_bg_page()
