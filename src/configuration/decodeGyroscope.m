function gyro = decodeGyroscope(code)

switch code

    case 0
        gyro.fullScale = 245;
        gyro.sensitivity = 0.00875;

    case 1
        gyro.fullScale = 500;
        gyro.sensitivity = 0.01750;

    case 2
        gyro.fullScale = 1000;
        gyro.sensitivity = 0.03500;

    case 3
        gyro.fullScale = 2000;
        gyro.sensitivity = 0.07000;

    otherwise
        error("Invalid gyroscope code")

end


gyro.code = code;
gyro.unit = "dps";


end