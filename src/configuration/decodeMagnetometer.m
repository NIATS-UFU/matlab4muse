function mag = decodeMagnetometer(code)


switch code

    case 0
        mag.fullScale = 4;
        mag.sensitivity = 1000/6842;

    case 64
        mag.fullScale = 8;
        mag.sensitivity = 1000/3421;

    case 128
        mag.fullScale = 12;
        mag.sensitivity = 1000/2281;

    case 192
        mag.fullScale = 16;
        mag.sensitivity = 1000/1711;

    otherwise
        error("Invalid magnetometer code")

end


mag.code = code;
mag.unit = "Gauss";

end