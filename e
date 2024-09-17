GREP(1)                      User Commands                     GREP(1)

NNAAMMEE
       grep, egrep, fgrep, rgrep - print lines that match patterns

SSYYNNOOPPSSIISS
       ggrreepp [_O_P_T_I_O_N...] _P_A_T_T_E_R_N_S [_F_I_L_E...]
       ggrreepp [_O_P_T_I_O_N...] --ee _P_A_T_T_E_R_N_S ... [_F_I_L_E...]
       ggrreepp [_O_P_T_I_O_N...] --ff _P_A_T_T_E_R_N___F_I_L_E ... [_F_I_L_E...]

DDEESSCCRRIIPPTTIIOONN
       ggrreepp  searches  for  _P_A_T_T_E_R_N_S in each _F_I_L_E.  _P_A_T_T_E_R_N_S is one or
       more patterns separated by newline characters, and ggrreepp  prints
       each line that matches a pattern.  Typically _P_A_T_T_E_R_N_S should be
       quoted when ggrreepp is used in a shell command.

       A _F_I_L_E of “--” stands for standard input.  If no _F_I_L_E is  given,
       recursive   searches   examine   the   working  directory,  and
       nonrecursive searches read standard input.

       In addition, the variant programs eeggrreepp, ffggrreepp  and  rrggrreepp  are
       the same as ggrreepp --EE, ggrreepp --FF, and ggrreepp --rr, respectively.  These
       variants  are  deprecated,  but  are  provided   for   backward
       compatibility.

