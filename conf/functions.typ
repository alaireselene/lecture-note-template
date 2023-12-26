/*
HUST Lecture Note Template
Functions
*/

#import "variables.typ":*

#let axiom(name: "", body) = {
  rect(
    stroke: primary_color,
    inset: 8pt,
    radius: 4pt,
    [
      #box(
        width: 100%,
        height: 20pt,
        radius: 4pt,
        inset: 4pt,
        fill: primary_color,
        align(left + horizon)[
          #text("🧱 Tiên đề:", weight: "bold", fill: white)
          #text(name, fill: white)
        ]
      )
      #body
    ],
  )
}

#let theorem(name: "", body) = {
  rect(
    stroke: lime,
    inset: 8pt,
    radius: 4pt,
    [
      #box(
        width: 100%,
        height: 20pt,
        radius: 4pt,
        inset: 4pt,
        fill: lime,
        align(left + horizon)[
          #text("📜 Định lý:", weight: "bold", fill: black)
          #text(name, fill: black)
        ]
      )
      #body
    ],
  )
}

#let lemma(name: "", body) = {
  rect(
    stroke: blue,
    inset: 8pt,
    radius: 4pt,
    [
      #box(
        width: 100%,
        height: 20pt,
        radius: 4pt,
        inset: 4pt,
        fill: blue,
        align(left + horizon)[
          #text("🧩 Bổ đề:", weight: "bold", fill: white)
          #text(name, fill: white)
        ]
      )
      #body
    ],
  )
}

#let proof(name: "", body) = {
  rect(
    stroke: primary_color,
    inset: 8pt,
    radius: 4pt,
    [
      #box(
        width: 100%,
        height: 20pt,
        radius: 4pt,
        inset: 4pt,
        fill: primary_color,
        align(left + horizon)[
          #text("🕵️‍♂️ Chứng minh:", weight: "bold", fill: white)
          #text(name, fill: white)
        ]
      )
      #body
    ],
  )
}

#let def(name: "", body) = {
  rect(
    stroke: lime,
    inset: 8pt,
    radius: 4pt,
    [
      #box(
        width: 100%,
        height: 20pt,
        radius: 4pt,
        inset: 4pt,
        fill: lime,
        align(left + horizon)[
          📜 *Định nghĩa: *#name
        ]
      )
      #body
    ],
  )
}

#let eg(name: "", body) = {
  rect(
    stroke: blue,
    inset: 8pt,
    radius: 4pt,
    [
      #box(
        width: 100%,
        height: 20pt,
        radius: 4pt,
        inset: 4pt,
        fill: blue,
        align(left + horizon)[
          #text("🌟 Ví dụ:", weight: "bold", fill: white)
          #text(name, fill: white)
        ]
      )
      #body
    ],
  )
}