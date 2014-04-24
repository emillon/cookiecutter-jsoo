let js s = Js.string s

let _ =
  let main =
    Js.Opt.get
      (Dom_html.document##getElementById (js"main"))
      (fun () -> assert false)
  in
  main##innerHTML <- js"Hello, world!"
