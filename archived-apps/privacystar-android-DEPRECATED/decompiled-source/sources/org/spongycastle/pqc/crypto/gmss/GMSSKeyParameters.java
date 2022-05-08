package org.spongycastle.pqc.crypto.gmss;

import org.spongycastle.crypto.params.AsymmetricKeyParameter;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/gmss/GMSSKeyParameters.class */
public class GMSSKeyParameters extends AsymmetricKeyParameter {
    private GMSSParameters params;

    public GMSSKeyParameters(boolean z, GMSSParameters gMSSParameters) {
        super(z);
        this.params = gMSSParameters;
    }

    public GMSSParameters getParameters() {
        return this.params;
    }
}
