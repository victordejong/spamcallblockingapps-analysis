package org.spongycastle.crypto.prng.drbg;

import org.spongycastle.math.p032ec.ECPoint;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/prng/drbg/DualECPoints.class */
public class DualECPoints {
    private final int cofactor;

    /* renamed from: p */
    private final ECPoint f1453p;

    /* renamed from: q */
    private final ECPoint f1454q;
    private final int securityStrength;

    public DualECPoints(int i, ECPoint eCPoint, ECPoint eCPoint2, int i2) {
        if (!eCPoint.getCurve().equals(eCPoint2.getCurve())) {
            throw new IllegalArgumentException("points need to be on the same curve");
        }
        this.securityStrength = i;
        this.f1453p = eCPoint;
        this.f1454q = eCPoint2;
        this.cofactor = i2;
    }

    private static int log2(int i) {
        int i2 = 0;
        int i3 = i;
        while (true) {
            i3 >>= 1;
            if (i3 == 0) {
                return i2;
            }
            i2++;
        }
    }

    public int getCofactor() {
        return this.cofactor;
    }

    public int getMaxOutlen() {
        return ((this.f1453p.getCurve().getFieldSize() - (log2(this.cofactor) + 13)) / 8) * 8;
    }

    public ECPoint getP() {
        return this.f1453p;
    }

    public ECPoint getQ() {
        return this.f1454q;
    }

    public int getSecurityStrength() {
        return this.securityStrength;
    }

    public int getSeedLen() {
        return this.f1453p.getCurve().getFieldSize();
    }
}
