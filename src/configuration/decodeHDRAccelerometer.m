function hdr = decodeHDRAccelerometer(code)


switch code

    case 0
        hdr.fullScale = 100;
        hdr.sensitivity = 49;

    case 16
        hdr.fullScale = 200;
        hdr.sensitivity = 98;

    case 48
        hdr.fullScale = 400;
        hdr.sensitivity = 195;

    otherwise
        error("Invalid HDR accelerometer code")

end


hdr.code = code;
hdr.unit = "g";

end