OOPPTTIIOONNSS
   GGeenneerriicc PPrrooggrraamm IInnffoorrmmaattiioonn
       ----hheellpp Output a usage message and exit.

       --VV, ----vveerrssiioonn
              Output the version number of ggrreepp and exit.

   PPaatttteerrnn SSyynnttaaxx
       --EE, ----eexxtteennddeedd--rreeggeexxpp
              Interpret   _P_A_T_T_E_R_N_S  as  extended  regular  expressions
              (EREs, see below).

       --FF, ----ffiixxeedd--ssttrriinnggss
              Interpret  _P_A_T_T_E_R_N_S  as  fixed  strings,   not   regular
              expressions.

       --GG, ----bbaassiicc--rreeggeexxpp
              Interpret  _P_A_T_T_E_R_N_S  as basic regular expressions (BREs,
              see below).  This is the default.

       --PP, ----ppeerrll--rreeggeexxpp
              Interpret   I<PATTERNS>   as   Perl-compatible   regular
              expressions  (PCREs).   This option is experimental when
              combined with the --zz (----nnuullll--ddaattaa) option, and  ggrreepp  --PP
              may warn of unimplemented features.

   MMaattcchhiinngg CCoonnttrrooll
       --ee _P_A_T_T_E_R_N_S, ----rreeggeexxpp==_P_A_T_T_E_R_N_S
              Use  _P_A_T_T_E_R_N_S  as  the patterns.  If this option is used
              multiple times or  is  combined  with  the  --ff  (----ffiillee)
              option,  search for all patterns given.  This option can
              be used to protect a pattern beginning with “-”.

       --ff _F_I_L_E, ----ffiillee==_F_I_L_E
              Obtain patterns from _F_I_L_E, one per line.  If this option
              is  used  multiple  times  or  is  combined  with the --ee
              (----rreeggeexxpp) option, search for all patterns  given.   The
              empty file contains zero patterns, and therefore matches
              nothing.

       --ii, ----iiggnnoorree--ccaassee
              Ignore case distinctions in patterns and input data,  so
              that  characters  that  differ  only  in case match each
              other.

       ----nnoo--iiggnnoorree--ccaassee
              Do not ignore case distinctions in  patterns  and  input
              data.   This  is the default.  This option is useful for
              passing to shell scripts that already use --ii, to  cancel
              its effects because the two options override each other.

       --vv, ----iinnvveerrtt--mmaattcchh
              Invert  the  sense  of  matching, to select non-matching
              lines.

       --ww, ----wwoorrdd--rreeggeexxpp
              Select only those lines  containing  matches  that  form
              whole  words.   The  test is that the matching substring
              must either be at the beginning of the line, or preceded
              by a non-word constituent character.  Similarly, it must
              be either at the end of the line or followed by  a  non-
              word constituent character.  Word-constituent characters
              are letters, digits, and the  underscore.   This  option
              has no effect if --xx is also specified.

       --xx, ----lliinnee--rreeggeexxpp
              Select  only  those matches that exactly match the whole
              line.  For a regular expression pattern,  this  is  like
              parenthesizing  the pattern and then surrounding it with
              ^^ and $$.

       --yy     Obsolete synonym for --ii.

   GGeenneerraall OOuuttppuutt CCoonnttrrooll
       --cc, ----ccoouunntt
              Suppress  normal  output;  instead  print  a  count   of
              matching  lines  for  each  input  file.   With  the --vv,
              ----iinnvveerrtt--mmaattcchh option (see  below),  count  non-matching
              lines.

       ----ccoolloorr[==_W_H_E_N], ----ccoolloouurr[==_W_H_E_N]
              Surround   the  matched  (non-empty)  strings,  matching
              lines, context lines, file  names,  line  numbers,  byte
              offsets,  and  separators  (for  fields  and  groups  of
              context lines) with escape sequences to display them  in
              color  on  the  terminal.  The colors are defined by the
              environment  variable   GGRREEPP__CCOOLLOORRSS.    The   deprecated
              environment  variable GGRREEPP__CCOOLLOORR is still supported, but
              its setting does not  have  priority.   _W_H_E_N  is  nneevveerr,
              aallwwaayyss, or aauuttoo.

       --LL, ----ffiilleess--wwiitthhoouutt--mmaattcchh
              Suppress  normal  output; instead print the name of each
              input file from which no output would normally have been
              printed.

       --ll, ----ffiilleess--wwiitthh--mmaattcchheess
              Suppress  normal  output; instead print the name of each
              input file from which output would  normally  have  been
              printed.   Scanning  each  input  file  stops upon first
              match.

       --mm _N_U_M, ----mmaaxx--ccoouunntt==_N_U_M
              Stop reading a file after _N_U_M matching  lines.   If  the
              input  is  standard  input  from a regular file, and _N_U_M
              matching  lines  are  output,  ggrreepp  ensures  that   the
              standard  input  is  positioned  to  just after the last
              matching line before exiting, regardless of the presence
              of  trailing  context  lines.   This  enables  a calling
              process to resume a search.  When ggrreepp stops  after  _N_U_M
              matching  lines,  it outputs any trailing context lines.
              When the --cc or ----ccoouunntt option is also  used,  ggrreepp  does
              not  output  a  count  greater than _N_U_M.  When the --vv or
              ----iinnvveerrtt--mmaattcchh option is also  used,  ggrreepp  stops  after
              outputting _N_U_M non-matching lines.

       --oo, ----oonnllyy--mmaattcchhiinngg
              Print  only  the matched (non-empty) parts of a matching
              line, with each such part on a separate output line.

       --qq, ----qquuiieett, ----ssiilleenntt
              Quiet; do not write anything to standard  output.   Exit
              immediately with zero status if any match is found, even
              if  an  error  was  detected.   Also  see  the   --ss   or
              ----nnoo--mmeessssaaggeess option.

       --ss, ----nnoo--mmeessssaaggeess
              Suppress  error messages about nonexistent or unreadable
              files.

   OOuuttppuutt LLiinnee PPrreeffiixx CCoonnttrrooll
       --bb, ----bbyyttee--ooffffsseett
              Print the 0-based byte  offset  within  the  input  file
              before  each line of output.  If --oo (----oonnllyy--mmaattcchhiinngg) is
              specified, print the offset of the matching part itself.

       --HH, ----wwiitthh--ffiilleennaammee
              Print the file name for each match.  This is the default
              when  there  is more than one file to search.  This is a
              GNU extension.

       --hh, ----nnoo--ffiilleennaammee
              Suppress the prefixing of file names on output.  This is
              the  default  when  there  is  only  one  file  (or only
              standard input) to search.

       ----llaabbeell==_L_A_B_E_L
              Display input actually coming  from  standard  input  as
              input  coming  from  file _L_A_B_E_L.  This can be useful for
              commands  that  transform  a  file's   contents   before
              searching,  e.g.,  ggzziipp --ccdd ffoooo..ggzz || ggrreepp ----llaabbeell==ffoooo --HH
              ''ssoommee ppaatttteerrnn''.  See also the --HH option.

       --nn, ----lliinnee--nnuummbbeerr
              Prefix each line of output with the 1-based line  number
              within its input file.

       --TT, ----iinniittiiaall--ttaabb
              Make  sure  that  the  first  character  of  actual line
              content lies on a tab stop, so  that  the  alignment  of
              tabs  looks  normal.   This  is useful with options that
              prefix their output to the actual  content:  --HH,--nn,  and
              --bb.  In order to improve the probability that lines from
              a single file will all start at the  same  column,  this
              also causes the line number and byte offset (if present)
              to be printed in a minimum size field width.

       --ZZ, ----nnuullll
              Output a zero byte (the ASCII NNUULL character) instead  of
              the  character  that  normally follows a file name.  For
              example, ggrreepp --llZZ outputs a zero byte  after  each  file
              name  instead  of  the usual newline.  This option makes
              the output unambiguous, even in  the  presence  of  file
              names containing unusual characters like newlines.  This
              option can be used with commands like ffiinndd --pprriinntt00, ppeerrll
              --00,  ssoorrtt  --zz,  and  xxaarrggss  --00 to process arbitrary file
              names, even those that contain newline characters.

   CCoonntteexxtt LLiinnee CCoonnttrrooll
       --AA _N_U_M, ----aafftteerr--ccoonntteexxtt==_N_U_M
              Print _N_U_M  lines  of  trailing  context  after  matching
              lines.   Places a line containing a group separator (----)
              between contiguous groups of matches.  With  the  --oo  or
              ----oonnllyy--mmaattcchhiinngg option, this has no effect and a warning
              is given.

       --BB _N_U_M, ----bbeeffoorree--ccoonntteexxtt==_N_U_M
              Print _N_U_M  lines  of  leading  context  before  matching
              lines.   Places a line containing a group separator (----)
              between contiguous groups of matches.  With  the  --oo  or
              ----oonnllyy--mmaattcchhiinngg option, this has no effect and a warning
              is given.

       --CC _N_U_M, --_N_U_M, ----ccoonntteexxtt==_N_U_M
              Print _N_U_M  lines  of  output  context.   Places  a  line
              containing  a  group  separator  (----) between contiguous
              groups of  matches.   With  the  --oo  or  ----oonnllyy--mmaattcchhiinngg
              option, this has no effect and a warning is given.

       ----ggrroouupp--sseeppaarraattoorr==_S_E_P
              When  --AA,  --BB, or --CC are in use, print _S_E_P instead of ----
              between groups of lines.

       ----nnoo--ggrroouupp--sseeppaarraattoorr
              When --AA, --BB, or --CC are in use, do not print a  separator
              between groups of lines.

   FFiillee aanndd DDiirreeccttoorryy SSeelleeccttiioonn
       --aa, ----tteexxtt
              Process  a  binary  file  as  if  it  were text; this is
              equivalent to the ----bbiinnaarryy--ffiilleess==tteexxtt option.

       ----bbiinnaarryy--ffiilleess==_T_Y_P_E
              If a file's data or  metadata  indicate  that  the  file
              contains  binary  data,  assume that the file is of type
              _T_Y_P_E.  Non-text bytes indicate binary  data;  these  are
              either  output bytes that are improperly encoded for the
              current locale, or null input bytes when the  --zz  option
              is not given.

              By  default,  _T_Y_P_E is bbiinnaarryy, and ggrreepp suppresses output
              after  null  input  binary  data  is   discovered,   and
              suppresses  output lines that contain improperly encoded
              data.  When some output is suppressed, ggrreepp follows  any
              output with a one-line message saying that a binary file
              matches.

              If _T_Y_P_E is wwiitthhoouutt--mmaattcchh, when ggrreepp discovers null input
              binary  data  it  assumes that the rest of the file does
              not match; this is equivalent to the --II option.

              If _T_Y_P_E is tteexxtt, ggrreepp processes a binary file as  if  it
              were text; this is equivalent to the --aa option.

              When  _t_y_p_e  is  bbiinnaarryy, ggrreepp may treat non-text bytes as
              line terminators even without the --zz option.  This means
              choosing bbiinnaarryy versus tteexxtt can affect whether a pattern
              matches a file.  For example, when _t_y_p_e  is  bbiinnaarryy  the
              pattern  qq$$ mmiigghhtt match qq immediately followed by a null
              byte, even though this is not matched when _t_y_p_e is tteexxtt.
              Conversely,  when  _t_y_p_e is bbiinnaarryy the pattern .. (period)
              might not match a null byte.

              _W_a_r_n_i_n_g_: The --aa  option  might  output  binary  garbage,
              which  can  have  nasty  side effects if the output is a
              terminal and if the terminal driver interprets  some  of
              it  as  commands.  On the other hand, when reading files
              whose text encodings are unknown, it can be  helpful  to
              use --aa or to set LLCC__AALLLL==''CC'' in the environment, in order
              to find more matches even if the matches are unsafe  for
              direct display.

       --DD _A_C_T_I_O_N, ----ddeevviicceess==_A_C_T_I_O_N
              If an input file is a device, FIFO or socket, use _A_C_T_I_O_N
              to process it.  By default, _A_C_T_I_O_N is rreeaadd, which  means
              that  devices  are  read  just  as if they were ordinary
              files.  If _A_C_T_I_O_N is sskkiipp, devices are silently skipped.

       --dd _A_C_T_I_O_N, ----ddiirreeccttoorriieess==_A_C_T_I_O_N
              If an input file is a directory, use _A_C_T_I_O_N  to  process
              it.   By default, _A_C_T_I_O_N is rreeaadd, i.e., read directories
              just as if they were ordinary files.  If _A_C_T_I_O_N is sskkiipp,
              silently  skip  directories.  If _A_C_T_I_O_N is rreeccuurrssee, read
              all files under each directory,  recursively,  following
              symbolic  links  only  if  they are on the command line.
              This is equivalent to the --rr option.

       ----eexxcclluuddee==_G_L_O_B
              Skip any command-line  file  with  a  name  suffix  that
              matches  the  pattern  _G_L_O_B,  using wildcard matching; a
              name suffix is either the whole name, or a trailing part
              that starts with a non-slash character immediately after
              a slash (//) in the name.   When  searching  recursively,
              skip  any subfile whose base name matches _G_L_O_B; the base
              name is the part after the last slash.   A  pattern  can
              use  **,  ??,  and  [[...]]  as  wildcards, and \\ to quote a
              wildcard or backslash character literally.

       ----eexxcclluuddee--ffrroomm==_F_I_L_E
              Skip files whose base name matches any of the  file-name
              globs   read  from  _F_I_L_E  (using  wildcard  matching  as
              described under ----eexxcclluuddee).

       ----eexxcclluuddee--ddiirr==_G_L_O_B
              Skip any command-line directory with a name suffix  that
              matches  the  pattern _G_L_O_B.  When searching recursively,
              skip any subdirectory  whose  base  name  matches  _G_L_O_B.
              Ignore any redundant trailing slashes in _G_L_O_B.

       --II     Process  a binary file as if it did not contain matching
              data;      this      is      equivalent      to      the
              ----bbiinnaarryy--ffiilleess==wwiitthhoouutt--mmaattcchh option.

       ----iinncclluuddee==_G_L_O_B
              Search  only  files  whose base name matches _G_L_O_B (using
              wildcard matching as  described  under  ----eexxcclluuddee).   If
              contradictory ----iinncclluuddee and ----eexxcclluuddee options are given,
              the  last  matching  one  wins.   If  no  ----iinncclluuddee   or
              ----eexxcclluuddee  options  match, a file is included unless the
              first such option is ----iinncclluuddee.

       --rr, ----rreeccuurrssiivvee
              Read  all  files  under  each  directory,   recursively,
              following symbolic links only if they are on the command
              line.  Note that if no file operand  is  given,  B<grep>
              searches  the  working directory.  This is equivalent to
              the --dd rreeccuurrssee option.

       --RR, ----ddeerreeffeerreennccee--rreeccuurrssiivvee
              Read  all  files  under  each  directory,   recursively.
              Follow all symbolic links, unlike --rr.

   OOtthheerr OOppttiioonnss
       ----lliinnee--bbuuffffeerreedd
              Use   line  buffering  on  output.   This  can  cause  a
              performance penalty.

       --UU, ----bbiinnaarryy
              Treat the file(s) as binary.  By default,  under  MS-DOS
              and  MS-Windows,  ggrreepp guesses whether a file is text or
              binary as described for the ----bbiinnaarryy--ffiilleess  option.   If
              ggrreepp  decides  the file is a text file, it strips the CR
              characters from the  original  file  contents  (to  make
              regular  expressions  with  ^^  and  $$  work  correctly).
              Specifying --UU  overrules  this  guesswork,  causing  all
              files  to  be  read and passed to the matching mechanism
              verbatim; if the file is a text file with CR/LF pairs at
              the  end  of  each  line,  this  will cause some regular
              expressions to fail.   This  option  has  no  effect  on
              platforms other than MS-DOS and MS-Windows.

       --zz, ----nnuullll--ddaattaa
              Treat  input and output data as sequences of lines, each
              terminated by a zero  byte  (the  ASCII  NUL  character)
              instead  of  a  newline.   Like the --ZZ or ----nnuullll option,
              this option can be used with commands like  ssoorrtt  --zz  to
              process arbitrary file names.

RREEGGUULLAARR EEXXPPRREESSSSIIOONNSS
       A  regular  expression  is  a  pattern  that describes a set of
       strings.  Regular expressions are  constructed  analogously  to
       arithmetic  expressions,  by using various operators to combine
       smaller expressions.

       ggrreepp understands three different versions of regular expression
       syntax:  “basic” (BRE), “extended” (ERE) and “perl” (PCRE).  In
       GNU ggrreepp there is  no  difference  in  available  functionality
       between basic and extended syntaxes.  In other implementations,
       basic regular expressions are  less  powerful.   The  following
       description    applies   to   extended   regular   expressions;
       differences  for  basic  regular  expressions  are   summarized
       afterwards.     Perl-compatible    regular   expressions   give
       additional    functionality,    and    are    documented     in
       B<pcresyntax>(3)  and  B<pcrepattern>(3), but work only if PCRE
       support is enabled.

       The fundamental building blocks  are  the  regular  expressions
       that  match a single character.  Most characters, including all
       letters  and  digits,  are  regular  expressions   that   match
       themselves.   Any  meta-character  with  special meaning may be
       quoted by preceding it with a backslash.

       The period .. matches any single character.  It  is  unspecified
       whether it matches an encoding error.

   CChhaarraacctteerr CCllaasssseess aanndd BBrraacckkeett EExxpprreessssiioonnss
       A  _b_r_a_c_k_e_t _e_x_p_r_e_s_s_i_o_n is a list of characters enclosed by [[ and
       ]].  It matches any single character in that list.  If the first
       character  of  the  list  is  the  caret  ^^ then it matches any
       character _n_o_t in the list; it is unspecified whether it matches
       an   encoding  error.   For  example,  the  regular  expression
       [[00112233445566778899]] matches any single digit.

       Within a bracket expression, a _r_a_n_g_e _e_x_p_r_e_s_s_i_o_n consists of two
       characters  separated  by  a  hyphen.   It  matches  any single
       character that sorts between  the  two  characters,  inclusive,
       using  the  locale's collating sequence and character set.  For
       example, in the  default  C  locale,  [[aa--dd]]  is  equivalent  to
       [[aabbccdd]].   Many locales sort characters in dictionary order, and
       in these locales [[aa--dd]] is typically not equivalent  to  [[aabbccdd]];
       it  might  be  equivalent to [[aaBBbbCCccDDdd]], for example.  To obtain
       the traditional interpretation of bracket expressions, you  can
       use  the C locale by setting the LLCC__AALLLL environment variable to
       the value CC.

       Finally, certain named classes  of  characters  are  predefined
       within  bracket  expressions, as follows.  Their names are self
       explanatory, and  they  are  [[::aallnnuumm::]],  [[::aallpphhaa::]],  [[::bbllaannkk::]],
       [[::ccnnttrrll::]],    [[::ddiiggiitt::]],   [[::ggrraapphh::]],   [[::lloowweerr::]],   [[::pprriinntt::]],
       [[::ppuunncctt::]], [[::ssppaaccee::]], [[::uuppppeerr::]], and [[::xxddiiggiitt::]].  For  example,
       [[[[::aallnnuumm::]]]] means the character class of numbers and letters in
       the current locale.  In the C locale and  ASCII  character  set
       encoding,  this  is  the  same  as [[00--99AA--ZZaa--zz]].  (Note that the
       brackets in these class names are part of the  symbolic  names,
       and must be included in addition to the brackets delimiting the
       bracket expression.)  Most meta-characters lose  their  special
       meaning  inside  bracket  expressions.   To include a literal ]]
       place it first in the list.  Similarly, to include a literal  ^^
       place  it  anywhere but first.  Finally, to include a literal --
       place it last.

   AAnncchhoorriinngg
       The caret ^^ and the dollar  sign  $$  are  meta-characters  that
       respectively match the empty string at the beginning and end of
       a line.

   TThhee BBaacckkssllaasshh CChhaarraacctteerr aanndd SSppeecciiaall EExxpprreessssiioonnss
       The symbols \\<< and \\>> respectively match the  empty  string  at
       the  beginning  and  end  of a word.  The symbol \\bb matches the
       empty string at the edge of a word, and \\BB  matches  the  empty
       string  provided it's _n_o_t at the edge of a word.  The symbol \\ww
       is  a  synonym  for  [[__[[::aallnnuumm::]]]]  and  \\WW  is  a  synonym  for
       [[^^__[[::aallnnuumm::]]]].

   RReeppeettiittiioonn
       A  regular  expression  may  be  followed  by  one  of  several
       repetition operators:
       ??      The preceding item is optional and matched at most once.
       **      The preceding item will be matched zero or more times.
       ++      The preceding item will be matched one or more times.
       {{_n}}    The preceding item is matched exactly _n times.
       {{_n,,}}   The preceding item is matched _n or more times.
       {{,,_m}}   The preceding item is matched at most _m times.  This  is
              a GNU extension.
       {{_n,,_m}}  The  preceding item is matched at least _n times, but not
              more than _m times.

   CCoonnccaatteennaattiioonn
       Two regular expressions  may  be  concatenated;  the  resulting
       regular  expression  matches any string formed by concatenating
       two  substrings  that  respectively  match   the   concatenated
       expressions.

   AAlltteerrnnaattiioonn
       Two  regular expressions may be joined by the infix operator ||;
       the resulting regular expression matches  any  string  matching
       either alternate expression.

   PPrreecceeddeennccee
       Repetition  takes  precedence over concatenation, which in turn
       takes precedence over alternation.  A whole expression  may  be
       enclosed  in parentheses to override these precedence rules and
       form a subexpression.

   BBaacckk--rreeffeerreenncceess aanndd SSuubbeexxpprreessssiioonnss
       The back-reference \\_n, where _n is a single digit,  matches  the
       substring   previously   matched   by   the  _nth  parenthesized
       subexpression of the regular expression.

   BBaassiicc vvss EExxtteennddeedd RReegguullaarr EExxpprreessssiioonnss
       In basic regular expressions the meta-characters ??, ++, {{, ||, ((,
       and  ))  lose their special meaning; instead use the backslashed
       versions \\??, \\++, \\{{, \\||, \\((, and \\)).

EEXXIITT SSTTAATTUUSS
       Normally the exit status is 0 if a line is selected,  1  if  no
       lines  were  selected, and 2 if an error occurred.  However, if
       the --qq or ----qquuiieett or ----ssiilleenntt is used and a line  is  selected,
       the exit status is 0 even if an error occurred.

EENNVVIIRROONNMMEENNTT
       The  behavior  of ggrreepp is affected by the following environment
       variables.

       The locale for category LLCC___f_o_o is specified  by  examining  the
       three  environment  variables  LLCC__AALLLL,  LLCC___f_o_o,  LLAANNGG,  in that
       order.  The first of these variables that is set specifies  the
       locale.   For example, if LLCC__AALLLL is not set, but LLCC__MMEESSSSAAGGEESS is
       set to pptt__BBRR, then the Brazilian Portuguese locale is used  for
       the  LLCC__MMEESSSSAAGGEESS  category.   The  C  locale is used if none of
       these environment variables are set, if the locale  catalog  is
       not  installed,  or  if  ggrreepp  was  not  compiled with national
       language support (NLS).  The  shell  command  llooccaallee  --aa  lists
       locales that are currently available.

       GGRREEPP__CCOOLLOORR
              This  variable  specifies  the  color  used to highlight
              matched (non-empty) text.  It is deprecated in favor  of
              GGRREEPP__CCOOLLOORRSS,  but  still  supported.  The mmtt, mmss, and mmcc
              capabilities of GGRREEPP__CCOOLLOORRSS have priority over  it.   It
              can  only  specify  the  color  used  to  highlight  the
              matching non-empty text in any matching line (a selected
              line  when  the  --vv command-line option is omitted, or a
              context line when --vv  is  specified).   The  default  is
              0011;;3311,  which  means  a  bold red foreground text on the
              terminal's default background.

       GGRREEPP__CCOOLLOORRSS
              Specifies  the  colors  and  other  attributes  used  to
              highlight  various  parts of the output.  Its value is a
              colon-separated list of capabilities  that  defaults  to
              mmss==0011;;3311::mmcc==0011;;3311::ssll==::ccxx==::ffnn==3355::llnn==3322::bbnn==3322::ssee==3366   with
              the  rrvv  and  nnee  boolean  capabilities  omitted  (i.e.,
              false).  Supported capabilities are as follows.

              ssll==    SGR  substring  for  whole  selected lines (i.e.,
                     matching lines when the --vv command-line option is
                     omitted,   or   non-matching  lines  when  --vv  is
                     specified).  If however the boolean rrvv capability
                     and   the   --vv   command-line   option  are  both
                     specified, it applies to context  matching  lines
                     instead.    The   default  is  empty  (i.e.,  the
                     terminal's default color pair).

              ccxx==    SGR substring for whole context lines (i.e., non-
                     matching lines when the --vv command-line option is
                     omitted, or matching lines when --vv is specified).
                     If  however  the boolean rrvv capability and the --vv
                     command-line  option  are  both   specified,   it
                     applies  to  selected non-matching lines instead.
                     The  default  is  empty  (i.e.,  the   terminal's
                     default color pair).

              rrvv     Boolean  value that reverses (swaps) the meanings
                     of the ssll==  and  ccxx==  capabilities  when  the  --vv
                     command-line option is specified.  The default is
                     false (i.e., the capability is omitted).

              mmtt==0011;;3311
                     SGR substring for matching non-empty text in  any
                     matching  line (i.e., a selected line when the --vv
                     command-line option is omitted, or a context line
                     when   --vv   is   specified).    Setting  this  is
                     equivalent to setting both mmss== and mmcc== at once to
                     the  same  value.  The default is a bold red text
                     foreground over the current line background.

              mmss==0011;;3311
                     SGR substring for matching non-empty  text  in  a
                     selected  line.   (This  is only used when the --vv
                     command-line option is omitted.)  The  effect  of
                     the  ssll== (or ccxx== if rrvv) capability remains active
                     when this kicks in.  The default is  a  bold  red
                     text foreground over the current line background.

              mmcc==0011;;3311
                     SGR  substring  for  matching non-empty text in a
                     context line.  (This is only  used  when  the  --vv
                     command-line option is specified.)  The effect of
                     the ccxx== (or ssll== if rrvv) capability remains  active
                     when  this  kicks  in.  The default is a bold red
                     text foreground over the current line background.

              ffnn==3355  SGR  substring  for  file  names  prefixing   any
                     content  line.   The  default  is  a magenta text
                     foreground   over    the    terminal's    default
                     background.

              llnn==3322  SGR  substring  for  line  numbers  prefixing any
                     content  line.   The  default  is  a  green  text
                     foreground    over    the    terminal's   default
                     background.

              bbnn==3322  SGR substring  for  byte  offsets  prefixing  any
                     content  line.   The  default  is  a  green  text
                     foreground   over    the    terminal's    default
                     background.

              ssee==3366  SGR  substring  for  separators that are inserted
                     between selected line fields (::), between context
                     line  fields, (--), and between groups of adjacent
                     lines when nonzero  context  is  specified  (----).
                     The  default  is  a cyan text foreground over the
                     terminal's default background.

              nnee     Boolean value that prevents clearing to  the  end
                     of line using Erase in Line (EL) to Right (\\3333[[KK)
                     each time a colorized item ends.  This is  needed
                     on terminals on which EL is not supported.  It is
                     otherwise  useful  on  terminals  for  which  the
                     bbaacckk__ccoolloorr__eerraassee     (bbccee)    boolean    terminfo
                     capability  does  not  apply,  when  the   chosen
                     highlight colors do not affect the background, or
                     when EL is too slow or causes too  much  flicker.
                     The  default  is  false  (i.e., the capability is
                     omitted).

              Note that boolean capabilities have no ==... part.   They
              are  omitted  (i.e.,  false)  by default and become true
              when specified.

              See the Select Graphic Rendition (SGR)  section  in  the
              documentation  of  the  text  terminal  that is used for
              permitted  values  and  their   meaning   as   character
              attributes.   These  substring  values  are  integers in
              decimal representation  and  can  be  concatenated  with
              semicolons.   ggrreepp  takes  care of assembling the result
              into a complete SGR sequence (\\3333[[...mm).  Common  values
              to  concatenate  include  11 for bold, 44 for underline, 55
              for blink, 77 for  inverse,  3399  for  default  foreground
              color,  3300  to  3377  for  foreground colors, 9900 to 9977 for
              16-color mode foreground colors, 3388;;55;;00 to 3388;;55;;225555  for
              88-color  and  256-color modes foreground colors, 4499 for
              default  background  color,  4400  to  4477  for  background
              colors,  110000 to 110077 for 16-color mode background colors,
              and 4488;;55;;00 to 4488;;55;;225555 for 88-color and 256-color  modes
              background colors.

       LLCC__AALLLL, LLCC__CCOOLLLLAATTEE, LLAANNGG
              These  variables  specify  the locale for the LLCC__CCOOLLLLAATTEE
              category, which determines the collating  sequence  used
              to interpret range expressions like [[aa--zz]].

       LLCC__AALLLL, LLCC__CCTTYYPPEE, LLAANNGG
              These  variables  specify  the  locale  for the LLCC__CCTTYYPPEE
              category, which determines the type of characters, e.g.,
              which  characters  are  whitespace.   This category also
              determines the character encoding, that is, whether text
              is  encoded in UTF-8, ASCII, or some other encoding.  In
              the C or POSIX locale, all characters are encoded  as  a
              single byte and every byte is a valid character.

       LLCC__AALLLL, LLCC__MMEESSSSAAGGEESS, LLAANNGG
              These  variables  specify the locale for the LLCC__MMEESSSSAAGGEESS
              category, which determines the language that  ggrreepp  uses
              for  messages.   The  default  C  locale  uses  American
              English messages.

       PPOOSSIIXXLLYY__CCOORRRREECCTT
              If set, ggrreepp behaves as POSIX requires; otherwise,  ggrreepp
              behaves  more  like  other GNU programs.  POSIX requires
              that options that follow file names must be  treated  as
              file names; by default, such options are permuted to the
              front of the operand list and are  treated  as  options.
              Also,   POSIX  requires  that  unrecognized  options  be
              diagnosed as “illegal”, but since they  are  not  really
              against  the  law  the  default  is  to diagnose them as
              “invalid”.       PPOOSSIIXXLLYY__CCOORRRREECCTT      also      disables
              ___N__GGNNUU__nnoonnooppttiioonn__aarrggvv__ffllaaggss__, described below.

       ___N__GGNNUU__nnoonnooppttiioonn__aarrggvv__ffllaaggss__
              (Here  _N  is  ggrreepp's  numeric  process  ID.)  If the _ith
              character of this environment variable's value is 11,  do
              not  consider  the  _ith operand of ggrreepp to be an option,
              even if it appears to be one.   A  shell  can  put  this
              variable  in  the  environment for each command it runs,
              specifying which operands are the results of  file  name
              wildcard  expansion  and therefore should not be treated
              as options.  This behavior is available  only  with  the
              GNU C library, and only when PPOOSSIIXXLLYY__CCOORRRREECCTT is not set.

NNOOTTEESS
       This   man   page   is   maintained  only  fitfully;  the  full
       documentation is often more up-to-date.

CCOOPPYYRRIIGGHHTT
       Copyright 1998-2000, 2002, 2005-2021 Free Software  Foundation,
       Inc.

       This  is  free software; see the source for copying conditions.
       There is NO warranty; not even for MERCHANTABILITY  or  FITNESS
       FOR A PARTICULAR PURPOSE.

BBUUGGSS
   RReeppoorrttiinngg BBuuggss
       Email   bug   reports   to   the  bug-reporting  address  ⟨bug-
       grep@gnu.org⟩.            An           email            archive
       ⟨https://lists.gnu.org/mailman/listinfo/bug-grep⟩   and  a  bug
       tracker
       ⟨https://debbugs.gnu.org/cgi/pkgreport.cgi?package=grep⟩    are
       available.

   KKnnoowwnn BBuuggss
       Large repetition counts in the {{_n,,_m}} construct may  cause  ggrreepp
       to use lots of memory.  In addition, certain other obscure reg‐
       ular expressions require exponential time and  space,  and  may
       cause ggrreepp to run out of memory.

       Back-references  are  very  slow,  and  may require exponential
       time.

EEXXAAMMPPLLEE
       The following example outputs the location and contents of  any
       line containing “f” and ending in “.c”, within all files in the
       current directory whose names contain “g” and end in “.h”.  The
       --nn  option  outputs line numbers, the ---- argument treats expan‐
       sions of “*g*.h” starting with “-” as file names  not  options,
       and  the  empty  file  /dev/null causes file names to be output
       even if only one file name happens to be of the form “*g*.h”.

         $ ggrreepp -n -- 'f.*\.c$' *g*.h /dev/null
         argmatch.h:1:/* definitions and prototypes for argmatch.c

       The only line that matches is line 1 of argmatch.h.  Note  that
       the  regular expression syntax used in the pattern differs from
       the globbing syntax that the shell uses to match file names.

SSEEEE AALLSSOO
   RReegguullaarr MMaannuuaall PPaaggeess
       aawwkk(1), ccmmpp(1), ddiiffff(1),  ffiinndd(1),  ppeerrll(1),  sseedd(1),  ssoorrtt(1),
       xxaarrggss(1), rreeaadd(2), ppccrree(3), ppccrreessyynnttaaxx(3), ppccrreeppaatttteerrnn(3), tteerr‐‐
       mmiinnffoo(5), gglloobb(7), rreeggeexx(7)

   FFuullll DDooccuummeennttaattiioonn
       A complete  manual  ⟨https://www.gnu.org/software/grep/manual/⟩
       is  available.   If the iinnffoo and ggrreepp programs are properly in‐
       stalled at your site, the command

              iinnffoo ggrreepp

       should give you access to the complete manual.

GNU grep 3.7                  2019-12-29                       GREP(1)
