function [ g ] = gscale( f, varargin )
%GSCALE Scales the intensity of the input image.
%   G = GSCALE(F, 'full8') scales the intensities of F to [0,255], default.
%  
%   G = GSCALE(F, 'full16') scales f to 16b [0, 65535]
% 
%   G = GSCALE(F, 'minmax', LOW, HIGH) scales the intensities of F to the
%   range [LOW, HIGH]. These values must be provided and within [0, 1],
%   independently of the class of the input. 
% 
%   The class of the output is the same as the calss of the input.
%   Reference: DIPUM

if isempty(varargin)
    method = 'full8';
else
    method = varargin{1};
end

% check 'minmax'
if strcmp(method, 'minmax') && length(varargin) ~= 3
    error('Method minmax requires LOW and HIGH parameters');
end

% perform the specified scaling.

switch method
    case 'full8'
        g = im2uint8(mat2gray(double(f)));
    case 'full16'
        g = im2uint16(mat2gray(double(f)));
    case 'minmax'
        low = varargin{2}; high = varargin{3};
        if low > 1 || low < 0 || high > 1 || high < 0
            error('Parameters low and high must be in the range [0, 1].');
        end
        f_gray = mat2gray(f);        
        low_in = min(f_gray(:));
        high_in = max(f_gray(:));
        
        % imadjust automatically matches the class of the input
        g = imadjust(f, [low_in, high_in], [low, high]);        
    otherwise
        error('Unknown method.');
end



end

