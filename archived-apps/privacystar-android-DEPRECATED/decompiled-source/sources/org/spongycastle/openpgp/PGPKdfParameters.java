package org.spongycastle.openpgp;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPKdfParameters.class */
public class PGPKdfParameters implements PGPAlgorithmParameters {
    private final int hashAlgorithm;
    private final int symmetricWrapAlgorithm;

    public PGPKdfParameters(int i, int i2) {
        this.hashAlgorithm = i;
        this.symmetricWrapAlgorithm = i2;
    }

    public int getHashAlgorithm() {
        return this.hashAlgorithm;
    }

    public int getSymmetricWrapAlgorithm() {
        return this.symmetricWrapAlgorithm;
    }
}
