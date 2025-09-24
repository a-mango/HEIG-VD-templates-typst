#let conf(title: none, author: none, institution: none, date: none, content) = {
  set page(columns: 2)
  set page(margin: (y: 12mm, x: 4mm))
  set columns(gutter: 8pt)
  set par(justify: true)

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
