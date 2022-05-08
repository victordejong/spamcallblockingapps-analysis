package org.spongycastle.bcpg.sig;

import org.spongycastle.bcpg.SignatureSubpacket;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/sig/TrustSignature.class */
public class TrustSignature extends SignatureSubpacket {
    public TrustSignature(boolean z, int i, int i2) {
        super(5, z, false, intToByteArray(i, i2));
    }

    public TrustSignature(boolean z, boolean z2, byte[] bArr) {
        super(5, z, z2, bArr);
    }

    private static byte[] intToByteArray(int i, int i2) {
        return new byte[]{(byte) i, (byte) i2};
    }

    public int getDepth() {
        return this.data[0] & 255;
    }

    public int getTrustAmount() {
        return this.data[1] & 255;
    }
}
