package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.ex */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ex.class */
final class C2600ex extends AbstractC2596et {
    /* renamed from: a */
    private static int m2516a(byte[] bArr, int i, long j, int i2) {
        int b;
        int b2;
        int b3;
        if (i2 == 0) {
            b = C2595es.m2529b(i);
            return b;
        } else if (i2 == 1) {
            b2 = C2595es.m2528b(i, C2588ep.m2574a(bArr, j));
            return b2;
        } else if (i2 == 2) {
            b3 = C2595es.m2527b(i, C2588ep.m2574a(bArr, j), C2588ep.m2574a(bArr, j + 1));
            return b3;
        } else {
            throw new AssertionError();
        }
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
    @Override // com.google.android.gms.internal.measurement.AbstractC2596et
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo2517a(java.lang.CharSequence r8, byte[] r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 726
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C2600ex.mo2517a(java.lang.CharSequence, byte[], int, int):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v83 */
    /* JADX WARN: Type inference failed for: r0v84, types: [long] */
    /* JADX WARN: Type inference failed for: r0v91 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2, types: [long] */
    /* JADX WARN: Type inference failed for: r12v4, types: [long] */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v2, types: [long] */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Unknown variable types count: 4 */
    @Override // com.google.android.gms.internal.measurement.AbstractC2596et
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final int mo2515b(byte[] r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 393
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C2600ex.mo2515b(byte[], int, int):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.AbstractC2596et
    /* renamed from: c */
    public final String mo2514c(byte[] bArr, int i, int i2) {
        if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte a = C2588ep.m2574a(bArr, i);
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
                byte a2 = C2588ep.m2574a(bArr, i5);
                if (a2 >= 0) {
                    i6++;
                    cArr[i6] = (char) a2;
                    i5 = i7;
                    while (i5 < i3) {
                        byte a3 = C2588ep.m2574a(bArr, i5);
                        if (a3 >= 0) {
                            i5++;
                            cArr[i6] = (char) a3;
                            i6++;
                        }
                    }
                } else if (C2597eu.m2523a(a2)) {
                    if (i7 < i3) {
                        C2597eu.m2520a(a2, C2588ep.m2574a(bArr, i7), cArr, i6);
                        i5 = i7 + 1;
                        i6++;
                    } else {
                        throw zzfo.m2260h();
                    }
                } else if (C2597eu.m2519b(a2)) {
                    if (i7 < i3 - 1) {
                        int i8 = i7 + 1;
                        C2597eu.m2521a(a2, C2588ep.m2574a(bArr, i7), C2588ep.m2574a(bArr, i8), cArr, i6);
                        i5 = i8 + 1;
                        i6++;
                    } else {
                        throw zzfo.m2260h();
                    }
                } else if (i7 < i3 - 2) {
                    int i9 = i7 + 1;
                    int i10 = i9 + 1;
                    C2597eu.m2522a(a2, C2588ep.m2574a(bArr, i7), C2588ep.m2574a(bArr, i9), C2588ep.m2574a(bArr, i10), cArr, i6);
                    i5 = i10 + 1;
                    i6 = i6 + 1 + 1;
                } else {
                    throw zzfo.m2260h();
                }
            }
            return new String(cArr, 0, i6);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
    }
}
