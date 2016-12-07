[x, fs, bits] = wavread('dev1__bearlin-roads__snip_85_99__snare.wav');
X = spectrogram(x(:,1), hanning(4096), 4096-441);
subplot(3,1,1);
imagesc(flipud(log(abs(X(1:ceil(8000/44100*2048),:)))));

[x, fs, bits] = wavread('dev1__bearlin-roads__snip_85_99__piano.wav');
X = spectrogram(x(:,1), hanning(4096), 4096-441);
subplot(3,1,2);
imagesc(flipud(log(abs(X(1:ceil(8000/44100*2048),:)))));

[x, fs, bits] = wavread('dev1__bearlin-roads__snip_85_99__vocals.wav');
X = spectrogram(x(:,1), hanning(4096), 4096-441);
subplot(3,1,3);
imagesc(flipud(log(abs(X(1:ceil(8000/44100*2048),:)))));
