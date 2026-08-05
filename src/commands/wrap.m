%wrap = @(bytes) uint8([0x3F, 0x21, bytes, 0x21, 0x3F]);
function packet = wrap(payload)
%WRAP Encapsulate a payload into a USB packet.
%
% INPUT
%   payload - Command payload as a uint8 vector.
%
% OUTPUT
%   packet - USB packet with header and trailer.
%
% Packet format:
%   [HEADER1 HEADER2 PAYLOAD TRAILER1 TRAILER2]
%
% Example
%   packet = wrap(uint8([192 0]));

arguments
    payload (1,:) uint8
end

HEADER = uint8([hex2dec('3F') hex2dec('21')]);
TRAILER = uint8([hex2dec('21') hex2dec('3F')]);

packet = [HEADER payload TRAILER];

end
