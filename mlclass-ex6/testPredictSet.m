function [] = testPredictSet()
	C_list = [ 0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30 ];
	sigma_list = [ 0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30 ];

	for( i = 1:size(C_list) )
		for( j = 1: size(sigma_list) )
			disp(mean(double( svmPredict(svmTrain(X,y,C_list(i),@(x1,x2) gaussianKernel(x1,x2,sigma_list(j))), Xval)~= yval)))
		end
	end
end