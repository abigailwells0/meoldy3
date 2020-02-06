# Welcome to Sonic Pi v3.1
use_bpm 158
use_synth :piano
intro ="C:/Users/abigail_wells/Documents/Audacity/BTS speech at the United Nations UNICEF.wav"
vocals ="C:/Users/abigail_wells/Documents/Audacity/BTS.wav"
ending = "C:/Users/abigail_wells/Documents/Audacity/i_need_u.wav"
n = [:C5, :Ab4, :F4]
n2 = [:G4,:Eb4, :Bb4]
n3 = [:Ab4,:F4, :Db4]
a=0
sample intro, amp: 2
sleep 50
live_loop :low do
  4.times do
    play n[a], sustain: 3
    a=a+1
    play n[a], sustain: 3
    a=a+1
    play n[a], sustain: 3
    sleep 4
    a=0
    play n2[a], sustain:  3
    a=a+1
    play n2[a], sustain:  3
    a=a+1
    play n2[a], sustain:  3
    sleep 4
    a=0
    play n3[a], sustain: 5
    a=a+1
    play n3[a], sustain: 5
    a=a+1
    play n3[a], sustain: 5
    sleep 8
    a=0
  end
  stop
end
sleep 16

live_loop :hi do
  3.times do
    sleep 2
    play :Bb5
    sleep 0.5
    play :C6
    sleep 0.5
    play :Eb6
    sleep 0.5
    play :C6
    sleep 2.5
    play :C6
    sleep 0.5
    play :Bb5
    sleep 0.5
    play :Ab5
    sleep 0.5
    play :F5
    sleep 1.5
    play :Ab5, sustain: 1.5
    sleep 1
    play :Bb5
    sleep 0.5
    play :Eb6
    sleep 1
    play :C6, sustain: 1.5
    sleep 1
    play :C6
    sleep 0.5
    play :C6, sustain: 1.5
    sleep 1
    play :F6
    sleep 0.5
    play :Eb6, sustain: 1.5
    sleep 1
    play :C6
    sleep 0.5
  end
  x=1
  2.times do
    sleep 2
    play :Bb5, amp: x
    x=x-0.02941176
    sleep 0.5
    play :C6, amp: x
    x=x-0.02941176
    sleep 0.5
    play :Eb6, amp: x
    x=x-0.02941176
    sleep 0.5
    play :C6, amp: x
    x=x-0.02941176
    sleep 2.5
    play :C6, amp: x
    x=x-0.02941176
    sleep 0.5
    play :Bb5, amp: x
    x=x-0.02941176
    sleep 0.5
    play :Ab5, amp: x
    x=x-0.02941176
    sleep 0.5
    play :F5, amp: x
    x=x-0.02941176
    sleep 1.5
    play :Ab5, sustain: 1.5, amp: x
    x=x-0.02941176
    sleep 1
    play :Bb5, amp: x
    x=x-0.02941176
    sleep 0.5
    play :Eb6, amp: x
    x=x-0.02941176
    sleep 1
    play :C6, sustain: 1.5, amp: x
    x=x-0.02941176
    sleep 1
    play :C6, amp: x
    x=x-0.02941176
    sleep 0.5
    play :C6, sustain: 1.5, amp: x
    x=x-0.02941176
    sleep 1
    play :F6, amp: x
    x=x-0.02941176
    sleep 0.5
    play :Eb6, sustain: 1.5, amp: x
    x=x-0.02941176
    sleep 1
    play :C6, amp: x
    x=x-0.02941176
    sleep 0.5
  end
  stop
end
sleep 14.25
live_loop :vocals do
  sample vocals, release: 0.5
  sleep 32
  stop
end
sleep 59.02
live_loop :ending do
  sample ending, release: 0.5, amp: 0.5
  sleep 3
  stop
end

