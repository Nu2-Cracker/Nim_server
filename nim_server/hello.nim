import jester, asyncdispatch


settings:
  staticDir = "static"

routes:
  get "/":
    resp "Hello World!"



runForever()