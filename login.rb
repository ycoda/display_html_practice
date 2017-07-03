#! usr/bin/env ruby
require "cgi"

c = CGI.new
name = c["user_name"]

if name == 'abc'
  redirect_url = './summit.html'
  print c.header({"status" => "REDIRECT", "Location" => redirect_url })
else
  redirect_url = './login.html'
  print c.header({"status" => "REDIRECT", "Location" => redirect_url })
end
