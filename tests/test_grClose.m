function test_suite = test_grClose
%TESTGRCLOSE  test suite for function grClose
%
%   output = test_grClose(input)
%
%   Example
%   testGrClose
%
%   See also
%
%
% ------
% Author: David Legland
% e-mail: david.legland@grignon.inra.fr
% Created: 2011-05-18,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2011 INRA - Cepia Software Platform.


test_suite = functiontests(localfunctions); 

function testSimpleGraph(testCase) %#ok<*DEFNU>

[nodes, edges, values] = createTestGraph01(); %#ok<ASGLU>

valClo = grClose(edges, values);
exp = [80;70;70;70;50;50;40;40];
testCase.assertEqual(exp, valClo);

