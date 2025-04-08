#let conf(title: none, author: none, institution: none, date: none, content) = {
  set page(columns: 2)
  // set page(margin: (top: 18mm, bottom: 18mm, x: 8mm))
  set page(margin: (y: 12mm, x: 4mm))
  set par(justify: true)
  show figure: set block(inset: (top: 0.5em, bottom: 1em))

  set page(
    header: [
      #title
      #h(1fr)
      #author
      #line(length: 100%, stroke: 0.5pt)
    ],
    footer: context [
      #line(length: 100%, stroke: 0.5pt)
      #date
      #h(1fr)
      #counter(page).display("1/1", both: true)
    ],
  )

  content
}

#let BOX = body => rect(
  stroke: black,
  width: 100%,
  inset: 1em,
  body,
)

#let TODO = body => grid(
  stroke: blue,
  inset: 1em,
  rows: (auto, auto),
  grid.cell[*TODO*], body,
)

#let RED = body => grid(
  stroke: red,
  inset: 1em,
  columns: (auto, 1fr),
  grid.cell[*ATTENTION*], body,
)

#let WARN = body => grid(
  stroke: red,
  inset: 1em,
  columns: (auto, 1fr),
  grid.cell[*ATT.*], body,
)

#let INFO = body => grid(
  stroke: green,
  inset: 1em,
  columns: 1fr,
  body,
)

#let GREEN = body => grid(
  stroke: green,
  inset: 1em,
  columns: (auto, 1fr),
  grid.cell[*ATTENTION*], body,
)

#let red = content => text(content, fill: red)
#let green = content => text(content, fill: green)
