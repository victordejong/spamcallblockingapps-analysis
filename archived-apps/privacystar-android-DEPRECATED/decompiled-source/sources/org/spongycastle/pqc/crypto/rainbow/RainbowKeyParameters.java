package org.spongycastle.pqc.crypto.rainbow;

import org.spongycastle.crypto.params.AsymmetricKeyParameter;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters.class */
public class RainbowKeyParameters extends AsymmetricKeyParameter {
    private int docLength;

    public RainbowKeyParameters(boolean z, int i) {
        super(z);
        this.docLength = i;
    }

    public int getDocLength() {
        return this.docLength;
    }
}
