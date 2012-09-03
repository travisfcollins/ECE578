%affine decoder
%fid=fopen('R:\git~1\ECE578\hw1.txt');
fid=fopen('~/Git/ECE578/hw1.txt');
txt=fread(fid);
%remove beginning txt
txt=txt(298:1968);

%F=a*m+b
%FOUND: a=7,b=13
%a=1:2:15;

txt_saved=txt;
for a=1:2:26
for b=0:25
    txt=txt_saved;
    for i=1:length(txt) 
        if (txt(i)>=65 && txt(i)<=65+25)
            %remove bias
            temp=txt(i);
            temp=temp-65;
            [~,a_i,~]=gcd(a,26);
            a_i=mod(a_i,26);
            temp=mod(round(a_i*(temp-b)),26);
            txt(i)=round(temp)+65;
        elseif(txt(i)>=97 && txt(i)<=97+25)
            %remove bias
            temp=txt(i);
            temp=temp-97;
            [~,a_i,~]=gcd(a,26);
            a_i=mod(a_i,26);
            temp=mod(round(a_i*(temp-b)),26);
            txt(i)=round(temp)+97;
        end       
    end
    %Look at sample output
    char(txt(1:30))'
    b
    a
    pause
end
end

break
%converted txt
for a=7
for b=13
    txt=txt_saved;
    for i=1:length(txt) 
        if (txt(i)>=65 && txt(i)<=65+25)
            %remove bias
            temp=txt(i);
            temp=temp-65;
            [~,a_i,~]=gcd(a,26);
            a_i=mod(a_i,26);
            temp=mod(round(a_i*(temp-b)),26);
            txt(i)=round(temp)+65;
        elseif(txt(i)>=97 && txt(i)<=97+25)
            %remove bias
            temp=txt(i);
            temp=temp-97;
            [~,a_i,~]=gcd(a,26);
            a_i=mod(a_i,26);
            temp=mod(round(a_i*(temp-b)),26);
            txt(i)=round(temp)+97;
        end       
    end
    
end
end

txt_file=char(txt);
%save to file
fid2 = fopen('~/Git/ECE578/hw1_p1.txt','w');
fprintf(fid2,txt_file);

