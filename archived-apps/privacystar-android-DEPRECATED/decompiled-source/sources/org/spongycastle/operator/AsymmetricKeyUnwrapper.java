package org.spongycastle.operator;

import org.spongycastle.asn1.x509.AlgorithmIdentifier;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/operator/AsymmetricKeyUnwrapper.class */
public abstract class AsymmetricKeyUnwrapper implements KeyUnwrapper {
    private AlgorithmIdentifier algorithmId;

    /* JADX INFO: Access modifiers changed from: protected */
    public AsymmetricKeyUnwrapper(AlgorithmIdentifier algorithmIdentifier) {
        this.algorithmId = algorithmIdentifier;
    }

    @Override // org.spongycastle.operator.KeyUnwrapper
    public AlgorithmIdentifier getAlgorithmIdentifier() {
        return this.algorithmId;
    }
}
