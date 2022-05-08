package org.spongycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.params.DHParameters;
import org.spongycastle.math.p032ec.WNafUtil;
import org.spongycastle.util.BigIntegers;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/generators/DHKeyGeneratorHelper.class */
class DHKeyGeneratorHelper {
    static final DHKeyGeneratorHelper INSTANCE = new DHKeyGeneratorHelper();
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private static final BigInteger TWO = BigInteger.valueOf(2);

    private DHKeyGeneratorHelper() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BigInteger calculatePrivate(DHParameters dHParameters, SecureRandom secureRandom) {
        BigInteger createRandomInRange;
        BigInteger bit;
        int l = dHParameters.getL();
        if (l != 0) {
            do {
                bit = new BigInteger(l, secureRandom).setBit(l - 1);
            } while (WNafUtil.getNafWeight(bit) < (l >>> 2));
            return bit;
        }
        BigInteger bigInteger = TWO;
        int m = dHParameters.getM();
        if (m != 0) {
            bigInteger = ONE.shiftLeft(m - 1);
        }
        BigInteger q = dHParameters.getQ();
        BigInteger bigInteger2 = q;
        if (q == null) {
            bigInteger2 = dHParameters.getP();
        }
        BigInteger subtract = bigInteger2.subtract(TWO);
        int bitLength = subtract.bitLength();
        do {
            createRandomInRange = BigIntegers.createRandomInRange(bigInteger, subtract, secureRandom);
        } while (WNafUtil.getNafWeight(createRandomInRange) < (bitLength >>> 2));
        return createRandomInRange;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BigInteger calculatePublic(DHParameters dHParameters, BigInteger bigInteger) {
        return dHParameters.getG().modPow(bigInteger, dHParameters.getP());
    }
}
