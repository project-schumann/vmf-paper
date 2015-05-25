global = {
  \key f \major
  \time 4/4
}

sopranonotes = \relative c'' {
  f4 f2 c4
  a4 a2 d4
  f4 f8 f8 f4 c4
  a2 a2
}

altonotes = \relative c'' {
  c4 c2 a4
  f4 f2 a4
  c4 c8 c8 c4 a4
  f2 f2
}


tenorAnotes = \relative c' {
	f4 f2 f4
	d4 d2 d4
	f4 f8 f8 f4 f4
}

tenorBnotes = \relative c' {
	c4 c2 c4
	d4 d2 d4
	c4 c8 c8 c4 c4
	cis2 cis2
}

bassnotes = {
	a4 a2 a4
	a4 a2 a4
	a4 a8 a8 a4 a4
	a2 a2
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
    \new Staff <<
    	\clef "treble_8"
      \new Voice = "tenor" <<
      	\voiceOne
        \global
        \tenorAnotes
    	>>
    	\new Voice <<
    		\voiceTwo
    		\global
    		\tenorBnotes
    	>>
    >>
    \new Staff <<
     	\clef bass
      \new Voice = "bass" <<
        \global
        \bassnotes
			>>
    >>
  >>
}