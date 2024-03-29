  %%Experiment _1 varification of Sampling Theorem

clc;
close all;
clear all;

t=0:0.01:0.2;

f=input('Enter analog Signal Frequency=');
fu=input('Enter the frequncy fu<=2f is=');
fn=input('Enter the frequncy fn>=2f is =');
fo=input('Enter the frequncy fo>>2f is=');

%% Generation Signal
A= sin(2*pi*f*t);
subplot(3,2,1);
plot(t,A);
xlabel('Time');ylabel('Amplitude');
title('Analog Signal');

  %% Under Sampling
  tu=0: (1/fu):0.2;
  u=sin(2*pi*f*tu); 
  subplot(3,2,2);
  plot(tu,u,'*');
  xlabel('Time');ylabel('Amplitude');
  title('UnderSampling Signal');
  
  % Nyquest Condition
  tn=0: (1/fn):0.2;
  n=sin(2*pi*f*tn);
  subplot(3,2,3); 
  plot(tn,n,'x');
  xlabel('Time');ylabel('Amplitude');
  title('Nyquest');
  
  %% Over Sampling
  
  to=0: (1/fo):0.2;
  u=sin(2*pi*f*to); 
  subplot(3,2,4);
  plot (to, u,'o');
  xlabel('Time');ylabel('Amplitude');
  title('OverSampling Signal');
  