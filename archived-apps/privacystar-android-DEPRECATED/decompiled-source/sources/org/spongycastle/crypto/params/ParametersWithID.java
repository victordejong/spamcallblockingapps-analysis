package org.spongycastle.crypto.params;

import org.spongycastle.crypto.CipherParameters;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/params/ParametersWithID.class */
public class ParametersWithID implements CipherParameters {

    /* renamed from: id */
    private byte[] f1436id;
    private CipherParameters parameters;

    public ParametersWithID(CipherParameters cipherParameters, byte[] bArr) {
        this.parameters = cipherParameters;
        this.f1436id = bArr;
    }

    public byte[] getID() {
        return this.f1436id;
    }

    public CipherParameters getParameters() {
        return this.parameters;
    }
}
