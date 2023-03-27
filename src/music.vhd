----------------------------------------------------------------------------------
-- Company: UnB
-- Engineer: Guillermo Alvarez Bestard
-- 
-- Create Date: 24.05.2018 23:57:41
-- Design Name: Sequência musical
-- Module Name: music - packed
-- Project Name: campainha musical
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.notes.all;

package music is
    -- Max count of sound elemnts in the sequence
    constant sound_index_max : integer:=15;  
    -- Type sound
    type tsound is array(0 to sound_index_max) of tnote;
    -- Sequência musical
    -- Mo inicio e final da sequência colocar um silencio
    constant music_sequence: tsound :=(  nSC,
                                         nC1,
                                         nD1,
                                         nE1,
                                         nF1,
                                         nG1,
                                         nA1,
                                         nB1,
                                         nC2,
                                         nD2,
                                         nE2,
                                         nF2,
                                         nG2,
                                         nA2,
                                         nB2,
                                         nSC                                
                              );                    
end music;
