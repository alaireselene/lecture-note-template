/*
HUST Lecture Note Template
Page formatting
*/

#import "variables.typ":*

#let docs(course_code:"", course_name:"", course_instructor: "", semester: "", body) = {
  
  // General document infomation
  set document(
    author: "Nguyễn Trường Sơn",
    title: course_name,
    date: auto
  )

  // 1. General formatting
  // 1.1 Fonts
  set text(
    size: 12pt,
    lang: "vi",
    weight: "regular",
    font: "Lato",
  )
  
  // 1.2 Paragraph
  set par(
    leading: 1.05em,
  )

  // 1.3 Numbering
  set heading(
    numbering: "I.1.a.",
    supplement: "§"
  )

  // 1.4 Heading
  show heading.where(level: 1): it => align(center)[
    #text(
      size:17pt, 
      weight: "bold",
      upper(it),
    )
  ]

  // 1.5 Page size
  set page(
    paper: "a4",
    margin: (
      inside: 3cm,
      outside: 2cm,
      top: 2cm,
      bottom: 2cm
    ),
  )

  // 2. Per-page formatting
  // 2.1 Cover page 
  set page(
    background: rotate(image("/assets/img/Background.png", width: 14.78in), 90deg)
  )
  move(
    image("/assets/img/hust-vertical.png", height: 54pt),
    dy: 4.48in,
    dx: 0.1in
  )
  move(
    text(
      fill: white,
      font: "Linh AvantGarde",
      size: 18pt,
      "BẢN CHÉP MÔN HỌC"
    ),
    dy: 3.55in,
    dx: 0.8in
  )
  move(
    text(
      fill: white,
      font: "Linh AvantGarde",
      size: 36pt,
      upper(course_name)
    ),
    dy: 3.55in,
    dx: 0.8in
  )
  move(
    text(
      fill: white,
      font: "Linh AvantGarde",
      size: 12pt,
    )[
      - Mã học phần: #course_code

      - Học kỳ: #semester

      - Giáo viên hướng dẫn: #course_instructor
    ],
    dy: 3.8in
  )
  pagebreak()

  // 2.2 Outline page
  set page(
    background: none,
    header: align(
      left + horizon,
      box(stroke: (bottom: 1pt + rgb(primary_color)), inset: 6pt)[
        #box(
          baseline: 2pt,
          image(
            "/assets/img/hust-logo.png",
            height: 1.2em,
          )
        )
        #h(1fr)
        #text(
          upper(course_code + " - " + course_name),
          font: "Linh AvantGarde",
          fill: secondary_color
        )
      ]
    )
  )
  outline(
    title: align(center)[
      #text(
        baseline: -5pt,
        upper("Mục nội dung"),
        font: "Lato",
        weight: 600, 
        fill: primary_color,
        size: 18pt,
      )
    ],
    indent: auto,
    fill: line(
      length: 100%,
      stroke: 1pt + primary_color
    ),
  )
  counter(page).update(0)
  pagebreak()

  // 2.3 Main content
  set page(
    footer: align(
      left + horizon,
      box(inset:10pt)[
        #text("Bản chép môn học sử dụng")
        #link("https://typst.app")[
          #box(
            baseline: 4pt,
            image(
            "/assets/img/typst.svg",
            height: 1.02em
            ),
          )
        ]
        #h(1fr)
        Trang
        #counter(page).display(
          "1/1",
          both: true,
          
        )
      ],
    ),
  )
  body
}
