import prologue
import nimja/parser

proc menus_fn*(ctx: Context) {.async.} =
  proc render_page(): string =
    let
      title: string = "Menus"
      data_set: array[4, string] = ["Home", "About", "Services", "Contact"]
    compileTemplateFile(path = "../css_templates/09_menus.html", baseDir = getScriptDir())

  resp render_page()
