function cmd = disconnectUSB(cmd)
%DISCONNECTUSB Release USB serial connection.

if isempty(cmd)
    return
end

port = cmd.Port;

flush(cmd);

cmd = [];

fprintf("USB connection closed: %s\n", port);

end