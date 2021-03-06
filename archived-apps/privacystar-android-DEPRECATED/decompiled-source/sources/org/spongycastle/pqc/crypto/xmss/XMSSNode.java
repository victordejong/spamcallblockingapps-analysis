package org.spongycastle.pqc.crypto.xmss;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/xmss/XMSSNode.class */
public final class XMSSNode implements Serializable {
    private static final long serialVersionUID = 1;
    private final int height;
    private final byte[] value;

    /* JADX INFO: Access modifiers changed from: protected */
    public XMSSNode(int i, byte[] bArr) {
        this.height = i;
        this.value = bArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public XMSSNode clone() {
        return new XMSSNode(getHeight(), getValue());
    }

    public int getHeight() {
        return this.height;
    }

    public byte[] getValue() {
        return XMSSUtil.cloneArray(this.value);
    }
}
