package org.spongycastle.crypto.tls;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/UseSRTPData.class */
public class UseSRTPData {
    protected byte[] mki;
    protected int[] protectionProfiles;

    public UseSRTPData(int[] iArr, byte[] bArr) {
        byte[] bArr2;
        if (iArr == null || iArr.length < 1 || iArr.length >= 32768) {
            throw new IllegalArgumentException("'protectionProfiles' must have length from 1 to (2^15 - 1)");
        }
        if (bArr == null) {
            bArr2 = TlsUtils.EMPTY_BYTES;
        } else {
            bArr2 = bArr;
            if (bArr.length > 255) {
                throw new IllegalArgumentException("'mki' cannot be longer than 255 bytes");
            }
        }
        this.protectionProfiles = iArr;
        this.mki = bArr2;
    }

    public byte[] getMki() {
        return this.mki;
    }

    public int[] getProtectionProfiles() {
        return this.protectionProfiles;
    }
}
