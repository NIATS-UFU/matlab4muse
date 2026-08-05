function payload = unwrap(packet)
%UNWRAP Remove the USB packet header and trailer.
%
% INPUT
%   packet - USB packet as a uint8 vector.
%
% OUTPUT
%   payload - Packet payload without header and trailer.
%
% EXAMPLE
%   raw = read(cmd, cmd.NumBytesAvailable, "uint8");
%   payload = unwrap(raw);

arguments
    packet (1,:) uint8
end

if numel(packet) < 5
    error("Packet must contain at least 5 bytes.");
end

payload = packet(3:end-2);

end
