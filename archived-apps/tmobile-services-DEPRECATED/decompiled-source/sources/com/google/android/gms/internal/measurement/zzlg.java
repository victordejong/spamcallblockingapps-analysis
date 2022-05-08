package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzlg.class */
final class zzlg extends zzlb {
    /* renamed from: e */
    private static int m12014e(byte[] bArr, int i, long j, int i2) {
        int h;
        int i3;
        int j2;
        if (i2 == 0) {
            h = zzla.m12039h(i);
            return h;
        } else if (i2 == 1) {
            i3 = zzla.m12038i(i, zzkx.m12084a(bArr, j));
            return i3;
        } else if (i2 == 2) {
            j2 = zzla.m12037j(i, zzkx.m12084a(bArr, j), zzkx.m12084a(bArr, j + 1));
            return j2;
        } else {
            throw new AssertionError();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2, types: [long] */
    /* JADX WARN: Type inference failed for: r13v4, types: [long] */
    /* JADX WARN: Type inference failed for: r15v10, types: [long] */
    /* JADX WARN: Type inference failed for: r15v16 */
    /* JADX WARN: Type inference failed for: r15v17 */
    /* JADX WARN: Type inference failed for: r15v2, types: [long] */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r15v9 */
    /* JADX WARN: Unknown variable types count: 4 */
    @Override // com.google.android.gms.internal.measurement.zzlb
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final int mo12017a(int r9, byte[] r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 409
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzlg.mo12017a(int, byte[], int, int):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v41, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [long] */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r17v6 */
    /* JADX WARN: Type inference failed for: r17v7 */
    /* JADX WARN: Type inference failed for: r17v8 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1, types: [long] */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Unknown variable types count: 4 */
    @Override // com.google.android.gms.internal.measurement.zzlb
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo12016b(java.lang.CharSequence r8, byte[] r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 678
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzlg.mo12016b(java.lang.CharSequence, byte[], int, int):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzlb
    /* renamed from: d */
    public final String mo12015d(byte[] bArr, int i, int i2) throws zzih {
        boolean l;
        boolean l2;
        boolean m;
        boolean n;
        boolean l3;
        if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte a = zzkx.m12084a(bArr, i);
                l3 = zzlc.m12021l(a);
                if (!l3) {
                    break;
                }
                i++;
                zzlc.m12024i(a, cArr, i4);
                i4++;
            }
            int i5 = i;
            int i6 = i4;
            while (i5 < i3) {
                int i7 = i5 + 1;
                byte a2 = zzkx.m12084a(bArr, i5);
                l = zzlc.m12021l(a2);
                if (l) {
                    i6++;
                    zzlc.m12024i(a2, cArr, i6);
                    i5 = i7;
                    while (i5 < i3) {
                        byte a3 = zzkx.m12084a(bArr, i5);
                        l2 = zzlc.m12021l(a3);
                        if (l2) {
                            i5++;
                            zzlc.m12024i(a3, cArr, i6);
                            i6++;
                        }
                    }
                } else {
                    m = zzlc.m12020m(a2);
                    if (!m) {
                        n = zzlc.m12019n(a2);
                        if (n) {
                            if (i7 < i3 - 1) {
                                int i8 = i7 + 1;
                                zzlc.m12026g(a2, zzkx.m12084a(bArr, i7), zzkx.m12084a(bArr, i8), cArr, i6);
                                i5 = i8 + 1;
                                i6++;
                            } else {
                                throw zzih.m12378h();
                            }
                        } else if (i7 < i3 - 2) {
                            int i9 = i7 + 1;
                            int i10 = i9 + 1;
                            zzlc.m12027f(a2, zzkx.m12084a(bArr, i7), zzkx.m12084a(bArr, i9), zzkx.m12084a(bArr, i10), cArr, i6);
                            i5 = i10 + 1;
                            i6 = i6 + 1 + 1;
                        } else {
                            throw zzih.m12378h();
                        }
                    } else if (i7 < i3) {
                        zzlc.m12025h(a2, zzkx.m12084a(bArr, i7), cArr, i6);
                        i5 = i7 + 1;
                        i6++;
                    } else {
                        throw zzih.m12378h();
                    }
                }
            }
            return new String(cArr, 0, i6);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
    }
}
