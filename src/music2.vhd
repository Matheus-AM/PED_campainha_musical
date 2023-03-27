library IEEE;
library work;
use IEEE.STD_LOGIC_1164.ALL;
use work.notes.all;

package music is
    -- Max count of sound elemnts in the sequence
    constant sound_index_max : integer:=42;  
    -- Type sound
    type tsound is array(0 to sound_index_max) of tnote;
    -- Sequência musical
    -- Mo inicio e final da sequência colocar um silencio
    constant music_sequence: tsound :=(  nSC,
                                         nD6,
                                         nF6,
                                         nD7,
                                         nD7,
                                         nSC,
                                         nD6,
                                         nF6,
                                         nD7,
                                         nD7,
                                         nSC,
                                         nSC,
                                         nE7,
                                         nE7,
                                         nSC,
                                         nF7,
                                         nE7,
                                         nF7,
                                         nE7,
                                         nC7,
                                         nA6,
                                         nSC,
                                         nSC,
                                         nA6,
                                         nA6,
                                         nD6,
                                         nD6,
                                         nF6,
                                         nC6,
                                         nA6,
                                         nA6,
                                         nSC,
                                         nSC,
                                         nA6,
                                         nA6,
                                         nD6,
                                         nD6,
                                         nF6,
                                         nC6,
                                         nE6,
                                         nE6,
                                         nE6,
                                         nSC                                
                              );                    
end music;