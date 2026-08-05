function ports = listSerialPorts()
%LISTSERIALPORTS List available serial ports.
%
% OUTPUT
%   ports - String array containing the available serial ports.
%
% EXAMPLE
%   ports = listSerialPorts();

ports = serialportlist("available");

if isempty(ports)
    warning("No serial ports were found.");
    return
end

fprintf("Available serial ports:\n");

for k = 1:numel(ports)
    fprintf("  [%d] %s\n", k, ports(k));
end

fprintf("\n");

end