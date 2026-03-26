#let profile = (
  name_en: "Soma Noda",
  title: "Full-Stack Developer",
  email: "me@odango.app",
  web: "odango.app",
  github: "github.com/akazdayo",
)

// Neutral color scale (Tailwind neutral)
#let n400 = rgb("#a3a3a3")
#let n500 = rgb("#737373")
#let n600 = rgb("#525252")
#let n700 = rgb("#404040")
#let n900 = rgb("#171717")
#let n950 = rgb("#0a0a0a")

#let lm = 7mm
#let tm = 7mm

// ══════════════════════════════════════════════════════
// PAGE 1 — WHITE FRONT
// ══════════════════════════════════════════════════════
#set page(width: 91mm, height: 55mm, margin: 0mm, fill: white)
#set text(font: ("Noto Sans", "Noto Sans CJK JP"), fill: n900, size: 8pt)
#set par(justify: false)

// Top-left: "AKAZ / BUSINESS CARD" + short rule
#place(top + left, dx: lm, dy: tm)[
  #stack(
    spacing: 4.5mm,
    text(size: 5.5pt, fill: n500, tracking: 1.6pt)[AKAZ / BUSINESS CARD],
    line(length: 11mm, stroke: 0.4pt + rgb("#d4d4d4")),
  )
]

// Top-right: brand + role
#place(top + right, dx: -lm, dy: tm)[
  #align(right)[
    #stack(
      spacing: 1.2mm,
      text(size: 8pt, weight: "bold", fill: n900)[ODANGO],
      text(size: 6.5pt, fill: n500)[Software / Product],
    )
  ]
]

// Right: circular avatar (vertically centered)
#place(top + right, dx: -lm, dy: (55mm - 30.4mm) / 2)[
  #box(width: 30.4mm, height: 30.4mm, radius: 15.2mm, clip: true)[
    #image("assets/avatar.webp", width: 30.4mm, height: 30.4mm, fit: "cover")
  ]
]

// Middle-left: name + title
#place(top + left, dx: lm, dy: 15mm)[
  #stack(
    spacing: 1.8mm,
    text(size: 17pt, weight: "bold", fill: n950)[Soma Noda],
    text(size: 8pt, fill: n600)[#profile.title],
  )
]

// Bottom-left: contact grid
#place(bottom + left, dx: lm, dy: -tm)[
  #grid(
    columns: (15mm, 1fr),
    row-gutter: 1.8mm,
    align: left + horizon,
    text(size: 6.5pt, fill: n400)[Email],
    text(size: 7pt, fill: n700)[#profile.email],
    text(size: 6.5pt, fill: n400)[Web],
    text(size: 7pt, fill: n700)[#profile.web],
    text(size: 6.5pt, fill: n400)[GitHub],
    text(size: 7pt, fill: n700)[#profile.github],
  )
]
