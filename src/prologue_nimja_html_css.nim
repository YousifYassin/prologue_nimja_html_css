import prologue
import prologue/middlewares/staticfile
import views/[home, basic_layout, meta, typography, link_images, list, forms_input, inline_block, id_classes, entities, html5_semantics]

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
  app.addRoute("/inline_block", inlines_blocks, HttpGet)
  app.addRoute("/id_class", class_id_fn, HttpGet)
  app.addRoute("/id_class.html", class_id_fn, HttpGet)
  app.addRoute("/entities", entities_fn, HttpGet)
  app.addRoute("/entities.html", entities_fn, HttpGet)
  app.addRoute("/semantics", semantics_fn, HttpGet)
  app.addRoute("/semantics.html", semantics_fn, HttpGet)
  app.run()
