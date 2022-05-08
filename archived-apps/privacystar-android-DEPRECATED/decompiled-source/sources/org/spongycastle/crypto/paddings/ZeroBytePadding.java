package org.spongycastle.crypto.paddings;

import java.security.SecureRandom;
import org.spongycastle.crypto.InvalidCipherTextException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/paddings/ZeroBytePadding.class */
public class ZeroBytePadding implements BlockCipherPadding {
    @Override // org.spongycastle.crypto.paddings.BlockCipherPadding
    public int addPadding(byte[] bArr, int i) {
        int length = bArr.length;
        for (int i2 = i; i2 < bArr.length; i2++) {
            bArr[i2] = (byte) 0;
        }
        return length - i;
    }

    @Override // org.spongycastle.crypto.paddings.BlockCipherPadding
    public String getPaddingName() {
        return "ZeroByte";
    }

    @Override // org.spongycastle.crypto.paddings.BlockCipherPadding
    public void init(SecureRandom secureRandom) throws IllegalArgumentException {
    }

    @Override // org.spongycastle.crypto.paddings.BlockCipherPadding
    public int padCount(byte[] bArr) throws InvalidCipherTextException {
        int length = bArr.length;
        while (length > 0 && bArr[length - 1] == 0) {
            length--;
        }
        return bArr.length - length;
    }
}
