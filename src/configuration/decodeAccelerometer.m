function acc = decodeAccelerometer(code)


switch code

    case 0
        acc.fullScale = 4;
        acc.sensitivity = 0.122;

    case 4
        acc.fullScale = 32;
        acc.sensitivity = 0.976;

    case 8
        acc.fullScale = 8;
        acc.sensitivity = 0.244;

    case 12
        acc.fullScale = 16;
        acc.sensitivity = 0.488;

    otherwise
        error("Invalid accelerometer code")

end


acc.code = code;
acc.unit = "g";

end