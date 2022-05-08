package org.spongycastle.bcpg.sig;

import org.spongycastle.bcpg.SignatureSubpacket;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/sig/Exportable.class */
public class Exportable extends SignatureSubpacket {
    public Exportable(boolean z, boolean z2) {
        super(4, z, false, booleanToByteArray(z2));
    }

    public Exportable(boolean z, boolean z2, byte[] bArr) {
        super(4, z, z2, bArr);
    }

    private static byte[] booleanToByteArray(boolean z) {
        byte[] bArr = new byte[1];
        if (!z) {
            return bArr;
        }
        bArr[0] = (byte) 1;
        return bArr;
    }

    public boolean isExportable() {
        boolean z = false;
        if (this.data[0] != 0) {
            z = true;
        }
        return z;
    }
}
