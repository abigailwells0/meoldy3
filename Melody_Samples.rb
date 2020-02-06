# Stranger Things
st_notes = [:c3, :e3, :g3, :b3, :c4, :b3, :e3, :c3]
index = 0

use_synth :chipbass
live_loop :main do
  with_fx :distortion do
    play st_notes[index]
    index = index + 1
    sleep 0.25
    if index == 7
      index = 0
    end
    print index
  end
end

use_synth :chiplead
live_loop :back do
  play :C1
  play :C2
  sleep 4
  play :E1
  play :E2
  sleep 4
  play :C1
  play :C2
  sleep 4
  play :D1
  play :D2
  sleep 0.5
  play :E1
  play :E2
  sleep 4
  play :D1
  play :D2
  sleep 0.5
  play :C1
  play :C2
  sleep 4
  play :D1
  play :D2
  sleep 0.5
  play :C1
  play :C2
  sleep 0.5
  play :B
  play :B1
  sleep 4
end