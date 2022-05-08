package org.spongycastle.crypto.params;

import java.math.BigInteger;
import org.spongycastle.crypto.CipherParameters;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/params/DHParameters.class */
public class DHParameters implements CipherParameters {
    private static final int DEFAULT_MINIMUM_LENGTH = 160;

    /* renamed from: g */
    private BigInteger f1393g;

    /* renamed from: j */
    private BigInteger f1394j;

    /* renamed from: l */
    private int f1395l;

    /* renamed from: m */
    private int f1396m;

    /* renamed from: p */
    private BigInteger f1397p;

    /* renamed from: q */
    private BigInteger f1398q;
    private DHValidationParameters validation;

    public DHParameters(BigInteger bigInteger, BigInteger bigInteger2) {
        this(bigInteger, bigInteger2, null, 0);
    }

    public DHParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this(bigInteger, bigInteger2, bigInteger3, 0);
    }

    public DHParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i) {
        this(bigInteger, bigInteger2, bigInteger3, getDefaultMParam(i), i, null, null);
    }

    public DHParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i, int i2) {
        this(bigInteger, bigInteger2, bigInteger3, i, i2, null, null);
    }

    public DHParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i, int i2, BigInteger bigInteger4, DHValidationParameters dHValidationParameters) {
        if (i2 != 0) {
            if (i2 > bigInteger.bitLength()) {
                throw new IllegalArgumentException("when l value specified, it must satisfy 2^(l-1) <= p");
            } else if (i2 < i) {
                throw new IllegalArgumentException("when l value specified, it may not be less than m value");
            }
        }
        this.f1393g = bigInteger2;
        this.f1397p = bigInteger;
        this.f1398q = bigInteger3;
        this.f1396m = i;
        this.f1395l = i2;
        this.f1394j = bigInteger4;
        this.validation = dHValidationParameters;
    }

    public DHParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, DHValidationParameters dHValidationParameters) {
        this(bigInteger, bigInteger2, bigInteger3, 160, 0, bigInteger4, dHValidationParameters);
    }

    private static int getDefaultMParam(int i) {
        if (i == 0) {
            return 160;
        }
        if (i >= 160) {
            i = 160;
        }
        return i;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DHParameters)) {
            return false;
        }
        DHParameters dHParameters = (DHParameters) obj;
        if (getQ() != null) {
            if (!getQ().equals(dHParameters.getQ())) {
                return false;
            }
        } else if (dHParameters.getQ() != null) {
            return false;
        }
        boolean z = false;
        if (dHParameters.getP().equals(this.f1397p)) {
            z = false;
            if (dHParameters.getG().equals(this.f1393g)) {
                z = true;
            }
        }
        return z;
    }

    public BigInteger getG() {
        return this.f1393g;
    }

    public BigInteger getJ() {
        return this.f1394j;
    }

    public int getL() {
        return this.f1395l;
    }

    public int getM() {
        return this.f1396m;
    }

    public BigInteger getP() {
        return this.f1397p;
    }

    public BigInteger getQ() {
        return this.f1398q;
    }

    public DHValidationParameters getValidationParameters() {
        return this.validation;
    }

    public int hashCode() {
        return (getP().hashCode() ^ getG().hashCode()) ^ (getQ() != null ? getQ().hashCode() : 0);
    }
}
