import prologue
import nimja/parser

proc render_home(): string =
  let name = "Raiden"
  compileTemplateFile(path = "templates/index.html", baseDir = getScriptDir())

proc home_page(ctx: Context) {.async.} =
  resp render_home()

when isMainModule:
  let settings = newSettings(port = Port(3000), debug = true)
  let app = newApp(settings)
  app.get("/", home_page)
  app.run()
