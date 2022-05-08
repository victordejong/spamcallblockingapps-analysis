package org.spongycastle.pqc.crypto.ntru;

import org.spongycastle.crypto.params.AsymmetricKeyParameter;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters.class */
public class NTRUEncryptionKeyParameters extends AsymmetricKeyParameter {
    protected final NTRUEncryptionParameters params;

    public NTRUEncryptionKeyParameters(boolean z, NTRUEncryptionParameters nTRUEncryptionParameters) {
        super(z);
        this.params = nTRUEncryptionParameters;
    }

    public NTRUEncryptionParameters getParameters() {
        return this.params;
    }
}
