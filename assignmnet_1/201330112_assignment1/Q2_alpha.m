function return_value = Q2_alpha(array, values)
    array=array';
    Q = [];
    for i = 1:length(array) - values
        Q(i,1:values) = array(1,i:i+values-1); %
    end
    P = array(1,values+1:length(array)); %sahi hai
    P = P';
    return_value = (inv(Q' * Q) * (P'* Q)');
end
