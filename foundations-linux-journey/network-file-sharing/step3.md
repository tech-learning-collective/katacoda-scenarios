Most programming language interpreters, like Python, have a super useful tool for serving files over HTTP that comes standard along with the interpreter itself. This is great if you just want to create a quick network share that other machines on your network can access. In the case of Python, features like these are implemented as "modules," which we can invoke with the `-m` option when we run a `python` command. Python's simple HTTP (Web) server module is called `http.server`, so to start it up just `cd` into the directory you want to share and run:

```
$ python -m http.server
```

(In Python versions before 3, this same command was `python -m SimpleHTTPServer`.)

This sets up a basic webserver that you can access via the localhost address. So grab the IP address of the machine you ran this on and then on another machine access it in the browser with: http://IP_ADDRESS:8000. On your own machine, you can view the files available by typing: http://localhost:8000 in your web browser.

You can use this same technique with other tools, like NodeJS, PHP, Ruby, and so on, but the syntax will be a little bit different for each.

## Exercise

Try setting up a simple HTTP server. Use any tool you like. If you don't know the syntax, look it up first.

>>Q1: What is the name of the Python 3 standard library module that you can use to create a simple HTTP server?<<
=== http.server
