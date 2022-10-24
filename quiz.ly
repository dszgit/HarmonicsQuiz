\version "2.20.0"
\include "english.ly"
#(set-default-paper-size "letter")

\header
{
  title = "Cello Harmonics Quiz"
  copyright = ""
  tagline = ""
}

global_start = 
{
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  \accidentalStyle forget
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \clef "bass"
  \harmonicsOn
}



no_meter = 
{
  \autoBeamOff
  \omit Score.TimeSignature
  \omit Score.BarLine
}

global_end =
{
  \harmonicsOff
  \undo \omit Score.BarLine
  \bar "|."
}


quiz =
{
  \global_start
  \no_meter

  c a b, c
  b, c b,
  a b, gs, gs, b, a
  gs,

  b, gs, g b,
  g b, g
  gs, g e' e' g gs,
  e'
  g c a b, gs, g
  e'

  e' a b, gs, g e'
  fs
  fs b, gs, g e' fs
  ds fs cs
  e' gs, fs g
  ds g b, c

  \global_end

}

stringnums = 
{
  \global_start
  \no_meter

  c\3 a\2 b,\3 c\3 |
  b,\3 c\3 b,\3
  a\2 b,\3 gs,\4 gs,\4 b,\3 a\2
  gs,\4

  b,\3 gs,\4 g\2 b,\3
  g\2 b,\2 g\2
  gs,\4 g\2 e'\1 e' g\2 gs,\4
  e'\1
  g\2 c\3 a\2 b,\3 gs,\4 g\2
  e'\1

  e'\1 a\2 b,\3 gs,\4 g\2 e'\1
  fs\2
  fs\2 b,\3 gs,\4 g\2 e'\1 fs\2
  ds\3 fs\2 cs\3
  e'\1 gs,\4 fs\2 g\2
  ds\3 g\2 b,\3 c\3

  \global_end

}

% meter =
% {

%   \global_start
%   \undo \omit Score.TimeSignature
%   \undo \omit Score.BarLine

%   c4.\3 a8\2 b,4.\3 c8\3
%   b,4\3 c\3 b,2\3
%   a4.\2 b,8\3 gs,\4 gs,\4 b,\3 a\2
%   gs,1\4

%   b,4.\3 gs,8\4 g4.\2 b,8\3
%   g4\2 b,\2 g2\2
%   gs,4.\4 g8\2 e'\1 e' g\2 gs,\4
%   e'1\1
%   g4.\2 c8\3 a\2 b,\3 gs,\4 g\2
%   e'1\1

%   e'4.\1 a8\2 b,\3 gs,\4 g\2 e'\1
%   fs1\2
%   fs4.\2 b,8\3 gs,\4 g\2 e'\1 fs\2
%   ds2.\3 fs8\2 cs\3
%   e'4\1 gs,\4 fs\2 g\2
%   ds\3 g\2 b,\3 c\3

%   \global_end

% }

harms =
{

  \global_start
  \no_meter

  c\3^\markup{(4)} a\2^\markup{(3)} b,\3^\markup{(5)} c\3^\markup{(4)}
  b,\3^\markup{(5)} c\3^\markup{(4)} b,\3^\markup{(5)}
  a\2^\markup{(3)} b,\3^\markup{(5)} gs,\4^\markup{(8)} gs,\4^\markup{(8)} b,\3^\markup{(5)} a\2^\markup{(3)}
  gs,\4^\markup{(8)}

  b,\3^\markup{(5)} gs,\4^\markup{(8)} g\2^\markup{(4)} b,\3^\markup{(5)}
  g\2^\markup{(4)} b,\2^\markup{(5)} g\2^\markup{(4)}
  gs,\4^\markup{(8)} g\2^\markup{(4)} e'\1^\markup{(3)} e'\1^\markup{(3)} g\2^\markup{(3)} gs,\4^\markup{(8)}
  e'\1^\markup{(3)}
  g\2^\markup{(4)} c\3^\markup{(4)} a\2^\markup{(3)} b,\3^\markup{(5)} gs,\4^\markup{(8)} g\2^\markup{(4)}
  e'\1^\markup{(3)}

  e'\1^\markup{(3)} a\2^\markup{(3)} b,\3^\markup{(5)} gs,\4^\markup{(8)} g\2^\markup{(4)} e'\1^\markup{(3)}
  fs\2^\markup{(5)}
  fs\2^\markup{(5)} b,\3^\markup{(5)} gs,\4^\markup{(8)} g\2^\markup{(4)} e'\1^\markup{(3)} fs\2^\markup{(5)}
  ds\3^\markup{(8)} fs\2^\markup{(5)} cs\3^\markup{(7)}
  e'\1^\markup{(3)} gs,\4^\markup{(8)} fs\2^\markup{(3)} g\2^\markup{(4)}
  ds\3^\markup{(8)} g\2^\markup{(4)} b,\3^\markup{(5)} c\3^\markup{(4)}

  \global_end

}

