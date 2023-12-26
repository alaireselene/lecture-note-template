#import "conf/page-format.typ": *
#import "conf/functions.typ": *

#show: docs.with(
  course_code: "MI2150",
  course_name: "Đại số đại cương",
  course_instructor: "Vương Mai Phương",
  semester: "2023.1"
)

= Tập hợp - Ánh xạ - Quan hệ
== Tập hợp

#def(name:"Phân hoạch của một tập hợp")[
  Cho $x eq.not nothing$. Các tập hợp $X_1, X_2, X_3, ... X_i$ thỏa mãn
  - $X_i eq.not nothing$
  - $X_i sect X_j eq nothing$
  - $ union.big_(i in I)X_i = X $
  được gọi là *Phân hoạch của $X$*
]

== Quan hệ (2 ngôi)

#def(name:"Quan hệ")[
  Cho $X eq.not nothing$. \
  Nếu $D subset XX^2$ thì $D$ là quan hệ 2 ngôi. \
  $(a, b) in D arrow a D b$
]

#eg[
  Cho $X = {1, 2, 3}$ \
  $D = {(1, 1), (1, 2)}$ \
  $D subset XX^2, 1 D 1, 1 D 2$ \
  $X eq R, D:{(a, b) | a lt.eq b, a, b in R}$
]

*Tính chất*
- \Phản xạ: Cho quan hệ $D$ trên $XX$. $D$ được gọi là có tính chất phản xạ nếu mọi phần tử $a in XX$ đều có quan hệ D với chính nó.

  $<=> forall a in X: a D b => (a, a) in D$

- Đối xứng:

  $forall a, b in XX: a D b => b D a$ \
  $<=> exists a in X: (a, b) in D and (b, a) in.not D$

- Phản đối xứng:

  $forall a, b in XX: a D b and b D a -> a = b$ \
  $exists a, b in XX: a D b and b D a and a != b$

#pagebreak()
= Nửa nhóm và Nhóm (Sub-group and Group)
== Phép toán 2 ngôi

#def(name:"Phép toán 2 ngôi")[
  Cho $G != nothing$. Một phép toán 2 ngôi trên $GG$ là một ánh xạ từ $G * G$ vào $G$.\
  Ký hiệu: \
  $ G * G arrow.long G$ \
  $(a, b) arrow.r.long.bar a * b $
]

#eg(name:"Phép toán 2 ngôi")[
  1. $(RR, +)$ là phép toán 2 ngôi trên $RR$ vì  $forall a, b in R, a + b in R$\
  2. $(NN, -)$ không là phép toán 2 ngôi trên $exists a = 1, b = 5, a - b in.not NN$
]

