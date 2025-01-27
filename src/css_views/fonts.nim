import prologue
import nimja/parser

proc fonts_fn*(ctx: Context) {.async.} =
  proc renderFontsPage(): string =
    let title = "Fonts"
    compileTemplateFile(path = "../css_templates/03_fonts.html", baseDir = getScriptDir())
  resp renderFontsPage()
