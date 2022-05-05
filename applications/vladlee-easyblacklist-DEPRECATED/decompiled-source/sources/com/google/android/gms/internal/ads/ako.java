package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ako.class */
final class ako extends akn {
    /* renamed from: a */
    private static int m4991a(byte[] bArr, int i, long j, int i2) {
        int b;
        int b2;
        int b3;
        if (i2 == 0) {
            b = akl.m5002b(i);
            return b;
        } else if (i2 == 1) {
            b2 = akl.m5001b(i, akj.m5058a(bArr, j));
            return b2;
        } else if (i2 == 2) {
            b3 = akl.m5000b(i, akj.m5058a(bArr, j), akj.m5058a(bArr, j + 1));
            return b3;
        } else {
            throw new AssertionError();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v144, types: [long] */
    /* JADX WARN: Type inference failed for: r0v187 */
    /* JADX WARN: Type inference failed for: r0v87, types: [long] */
    /* JADX WARN: Type inference failed for: r0v94 */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0, types: [long] */
    /* JADX WARN: Type inference failed for: r18v0, types: [long] */
    /* JADX WARN: Type inference failed for: r18v10 */
    /* JADX WARN: Type inference failed for: r18v11 */
    /* JADX WARN: Type inference failed for: r18v12 */
    /* JADX WARN: Type inference failed for: r18v14, types: [long] */
    /* JADX WARN: Type inference failed for: r18v24 */
    /* JADX WARN: Type inference failed for: r18v25 */
    /* JADX WARN: Type inference failed for: r18v26 */
    /* JADX WARN: Type inference failed for: r18v27 */
    /* JADX WARN: Type inference failed for: r18v28 */
    /* JADX WARN: Type inference failed for: r18v3, types: [long] */
    /* JADX WARN: Type inference failed for: r18v4, types: [long] */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1, types: [long] */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Unknown variable types count: 7 */
    @Override // com.google.android.gms.internal.ads.akn
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo4995a(int r9, byte[] r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 738
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ako.mo4995a(int, byte[], int, int):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v44, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1, types: [long] */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r18v6 */
    /* JADX WARN: Type inference failed for: r18v7 */
    /* JADX WARN: Type inference failed for: r18v8 */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1, types: [long] */
    /* JADX WARN: Type inference failed for: r20v5 */
    /* JADX WARN: Unknown variable types count: 4 */
    @Override // com.google.android.gms.internal.ads.akn
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo4993a(java.lang.CharSequence r8, byte[] r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 726
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ako.mo4993a(java.lang.CharSequence, byte[], int, int):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.akn
    /* renamed from: a */
    public final String mo4992a(byte[] bArr, int i, int i2) {
        if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte a = akj.m5058a(bArr, i);
                if (!(a >= 0)) {
                    break;
                }
                i++;
                cArr[i4] = (char) a;
                i4++;
            }
            int i5 = i;
            int i6 = i4;
            while (i5 < i3) {
                int i7 = i5 + 1;
                byte a2 = akj.m5058a(bArr, i5);
                if (a2 >= 0) {
                    i6++;
                    cArr[i6] = (char) a2;
                    i5 = i7;
                    while (i5 < i3) {
                        byte a3 = akj.m5058a(bArr, i5);
                        if (a3 >= 0) {
                            i5++;
                            cArr[i6] = (char) a3;
                            i6++;
                        }
                    }
                } else if (akk.m5017a(a2)) {
                    if (i7 < i3) {
                        akk.m5014a(a2, akj.m5058a(bArr, i7), cArr, i6);
                        i5 = i7 + 1;
                        i6++;
                    } else {
                        throw zzdse.m3339i();
                    }
                } else if (akk.m5013b(a2)) {
                    if (i7 < i3 - 1) {
                        int i8 = i7 + 1;
                        akk.m5015a(a2, akj.m5058a(bArr, i7), akj.m5058a(bArr, i8), cArr, i6);
                        i5 = i8 + 1;
                        i6++;
                    } else {
                        throw zzdse.m3339i();
                    }
                } else if (i7 < i3 - 2) {
                    int i9 = i7 + 1;
                    int i10 = i9 + 1;
                    akk.m5016a(a2, akj.m5058a(bArr, i7), akj.m5058a(bArr, i9), akj.m5058a(bArr, i10), cArr, i6);
                    i5 = i10 + 1;
                    i6 = i6 + 1 + 1;
                } else {
                    throw zzdse.m3339i();
                }
            }
            return new String(cArr, 0, i6);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v52, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1, types: [long] */
    /* JADX WARN: Type inference failed for: r22v5 */
    /* JADX WARN: Unknown variable types count: 3 */
    @Override // com.google.android.gms.internal.ads.akn
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo4994a(java.lang.CharSequence r8, java.nio.ByteBuffer r9) {
        /*
            Method dump skipped, instructions count: 724
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ako.mo4994a(java.lang.CharSequence, java.nio.ByteBuffer):void");
    }
}
