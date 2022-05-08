package org.spongycastle.crypto.params;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/params/DHPublicKeyParameters.class */
public class DHPublicKeyParameters extends DHKeyParameters {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private static final BigInteger TWO = BigInteger.valueOf(2);

    /* renamed from: y */
    private BigInteger f1400y;

    public DHPublicKeyParameters(BigInteger bigInteger, DHParameters dHParameters) {
        super(false, dHParameters);
        this.f1400y = validate(bigInteger, dHParameters);
    }

    private BigInteger validate(BigInteger bigInteger, DHParameters dHParameters) {
        if (bigInteger == null) {
            throw new NullPointerException("y value cannot be null");
        } else if (bigInteger.compareTo(TWO) < 0 || bigInteger.compareTo(dHParameters.getP().subtract(TWO)) > 0) {
            throw new IllegalArgumentException("invalid DH public key");
        } else {
            if (dHParameters.getQ() != null && !ONE.equals(bigInteger.modPow(dHParameters.getQ(), dHParameters.getP()))) {
                throw new IllegalArgumentException("Y value does not appear to be in correct group");
            }
            return bigInteger;
        }
    }

    @Override // org.spongycastle.crypto.params.DHKeyParameters
    public boolean equals(Object obj) {
        if (!(obj instanceof DHPublicKeyParameters)) {
            return false;
        }
        boolean z = false;
        if (((DHPublicKeyParameters) obj).getY().equals(this.f1400y)) {
            z = false;
            if (super.equals(obj)) {
                z = true;
            }
        }
        return z;
    }

    public BigInteger getY() {
        return this.f1400y;
    }

    @Override // org.spongycastle.crypto.params.DHKeyParameters
    public int hashCode() {
        return this.f1400y.hashCode() ^ super.hashCode();
    }
}
