package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/agu.class */
final class agu extends agn {
    /* JADX INFO: Access modifiers changed from: package-private */
    public agu(byte[] bArr, int i) {
        super(bArr, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.agn
    /* renamed from: a */
    public final int mo5430a() {
        return 24;
    }

    @Override // com.google.android.gms.internal.ads.agn
    /* renamed from: a */
    final int[] mo5429a(int[] iArr, int i) {
        if (iArr.length == 6) {
            int[] iArr2 = new int[16];
            agn.m5435a(r0, this.f7333a);
            int[] iArr3 = {0, 0, 0, 0, iArr3[12], iArr3[13], iArr3[14], iArr3[15], 0, 0, 0, 0, iArr[0], iArr[1], iArr[2], iArr[3]};
            agn.m5437a(iArr3);
            agn.m5435a(iArr2, Arrays.copyOf(iArr3, 8));
            iArr2[12] = i;
            iArr2[13] = 0;
            iArr2[14] = iArr[4];
            iArr2[15] = iArr[5];
            return iArr2;
        }
        throw new IllegalArgumentException(String.format("XChaCha20 uses 192-bit nonces, but got a %d-bit nonce", Integer.valueOf(iArr.length << 5)));
    }
}
