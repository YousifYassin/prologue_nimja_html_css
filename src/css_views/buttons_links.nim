import prologue
import nimja/parser

proc buttons_links_fn*(ctx: Context) {.async.} =
  proc render_page(): string =
    let
      title = "Buttons & Links"
    compileTemplateFile(path = "../css_templates/08_links_buttons.html", baseDir = getScriptDir())
  resp render_page()
