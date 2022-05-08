package org.spongycastle.pqc.math.linearalgebra;

import java.security.SecureRandom;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/math/linearalgebra/RandUtils.class */
public class RandUtils {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int nextInt(SecureRandom secureRandom, int i) {
        int nextInt;
        int i2;
        if (((-i) & i) == i) {
            return (int) ((i * (secureRandom.nextInt() >>> 1)) >> 31);
        }
        do {
            nextInt = secureRandom.nextInt() >>> 1;
            i2 = nextInt % i;
        } while ((nextInt - i2) + (i - 1) < 0);
        return i2;
    }
}
