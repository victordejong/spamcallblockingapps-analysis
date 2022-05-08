package org.spongycastle.crypto.p026ec;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.math.p032ec.ECConstants;
/* renamed from: org.spongycastle.crypto.ec.ECUtil */
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/ec/ECUtil.class */
class ECUtil {
    ECUtil() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BigInteger generateK(BigInteger bigInteger, SecureRandom secureRandom) {
        int bitLength = bigInteger.bitLength();
        while (true) {
            BigInteger bigInteger2 = new BigInteger(bitLength, secureRandom);
            if (!bigInteger2.equals(ECConstants.ZERO) && bigInteger2.compareTo(bigInteger) < 0) {
                return bigInteger2;
            }
        }
    }
}
