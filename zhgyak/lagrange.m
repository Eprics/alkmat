function lagrange()
x = [];
y = [];
while 1
    xy = input("pont x,y:","s");
    if (isempty(xy))
        break
    end
    nums = split(xy,',');
    disp(nums);
    x(end+1)=str2double(nums(1));
    y(end+1)=str2double(nums(2));
end
y=y';
n=length(x);
for i=1:n
  for j=1:n
    V(i,j)=x(i)^(j-1);
  end
end
    disp('A Vandermonde mátrix:')
    disp(V)
    a=V\y;
    disp('A polinom együtthatói:')
    disp(a)
end
