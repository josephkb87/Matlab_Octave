How-to-Distinguish-Between-Octave-and-Matlab.html

How to Distinguish Between Octave and Matlab 
Octave and MATLAB are very similar, but handle Java slightly different. Therefore it may be necessary to detect the environment and use the appropriate functions. 

The following function can be used to detect the environment. Due to the persistent variable it can be called repeatedly without a heavy performance hit. 

Example: 
%%
%% Return: true if the environment is Octave.
%%
function retval = isOctave
  persistent cacheval;  % speeds up repeated calls

  if isempty (cacheval)
    cacheval = (exist ("OCTAVE_VERSION", "builtin") > 0);
  end

  retval = cacheval;
end

