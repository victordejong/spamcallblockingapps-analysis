package org.spongycastle.pqc.crypto.xmss;

import org.spongycastle.crypto.Digest;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/xmss/XMSSMTParameters.class */
public final class XMSSMTParameters {
    private final int height;
    private final int layers;
    private final XMSSOid oid;
    private final XMSSParameters xmssParams;

    public XMSSMTParameters(int i, int i2, Digest digest) {
        this.height = i;
        this.layers = i2;
        this.xmssParams = new XMSSParameters(xmssTreeHeight(i, i2), digest);
        this.oid = DefaultXMSSMTOid.lookup(getDigest().getAlgorithmName(), getDigestSize(), getWinternitzParameter(), getLen(), getHeight(), i2);
    }

    private static int xmssTreeHeight(int i, int i2) throws IllegalArgumentException {
        if (i < 2) {
            throw new IllegalArgumentException("totalHeight must be > 1");
        } else if (i % i2 != 0) {
            throw new IllegalArgumentException("layers must divide totalHeight without remainder");
        } else {
            int i3 = i / i2;
            if (i3 != 1) {
                return i3;
            }
            throw new IllegalArgumentException("height / layers must be greater than 1");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Digest getDigest() {
        return this.xmssParams.getDigest();
    }

    public int getDigestSize() {
        return this.xmssParams.getDigestSize();
    }

    public int getHeight() {
        return this.height;
    }

    public int getLayers() {
        return this.layers;
    }

    protected int getLen() {
        return this.xmssParams.getWOTSPlus().getParams().getLen();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public WOTSPlus getWOTSPlus() {
        return this.xmssParams.getWOTSPlus();
    }

    public int getWinternitzParameter() {
        return this.xmssParams.getWinternitzParameter();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public XMSSParameters getXMSSParameters() {
        return this.xmssParams;
    }
}
