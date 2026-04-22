package 'cryp-interface' {
 private import 'cryp-functions'::*;
 interface def CryptoOps {
        end encrypt : 'cryp-functions'::Encrypt;
        end sign    : CryptoFunctions::Sign;
        end random  : CryptoFunctions::Random;
    }
}
