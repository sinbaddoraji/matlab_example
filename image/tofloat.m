function [ out, revertclass ] = tofloat( in)
%TOFLOAT Convert image to floating point
%   [OUT, REVERTCLASS] = TOFLOAT(IN) converts the input image IN to 
%   floating-point. If IN is single/double, OUT = IN. Otherwise, 
%   OUT equals IM2SINGLE(IN). REVERTCLASS is the function handle 
%   that can be used to convert the OUT back to the class of IN.

identity = @(x) x;
tosingle = @im2single;

lut = {
    'uint8', tosingle, @im2uint8
    'uint16', tosingle, @im2uint16
    'logical', tosingle, @logical
    'double', identity, identity
    'single', identity, identity};

classIdx = find(strcmp(class(in), lut(:,1)));

if isempty(classIdx)
    error('Unsupported input image class.');
end

out = lut{classIdx, 2}(in);
revertclass = lut{classIdx, 3};

end

