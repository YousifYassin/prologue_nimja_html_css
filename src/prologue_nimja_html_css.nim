import prologue
import prologue/middlewares/staticfile
import views/[home, basic_layout, meta, typography, link_images, list, forms_input]

when isMainModule:
  let
    settings = newSettings(port = Port(3000), debug = true)
    app = (var the_app = newApp(settings); the_app.use(staticFileMiddleware("img")); the_app)
  app.addRoute("/", home_page)
  app.addRoute("/basic", basic)
  app.addRoute("/meta", meta_page)
  app.addRoute("/typography", typography_page)
  app.addRoute("/links_images", link_images_page)
  app.addRoute("/lists_tables", list_table, HttpGet)
  app.addRoute("/forms", form, HttpGet)
  app.addRoute("/forms", form, HttpPost)
  app.run()