meter =
{

  \global_start

  c4.\3^\markup{(4)} a8\2^\markup{(3)} b,4.\3^\markup{(5)} c8\3^\markup{(4)}
  b,4\3^\markup{(5)} c\3^\markup{(4)} b,2\3^\markup{(5)}
  a4.\2^\markup{(3)} b,8\3^\markup{(5)} gs,\4^\markup{(8)} gs,\4^\markup{(8)} b,\3^\markup{(5)} a\2^\markup{(3)}
  gs,1\4^\markup{(8)}

  b,4.\3^\markup{(5)} gs,8\4^\markup{(8)} g4.\2^\markup{(4)} b,8\3^\markup{(5)}
  g4\2^\markup{(4)} b,\2^\markup{(5)} g2\2^\markup{(4)}
  gs,4.\4^\markup{(8)} g8\2^\markup{(4)} e'\1^\markup{(3)} e'\1^\markup{(3)} g\2^\markup{(3)} gs,\4^\markup{(8)}
  e'1\1^\markup{(3)}
  g4.\2^\markup{(4)} c8\3^\markup{(4)} a\2^\markup{(3)} b,\3^\markup{(5)} gs,\4^\markup{(8)} g\2^\markup{(4)}
  e'1\1^\markup{(3)}

  e'4.\1^\markup{(3)} a8\2^\markup{(3)} b,\3^\markup{(5)} gs,\4^\markup{(8)} g\2^\markup{(4)} e'\1^\markup{(3)}
  fs1\2^\markup{(5)}
  fs4.\2^\markup{(5)} b,8\3^\markup{(5)} gs,\4^\markup{(8)} g\2^\markup{(4)} e'\1^\markup{(3)} fs\2^\markup{(5)}
  ds2.\3^\markup{(8)} fs8\2^\markup{(5)} cs\3^\markup{(7)}
  e'4\1^\markup{(3)} gs,\4^\markup{(8)} fs\2^\markup{(3)} g\2^\markup{(4)}
  ds\3^\markup{(8)} g\2^\markup{(4)} b,\3^\markup{(5)} c\3^\markup{(4)}

  \global_end

}


