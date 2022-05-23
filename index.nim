import std / [dom, strutils]
import pkg / owoifynim


const
  classes = ["p", "h1", "h2", "h3", "h4", "h5", "h6", "button", "pre", "code", "li", "span", "nobr", "option"]
  LEVEL = "owo"


template owoify(s, l: string): cstring = cstring(owoify(s, l))

proc main(_: Event) =
  for element in document.querySelectorAll(cstring(classes.join(", "))):
    if element.innerText != "":
      element.innerText = owoify($element.innerText, LEVEL)

when isMainModule:
  window.addEventListener("load", main)
  window.addEventListener("onclick", main)
