function res = expandRowVector(rNumber,cNumber,rowV)
	resT=zeros(cNumber,rNumber);
	r=(linspace(0,rNumber-1,rNumber))';
	resT(r*cNumber+rowV)=1;
	res=resT';
end

