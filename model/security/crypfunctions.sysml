package 'cryp-functions' {
  item def Security;
  item def Credential;
  item def Identity;

    action def Encrypt {
        in  plain  : ByteStream;
        in  key    : KeyMaterial;
        out cipher : ByteStream;
    }

    action def Sign {
        in  message : ByteStream;
        in  key     : KeyMaterial;
        out signature : ByteStream;
    }

    action def Random {
        out randomValue : ByteStream;
    }
}