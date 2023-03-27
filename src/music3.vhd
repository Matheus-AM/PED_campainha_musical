library IEEE;
library work;
use IEEE.STD_LOGIC_1164.ALL;
use work.notes.all;

package music3 is
    -- Max count of sound elemnts in the sequence
    constant sound_index_max : integer:=98;  
    -- Type sound
    type tsound is array(0 to sound_index_max) of tnote;
    -- Sequ�ncia musical
    -- Mo inicio e final da sequ�ncia colocar um silencio
    constant music_sequence: tsound :=( nSC,
                                        nG6,
                                        nD6,
                                        nD7,
                                        nD6,
                                        nC7,
                                        nD6,
                                        nAs6,
                                        nD6,
                                        nA6,
                                        nD6,
                                        nAs6,
                                        nD6,
                                        nA6,
                                        nD6,
                                        nG6,
                                        nD6,
                                        nA6,
                                        nD6,
                                        nAs6,
                                        nD6,
                                        nC6,
                                        nD6,
                                        nAs6,
                                        nD6,
                                        nA6,
                                        nD6,
                                        nF6,
                                        nD6,
                                        nA6,
                                        nD6,
                                        nG6,
                                        nD6,
                                        nG6,
                                        nD6,
                                        nD7,
                                        nD6,
                                        nC7,
                                        nD6,
                                        nAs6,
                                        nD6,
                                        nA6,
                                        nD6,
                                        nAs6,
                                        nD6,
                                        nA6,
                                        nD6,
                                        nG6,
                                        nD6,
                                        nA6,
                                        nD6,
                                        nAs6,
                                        nD6,
                                        nC6,
                                        nD6,
                                        nAs6,
                                        nD6,
                                        nA6,
                                        nD6,
                                        nF6,
                                        nD6,
                                        nA6,
                                        nD6,
                                        nG6,
                                        nD6,                                              
                                        nG6,
                                        nD6,
                                        nD7,
                                        nD6,
                                        nC7,
                                        nD6,
                                        nAs6,
                                        nD6,
                                        nA6,
                                        nD6,
                                        nAs6,
                                        nD6,
                                        nA6,
                                        nD6,
                                        nG6,
                                        nD6,
                                        nA6,
                                        nD6,
                                        nAs6,
                                        nD6,
                                        nC6,
                                        nD6,
                                        nAs6,
                                        nD6,
                                        nA6,
                                        nD6,
                                        nF6,
                                        nD6,
                                        nA6,
                                        nD6,
                                        nG6,
                                        nD6,
                                        nG6,
                                        nSC
                              );                    
end music3;