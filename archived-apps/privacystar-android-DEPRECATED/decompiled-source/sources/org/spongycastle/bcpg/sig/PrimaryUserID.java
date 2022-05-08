package org.spongycastle.bcpg.sig;

import org.spongycastle.bcpg.SignatureSubpacket;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/sig/PrimaryUserID.class */
public class PrimaryUserID extends SignatureSubpacket {
    public PrimaryUserID(boolean z, boolean z2) {
        super(25, z, false, booleanToByteArray(z2));
    }

    public PrimaryUserID(boolean z, boolean z2, byte[] bArr) {
        super(25, z, z2, bArr);
    }

    private static byte[] booleanToByteArray(boolean z) {
        byte[] bArr = new byte[1];
        if (!z) {
            return bArr;
        }
        bArr[0] = (byte) 1;
        return bArr;
    }

    public boolean isPrimaryUserID() {
        boolean z = false;
        if (this.data[0] != 0) {
            z = true;
        }
        return z;
    }
}
