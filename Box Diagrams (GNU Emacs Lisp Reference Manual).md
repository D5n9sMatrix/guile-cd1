<!DOCTYPE html>
<!-- saved from url=(0075)https://www.gnu.org/software/emacs/manual/html_node/elisp/Box-Diagrams.html -->
<html><!-- Created by GNU Texinfo 7.0.3, https://www.gnu.org/software/texinfo/ --><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Box Diagrams (GNU Emacs Lisp Reference Manual)</title>

<meta name="description" content="Box Diagrams (GNU Emacs Lisp Reference Manual)">
<meta name="keywords" content="Box Diagrams (GNU Emacs Lisp Reference Manual)">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="Generator" content="makeinfo">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link rev="made" href="mailto:bug-gnu-emacs@gnu.org">
<link rel="icon" type="image/png" href="https://www.gnu.org/graphics/gnu-head-mini.png">
<meta name="ICBM" content="42.256233,-71.006581">
<meta name="DC.title" content="gnu.org">
<style type="text/css">
@import url('/software/emacs/manual.css');
</style>
</head>

<body lang="en">
<div class="subsubsection-level-extent" id="Box-Diagrams">
<div class="nav-panel">
<p>
Next: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Dotted-Pair-Notation.html" accesskey="n" rel="next">Dotted Pair Notation</a>, Up: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Cons-Cell-Type.html" accesskey="u" rel="up">Cons Cell and List Types</a> &nbsp; [<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/index.html#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Index.html" title="Index" rel="index">Index</a>]</p>
</div>
<hr>
<h4 class="subsubsection" id="Drawing-Lists-as-Box-Diagrams">2.4.6.1 Drawing Lists as Box Diagrams</h4>
<a class="index-entry-id" id="index-box-diagrams_002c-for-lists"></a>
<a class="index-entry-id" id="index-diagrams_002c-boxed_002c-for-lists"></a>

<p>A list can be illustrated by a diagram in which the cons cells are
shown as pairs of boxes, like dominoes.  (The Lisp reader cannot read
such an illustration; unlike the textual notation, which can be
understood by both humans and computers, the box illustrations can be
understood only by humans.)  This picture represents the three-element
list <code class="code">(rose violet buttercup)</code>:
</p>
<div class="example">
<div class="group"><pre class="example-preformatted">    --- ---      --- ---      --- ---
   |   |   |--&gt; |   |   |--&gt; |   |   |--&gt; nil
    --- ---      --- ---      --- ---
     |            |            |
     |            |            |
      --&gt; rose     --&gt; violet   --&gt; buttercup
</pre></div></div>

<p>In this diagram, each box represents a slot that can hold or refer to
any Lisp object.  Each pair of boxes represents a cons cell.  Each arrow
represents a reference to a Lisp object, either an atom or another cons
cell.
</p>
<p>In this example, the first box, which holds the <small class="sc">CAR</small> of the first
cons cell, refers to or holds <code class="code">rose</code> (a symbol).  The second
box, holding the <small class="sc">CDR</small> of the first cons cell, refers to the next
pair of boxes, the second cons cell.  The <small class="sc">CAR</small> of the second cons
cell is <code class="code">violet</code>, and its <small class="sc">CDR</small> is the third cons cell.  The
<small class="sc">CDR</small> of the third (and last) cons cell is <code class="code">nil</code>.
</p>
<p>Here is another diagram of the same list, <code class="code">(rose violet
buttercup)</code>, sketched in a different manner:
</p>
<div class="example smallexample">
<div class="group"><pre class="example-preformatted"> ---------------       ----------------       -------------------
| car   | cdr   |     | car    | cdr   |     | car       | cdr   |
| rose  |   o--------&gt;| violet |   o--------&gt;| buttercup |  nil  |
|       |       |     |        |       |     |           |       |
 ---------------       ----------------       -------------------
</pre></div></div>

<a class="index-entry-id" id="index-nil-as-a-list"></a>
<a class="index-entry-id" id="index-empty-list"></a>
<p>A list with no elements in it is the <em class="dfn">empty list</em>; it is identical
to the symbol <code class="code">nil</code>.  In other words, <code class="code">nil</code> is both a symbol
and a list.
</p>
<p>Here is the list <code class="code">(A ())</code>, or equivalently <code class="code">(A nil)</code>,
depicted with boxes and arrows:
</p>
<div class="example">
<div class="group"><pre class="example-preformatted">    --- ---      --- ---
   |   |   |--&gt; |   |   |--&gt; nil
    --- ---      --- ---
     |            |
     |            |
      --&gt; A        --&gt; nil
</pre></div></div>

<p>Here is a more complex illustration, showing the three-element list,
<code class="code">((pine needles) oak maple)</code>, the first element of which is a
two-element list:
</p>
<div class="example">
<div class="group"><pre class="example-preformatted">    --- ---      --- ---      --- ---
   |   |   |--&gt; |   |   |--&gt; |   |   |--&gt; nil
    --- ---      --- ---      --- ---
     |            |            |
     |            |            |
     |             --&gt; oak      --&gt; maple
     |
     |     --- ---      --- ---
      --&gt; |   |   |--&gt; |   |   |--&gt; nil
           --- ---      --- ---
            |            |
            |            |
             --&gt; pine     --&gt; needles
</pre></div></div>

<p>The same list represented in the second box notation looks like this:
</p>
<div class="example">
<div class="group"><pre class="example-preformatted"> --------------       --------------       --------------
| car   | cdr  |     | car   | cdr  |     | car   | cdr  |
|   o   |   o-------&gt;| oak   |   o-------&gt;| maple |  nil |
|   |   |      |     |       |      |     |       |      |
 -- | ---------       --------------       --------------
    |
    |
    |        --------------       ----------------
    |       | car   | cdr  |     | car     | cdr  |
     ------&gt;| pine  |   o-------&gt;| needles |  nil |
            |       |      |     |         |      |
             --------------       ----------------
</pre></div></div>

</div>
<hr>
<div class="nav-panel">
<p>
Next: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Dotted-Pair-Notation.html">Dotted Pair Notation</a>, Up: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Cons-Cell-Type.html">Cons Cell and List Types</a> &nbsp; [<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/index.html#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Index.html" title="Index" rel="index">Index</a>]</p>
</div>





</body></html>