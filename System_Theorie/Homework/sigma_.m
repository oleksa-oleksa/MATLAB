function y = sigma_(u_) 
if ~isvector(u_)
    error('Input must be a vector')
end
len = size(u_);
y = 1 : len(2);
for i = 1 : len(2)
    if (u_(i) < 0)
        y(i) = 0;
    else
        y(i) = 1;
    end
end
end