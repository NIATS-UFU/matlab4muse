function cmd = connectUSB(port, baudRate)
%CONNECTUSB Connect to the device over USB.
%
% INPUT
%   port     - Serial port (e.g., "COM3")
%   baudRate - Communication baud rate
%
% OUTPUT
%   cmd      - serialport object

arguments
    port string
    baudRate (1,1) double = 115200
end

fprintf("Connecting to %s...\n", port);

cmd = serialport(port, baudRate);

configureTerminator(cmd,"LF");

flush(cmd);

fprintf("Connection established.\n");

end