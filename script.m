clear all
close all

name = '1213';
[skeleton,time] = loadbvh(name);
Njoints = numel(skeleton);
max_frame=skeleton(54).Nframes
buf=zeros(600,166)
for i=1:max_frame
    %%left_arm
    buf(11+i,1)=i/30;
    M=skeleton(54).rxyz(1,i)-skeleton(54).rxyz(1,1805)
    %%M=skeleton(54).rxyz(1,i)-skeleton(54).rxyz(1,1)
    buf(11+i,150)=M
    M=skeleton(54).rxyz(2,i)-skeleton(54).rxyz(2,1819)
    buf(11+i,151)=-M
    M=skeleton(54).rxyz(3,i)+skeleton(50).rxyz(3,i)-skeleton(54).rxyz(3,1819)-skeleton(50).rxyz(3,1819)
    buf(11+i,152)=M
    %%M=skeleton(55).rxyz(1,i)+skeleton(55).rxyz(3,i)-skeleton(55).rxyz(3,1)-skeleton(55).rxyz(3,1)
    M=skeleton(55).rxyz(1,i)-skeleton(55).rxyz(1,1819)
    buf(11+i,153)=-M
    M=-skeleton(55).rxyz(2,i)+skeleton(55).rxyz(2,1819)
    %%M=-skeleton(55).rxyz(1,i)+skeleton(55).rxyz(1,1)
    buf(11+i,154)=M

    %%right_arm
    M=skeleton(140).rxyz(1,i)-skeleton(140).rxyz(1,1)
    buf(11+i,143)=M
    M=skeleton(140).rxyz(2,i)-skeleton(140).rxyz(2,1)
    buf(11+i,144)=-M
    M=skeleton(140).rxyz(3,i)-(90+skeleton(133).rxyz(3,i))-skeleton(140).rxyz(3,1)+(90+skeleton(133).rxyz(3,1))
    buf(11+i,145)=M
    M=skeleton(141).rxyz(1,i)+skeleton(141).rxyz(3,i)-skeleton(141).rxyz(3,1)-skeleton(141).rxyz(3,1)
    buf(11+i,146)=-M
    M=skeleton(141).rxyz(2,i)-skeleton(141).rxyz(2,1)
    buf(11+i,147)=M

    %%right_leg
    M=skeleton(250).rxyz(1,i)-skeleton(250).rxyz(1,1)
    buf(11+i,157)=M
    M=skeleton(250).rxyz(3,i)-skeleton(250).rxyz(3,1)
    buf(11+i,159)=-M

    %%left_leg
    M=skeleton(323).rxyz(1,i)-skeleton(323).rxyz(1,1)
    buf(11+i,162)=M
    M=skeleton(323).rxyz(3,i)-skeleton(323).rxyz(3,1)
    buf(11+i,164)=M


    %%right_knee
    M=skeleton(351).rxyz(1,i)-skeleton(351).rxyz(1,1)
    buf(11+i,160)=M

    %%left_knee
    M=skeleton(324).rxyz(1,i)-skeleton(324).rxyz(1,1)
    buf(11+i,165)=M
    %%plevis
    M=skeleton(18).rxyz(1,i)-skeleton(18).rxyz(1,1)
    buf(11+i,2)=M
end