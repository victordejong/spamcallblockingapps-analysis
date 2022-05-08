package org.spongycastle.math.p032ec;

import java.math.BigInteger;
/* renamed from: org.spongycastle.math.ec.NafR2LMultiplier */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/NafR2LMultiplier.class */
public class NafR2LMultiplier extends AbstractECMultiplier {
    @Override // org.spongycastle.math.p032ec.AbstractECMultiplier
    protected ECPoint multiplyPositive(ECPoint eCPoint, BigInteger bigInteger) {
        int[] generateCompactNaf = WNafUtil.generateCompactNaf(bigInteger);
        ECPoint infinity = eCPoint.getCurve().getInfinity();
        int i = 0;
        ECPoint eCPoint2 = eCPoint;
        int i2 = 0;
        while (i < generateCompactNaf.length) {
            int i3 = generateCompactNaf[i];
            eCPoint2 = eCPoint2.timesPow2(i2 + (i3 & 65535));
            infinity = infinity.add((i3 >> 16) < 0 ? eCPoint2.negate() : eCPoint2);
            i++;
            i2 = 1;
        }
        return infinity;
    }
}
