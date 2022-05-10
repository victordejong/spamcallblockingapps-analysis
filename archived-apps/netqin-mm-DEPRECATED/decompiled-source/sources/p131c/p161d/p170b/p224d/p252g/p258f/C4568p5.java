package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzij;
/* renamed from: c.d.b.d.g.f.p5 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/p5.class */
public final class C4568p5 extends AbstractC4561o5 {
    /* renamed from: a */
    public static int m25317a(byte[] bArr, int i, long j, int i2) {
        int b;
        int b2;
        int b3;
        if (i2 == 0) {
            b = C4547m5.m25361b(i);
            return b;
        } else if (i2 == 1) {
            b2 = C4547m5.m25360b(i, C4522j5.m25428a(bArr, j));
            return b2;
        } else if (i2 == 2) {
            b3 = C4547m5.m25359b(i, C4522j5.m25428a(bArr, j), C4522j5.m25428a(bArr, j + 1));
            return b3;
        } else {
            throw new AssertionError();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
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
    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4561o5
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo25320a(int r9, byte[] r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 417
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p258f.C4568p5.mo25320a(int, byte[], int, int):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v42, types: [java.lang.StringBuilder] */
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
    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4561o5
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo25319a(java.lang.CharSequence r8, byte[] r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 686
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p258f.C4568p5.mo25319a(java.lang.CharSequence, byte[], int, int):int");
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4561o5
    /* renamed from: a */
    public final String mo25318a(byte[] bArr, int i, int i2) throws zzij {
        boolean d;
        boolean d2;
        boolean e;
        boolean f;
        boolean d3;
        if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte a = C4522j5.m25428a(bArr, i);
                d3 = C4540l5.m25373d(a);
                if (!d3) {
                    break;
                }
                i++;
                C4540l5.m25375b(a, cArr, i4);
                i4++;
            }
            int i5 = i;
            int i6 = i4;
            while (i5 < i3) {
                int i7 = i5 + 1;
                byte a2 = C4522j5.m25428a(bArr, i5);
                d = C4540l5.m25373d(a2);
                if (d) {
                    i6++;
                    C4540l5.m25375b(a2, cArr, i6);
                    i5 = i7;
                    while (i5 < i3) {
                        byte a3 = C4522j5.m25428a(bArr, i5);
                        d2 = C4540l5.m25373d(a3);
                        if (d2) {
                            i5++;
                            C4540l5.m25375b(a3, cArr, i6);
                            i6++;
                        }
                    }
                } else {
                    e = C4540l5.m25372e(a2);
                    if (!e) {
                        f = C4540l5.m25371f(a2);
                        if (f) {
                            if (i7 < i3 - 1) {
                                int i8 = i7 + 1;
                                C4540l5.m25377b(a2, C4522j5.m25428a(bArr, i7), C4522j5.m25428a(bArr, i8), cArr, i6);
                                i5 = i8 + 1;
                                i6++;
                            } else {
                                throw zzij.zzh();
                            }
                        } else if (i7 < i3 - 2) {
                            int i9 = i7 + 1;
                            int i10 = i9 + 1;
                            C4540l5.m25378b(a2, C4522j5.m25428a(bArr, i7), C4522j5.m25428a(bArr, i9), C4522j5.m25428a(bArr, i10), cArr, i6);
                            i5 = i10 + 1;
                            i6 = i6 + 1 + 1;
                        } else {
                            throw zzij.zzh();
                        }
                    } else if (i7 < i3) {
                        C4540l5.m25376b(a2, C4522j5.m25428a(bArr, i7), cArr, i6);
                        i5 = i7 + 1;
                        i6++;
                    } else {
                        throw zzij.zzh();
                    }
                }
            }
            return new String(cArr, 0, i6);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
    }
}
