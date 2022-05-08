package org.spongycastle.crypto.params;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/params/DSAPrivateKeyParameters.class */
public class DSAPrivateKeyParameters extends DSAKeyParameters {

    /* renamed from: x */
    private BigInteger f1406x;

    public DSAPrivateKeyParameters(BigInteger bigInteger, DSAParameters dSAParameters) {
        super(true, dSAParameters);
        this.f1406x = bigInteger;
    }

    public BigInteger getX() {
        return this.f1406x;
    }
}
