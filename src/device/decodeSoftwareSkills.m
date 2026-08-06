function sw = decodeSoftwareSkills(mask)

sw.MPE = logical(bitand(mask,hex2dec('0001')));

sw.MAD = logical(bitand(mask,hex2dec('0010')));

end