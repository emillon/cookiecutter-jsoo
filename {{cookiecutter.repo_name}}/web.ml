let js s = Js.string s

let _ =
  let game = 
    Js.Opt.get
      (Dom_html.document##getElementById (js"main"))
      (fun () -> assert false)
  in
  game##innerHTML <- js"Hello, world!"
