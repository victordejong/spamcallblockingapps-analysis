package org.spongycastle.crypto.params;

import org.spongycastle.crypto.DerivationParameters;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/params/ISO18033KDFParameters.class */
public class ISO18033KDFParameters implements DerivationParameters {
    byte[] seed;

    public ISO18033KDFParameters(byte[] bArr) {
        this.seed = bArr;
    }

    public byte[] getSeed() {
        return this.seed;
    }
}
