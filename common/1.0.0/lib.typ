#let BOX = body => rect(stroke: black, width: 100%, inset: 1em, body)

#let BOXED(title, body) = {
  BOX[
    *#title*

    #body
  ]
}

#let TODO = content => rect(fill: blue, text([*TODO*: #content], fill: white))

#let WARN = body => grid(
  stroke: red,
  inset: 1em,
  rows: (auto, auto),
  grid.cell[*ATTENTION*], body,
)

#let INFO = body => grid(
  stroke: green,
  inset: 1em,
  columns: 1fr,
  body,
)

#let RED = body => grid(
  stroke: red,
  inset: 1em,
  rows: (auto, auto),
  grid.cell[*ATTENTION*], body,
)

#let GREEN = body => grid(
  stroke: green,
  inset: 1em,
  rows: (auto, auto),
  grid.cell[*ATTENTION*], body,
)

#let red = content => box(inset: 0.5em, fill: red, text(
  content,
  fill: white,
))
#let green = content => box(inset: 0.5em, fill: green, text(
  content,
  fill: black,
))
#let todo = content => box(inset: 0.5em, fill: blue, text(
  [*TODO*: #content],
  fill: white,
))

