#my first sonic pi tasty beat!
#completed on lab day
#need to work out how to do this better but it sounds good and 
#that was what i was after

play_pattern_timed [],  [], release: 0
use_synth :blade
with_fx  :lpf do |rev|
  with_fx :distortion, distort: 0.6 do
   
    sample :bass_trance_c
    5.times do
      sample :bass_hard_c
      play :supersaw , note: chord(:e5, :minor), sustain: 0.06325, release: 0.01
      sleep 0.125
    end
   
    sleep 1
    play :supersaw, note: chord(:b5, :minor), sustain: 0.06325, release: 2
    sample :bass_drop_c
    sample :bd_boom
   
    5.times do
      play :supersaw, note: chord(:e5, :minor), sustain: 0.06325, release: 0.01
      sample :a
      sample :bass_hard_c
      sample :elec_fuzz_tom
      sleep 0.125
    end
    sample :ambi_drone, res: 0.8, wave: 1
    5.times do
      play :supersaw, note: chord(:e5, :minor), sustain: 0.06325, release: 0.01
      sample :bd_boom
      sample :elec_wood, sustain: 1, release: 1
      sample :perc_snap2
      sample :bass_drop_c
      sleep 0.125
    end
    5.times do
      sample :loop_amen
      sleep sample_duration :loop_amen
      sample :perc_impact2 , sustain: 3, release: 3
      play :supersaw , note: chord(:e5, :minor), sustain: 0.06325, release: 0.01
      sample :bass_thick_c
    end
   
    4.times do |i|
      sample :ambi_haunted_hum
      with_fx :reverb, room: 0.65 do
        with_fx :distortion, distort: 0.9, amp: 0.325 do
          sleep sample_duration :loop_amen
          in_thread do
            play :supersaw , note: chord(:e5, :minor), sustain: 0.1, release: 0.01
            play note: e, note_slide: 16, cutoff: 60, cutoff_slide: 4, attack: 2, sustain: 4, release: 0.1
           
          end
        end
      end
    end
    sample :bass_voxy_hit_c, note_slide: 4
    5.times do
     
      sample :loop_amen
      sleep sample_duration :loop_amen
      play :supersaw , note: chord(:e5, :minor), sustain: 0.06325, release: 0.01
      sample :bass_trance_c, release: 3
    end
    5.times do
      sample :loop_amen
      sleep sample_duration :loop_amen
      sample :bass_trance_c
    end
   
    sample :bass_trance_c
    5.times do
      sample :bass_hard_c
      play :supersaw , note: chord(:e5, :minor), sustain: 0.06325, release: 0.01
      sleep 0.125
    end
   
    sleep 1
    play :supersaw, note: chord(:b5, :minor), sustain: 0.06325, release: 2
    sample :bass_drop_c
    sample :bd_boom, sustain: 1
    sleep 1
   
    play :supersaw, note: chord(:b5, :minor), sustain: 0.06325, release: 0.01
    sample :bass_voxy_hit_c
    sample :bd_boom, sustain: 10
    sample :ambi_sauna, beat_stretch: 10
   
    5.times do
      play :supersaw, note: chord(:e5, :minor), sustain: 0.06325, release: 0.01
      play note: chord(:b5, :minor)
      sample :ambi_lunar_land
      sample :elec_fuzz_tom, env_curve: 4
      sleep 0.125
    end
   
    5.times do
      play :supersaw, note: chord(:e5, :minor), sustain: 0.06325, release: 0.01
      sample :bd_boom, onset: 3
      sample :elec_wood, sustain: 1, release: 1
      sample :bass_drop_c, sustain: 5
      sleep 0.125
    end
   
    sample :ambi_dark_woosh
   
    5.times do
      sample :loop_amen
      sleep sample_duration :loop_amen
      sample :perc_impact2 , release: 3
      play :supersaw , note: chord(:e5, :minor), sustain: 0.06325, release: 0.01
      sample :bass_thick_c
    end
   
   
    sample :bass_voxy_hit_c, note_slide: 4
    sample :ambi_lunar_land
   
    5.times do
      sample :bass_trance_c, sustain: 4, release: 10, decay: 1
      with_fx :reverb do
        sample :guit_e_slide, amp: 1.2
        sample :bass_trance_c, note_slide: 16, cutoff: 60, cutoff_slide: 4, attack: 2, sustain: 4, release: 0.1
      end
     
    end
  end
end

