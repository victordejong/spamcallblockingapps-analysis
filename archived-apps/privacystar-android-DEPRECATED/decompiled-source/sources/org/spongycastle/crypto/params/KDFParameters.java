package org.spongycastle.crypto.params;

import org.spongycastle.crypto.DerivationParameters;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/params/KDFParameters.class */
public class KDFParameters implements DerivationParameters {

    /* renamed from: iv */
    byte[] f1433iv;
    byte[] shared;

    public KDFParameters(byte[] bArr, byte[] bArr2) {
        this.shared = bArr;
        this.f1433iv = bArr2;
    }

    public byte[] getIV() {
        return this.f1433iv;
    }

    public byte[] getSharedSecret() {
        return this.shared;
    }
}
