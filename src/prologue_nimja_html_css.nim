import prologue
import views/[home, basic_layout, meta]

when isMainModule:
  let settings = newSettings(port = Port(3000), debug = true)
  let app = newApp(settings)
  app.get("/", home_page)
  app.get("/basic", basic)
  app.get("/meta", meta_page)
  app.run()
