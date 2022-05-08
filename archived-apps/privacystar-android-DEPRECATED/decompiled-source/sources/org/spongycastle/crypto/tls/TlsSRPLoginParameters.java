package org.spongycastle.crypto.tls;

import java.math.BigInteger;
import org.spongycastle.crypto.params.SRP6GroupParameters;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/TlsSRPLoginParameters.class */
public class TlsSRPLoginParameters {
    protected SRP6GroupParameters group;
    protected byte[] salt;
    protected BigInteger verifier;

    public TlsSRPLoginParameters(SRP6GroupParameters sRP6GroupParameters, BigInteger bigInteger, byte[] bArr) {
        this.group = sRP6GroupParameters;
        this.verifier = bigInteger;
        this.salt = bArr;
    }

    public SRP6GroupParameters getGroup() {
        return this.group;
    }

    public byte[] getSalt() {
        return this.salt;
    }

    public BigInteger getVerifier() {
        return this.verifier;
    }
}
