class examples::puppet4parser {
  $messages = [
    'Welcome to Puppet 4 Parser',
    'The language improvements are pretty cool!'
  ]
  
  $messages.each |$message| {
    notify { $message: }
  }
   
}
