\paper {
  indent=0\mm
  line-width=120\mm
  oddFooterMarkup=##f
  oddHeaderMarkup=##f
  bookTitleMarkup=##f
  scoreTitleMarkup=##f
}

global = {
  \key c \major
  \time 2/4
}

sopranonotes = \relative c' {
  c4 e4
  g4 e4
}

altonotes = \relative c' {
  c2
  g'2
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "soprano" <<
        \global
        \sopranonotes
    	>>
    >>
    \new Staff <<
      \new Voice = "alto" <<
        \global
        \altonotes
    	>>
    >>
  >>
}