package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ago.class */
final class ago extends agn {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ago(byte[] bArr, int i) {
        super(bArr, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.agn
    /* renamed from: a */
    public final int mo5430a() {
        return 12;
    }

    @Override // com.google.android.gms.internal.ads.agn
    /* renamed from: a */
    final int[] mo5429a(int[] iArr, int i) {
        if (iArr.length == 3) {
            int[] iArr2 = new int[16];
            agn.m5435a(iArr2, this.f7333a);
            iArr2[12] = i;
            System.arraycopy(iArr, 0, iArr2, 13, iArr.length);
            return iArr2;
        }
        throw new IllegalArgumentException(String.format("ChaCha20 uses 96-bit nonces, but got a %d-bit nonce", Integer.valueOf(iArr.length << 5)));
    }
}