pitches =
{

  \global_start

  \harmonicsOff
  \clef "treble"

  %% c4.\3^\markup{(4)} a8\2^\markup{(3)} b,4.\3^\markup{(5)} c8\3^\markup{(4)}
  g'4. a'8 b'4. g'8

  %% b,4\3^\markup{(5)} c\3^\markup{(4)} b,2\3^\markup{(5)}
  b'4 g' b'2

  %% a4.\2^\markup{(3)} b,8\3^\markup{(5)} gs,\4^\markup{(8)} gs,\4^\markup{(8)} b,\3^\markup{(5)} a\2^\markup{(3)}]
  a'4. b'8 c'' c'' b' a'

  %% gs,1\4^\markup{(8)}
  c''1

  %% b,4.\3^\markup{(5)} gs,8\4^\markup{(8)} g4.\2^\markup{(4)} b,8\3^\markup{(5)}
  b'4. c''8 d''4. b'8

  %% g4\2^\markup{(4)} b,\2^\markup{(5)} g2\2^\markup{(4)}
  d''4 b' d''2

  %% gs,4.\4^\markup{(8)} g8\2^\markup{(4)} e'\1^\markup{(3)} e'\1^\markup{(3)} g\2^\markup{(3)} gs,\4^\markup{(8)}
  c''4. d''8 e'' e'' d'' c''

  %% e'1\1^\markup{(3)}
  e''1

  %% g4.\2^\markup{(4)} c8\3^\markup{(4)} a\2^\markup{(3)} b,\3^\markup{(5)} gs,\4^\markup{(8)} g\2^\markup{(4)}
  d''4. g'8 a' b' c'' d''

  %% e'1\1^\markup{(3)}
  e''1

  %% e'4.\1^\markup{(3)} a8\2^\markup{(3)} b,\3^\markup{(5)} gs,\4^\markup{(8)} g\2^\markup{(4)} e'\1^\markup{(3)}
  e''4. a'8 b' c'' d'' e''

  %% fs1\2^\markup{(5)}
  fs''1
  
  %% fs4.\2^\markup{(5)} b,8\3^\markup{(5)} gs,\4^\markup{(8)} g\2^\markup{(4)} e'\1^\markup{(3)} fs\2^\markup{(5)}
  fs''4. b'8 c'' d'' e'' fs''

  %% ds2.\3^\markup{(8)} fs8\2^\markup{(5)} cs\3^\markup{(7)}
  g''2. fs''8 f''!

  %% e'4\1^\markup{(3)} gs,\4^\markup{(8)} fs\2^\markup{(3)} g\2^\markup{(4)}
  e''4 c'' fs'' d''

  %% ds\3^\markup{(8)} g\2^\markup{(4)} b,\3^\markup{(5)} c\3^\markup{(4)}
  g'' d'' b' g'

  \global_end

}

quizintro = \markuplist
{
  \vspace #3
  \column-lines
  {
    \vspace #1
    \justify
    {
      The attached musical snippet represents a familiar tune, as played on
      the cello using only natural harmonics, fingered at or near the note
      positions indicated.  Of course the resulting harmonics will sound as
      different pitches than the written notes.
    }
    \vspace #1
    \justify
    {
      The notes are indicated without rhythm or meter.
    }
    \vspace #1
    \justify
    {
      Your task is to determine the correct string for each note, and which
      harmonic should sound there, and ultimately what the tune is.
    }
    \vspace #3
  }
}


stringnumtext = \markuplist
{
  \vspace #3
  \column-lines
  {
    \vspace #1
    \justify
    {
      Here is a hint, indicating the string on which each harmonic is to be played.
      That will help to disambiguate which harmonic is intended.
    }
    \vspace #3
  }
}


harmstext = \markuplist
{
  \vspace #3
  \column-lines
  {
    \vspace #1
    \justify
    {
      Here is an even stronger hint, showing not only the string, but also which number harmonic sounds at the given note.
    }
  }
  \vspace #3
}


rhythmtext = \markuplist
{
  \vspace #3
  \column-lines
  {
    \vspace #1
    \justify
    {
      Here is the ultimate hint, indicating the meter and rhythm, which itself almost gives away the tune!
    }
    \vspace #3
  }
}

solutiontext = \markuplist
{
  \vspace #3
  \column-lines
  {
    \vspace #1
    \justify
    {
      Here is the solution, showing the actual sounding notes.
    }
    \vspace #3
  }
}



\paper
{
  system-system-spacing = #'((basic-distance . 1) (padding . 10))
  top-margin = 25
  left-margin = 25
  right-margin = 25
  ragged-bottom = ##t
  print-page-number = ##f
}

\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32)
  }
}


\book {
  \quizintro
  \quiz
}


\book {
  \bookOutputSuffix "hint-1"
  \header { subtitle = "FIRST HINT" }
  \stringnumtext
  \stringnums
}

\book {
  \bookOutputSuffix "hint-2"
  \header { subtitle = "SECOND HINT" }
  \harmstext
  \harms
}

\book {
  \bookOutputSuffix "hint-3"
  \header { subtitle = "THIRD HINT" }
  \rhythmtext
  \meter
}

\book {
  \bookOutputSuffix "solution"
  \header { subtitle = "SOLUTION" }
  \solutiontext
  \new StaffGroup <<
    \new Staff { \pitches }
    \new Staff { \meter }
  >>
}


