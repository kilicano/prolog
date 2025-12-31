


% Note : Extra credit problem 9)* refers to this program.

% Graph search  (from the Bratko fourth edition)
% A directed graph consists of a set of points (vertices, nodes)
% and a number of arrows (arcs, edges) between them.
% Given such a graph an obvious question is
% Is there a path from point a to b.
% Can Prolog help? How could we represent a directed graph?
% This is a "monkey" without the natural intelligence (??)

arc(a,b).   % So, this says there is an arc from node
arc(a,c).   % a to node b and from b to d, etc...
arc(b,d).
arc(c,d).
arc(c,f).
arc(d,e).
arc(d,f).
arc(f,a).

/* Assuming that the nodes are placed as follows, draw arrows
 *  to indicate the arcs.
 *
 *               a
 *
 *	     b       c
 *
 *	         d        f
 *
 *	       e

 */


path(N,N).
path(Start,End) :- arc(Start,Next), path(Next,End).

ppath(Node,Node,[Node]).
ppath(Start,End,[Start|Path]) :- arc(Start,Next),ppath(Next,End,Path).

% alternatively, you can randomize:
rppath(Node,Node,[Node]).
rppath(Start,End,[Start|Path]) :- arc(Start,Next), write('-'),random(2)<1,
	                           write('^'),write(Next),
				   rppath(Next,End,Path).
rppath(Start,End,[Start|Path]) :- arc(Start,Next),      % Why this clause?
	                           write('_'),write(Next),
				   rppath(Next,End,Path).

% Does the program find (paths to) all nodes in the
% graph (as we would like)?
%
% Prolog searches the graph 'depth-first' (after going from a to b
% it will not consider going 'wide' to c, but continue 'down' the graph.
% (of course, the move from f to a is also a 'down' move.
% You can visualize the search by drawing a tree with a at the root
% and the nodes pointed at from a on the next level, and so on.
% If you always draw b left of c you see that you go down the leftmost
% path in the tree.
%
% Now, you could check for repetitions in the path, but even simpler
% is to limit the length of the path and force prolog to find all paths
% of length 1, then length 2, 3, and so on, and thus force it into
% 'breadth first' search.
%
% This can be done using append like so:
%   ?- append(P,_,_), ppath(a,c,P).
% Perhaps more intuitive is using length/2
% (which happens to behave just right: It creates longer and longer
% lists on backtracking)
%   ?- length(Path,L),ppath(a,End,Path).
%
