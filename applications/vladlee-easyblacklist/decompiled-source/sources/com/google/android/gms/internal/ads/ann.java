package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ann.class */
final class ann {

    /* renamed from: a */
    private static final long[] f7906a = {128, 64, 32, 16, 8, 4, 2, 1};

    /* renamed from: b */
    private final byte[] f7907b = new byte[8];

    /* renamed from: c */
    private int f7908c;

    /* renamed from: d */
    private int f7909d;

    /* renamed from: a */
    public static int m4847a(int i) {
        int i2;
        int i3 = 0;
        while (true) {
            long[] jArr = f7906a;
            if (i3 >= jArr.length) {
                i2 = -1;
                break;
            }
            i2 = i3 + 1;
            i3 = i2;
            if ((jArr[i3] & i) != 0) {
                break;
            }
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m4845a(byte[] r7, int r8, boolean r9) {
        /*
            r0 = r7
            r1 = 0
            r0 = r0[r1]
            long r0 = (long) r0
            r1 = 255(0xff, double:1.26E-321)
            long r0 = r0 & r1
            r10 = r0
            r0 = r10
            r12 = r0
            r0 = r9
            if (r0 == 0) goto L_0x001f
            r0 = r10
            long[] r1 = com.google.android.gms.internal.ads.ann.f7906a
            r2 = r8
            r3 = 1
            int r2 = r2 - r3
            r1 = r1[r2]
            r2 = -1
            long r1 = r1 ^ r2
            long r0 = r0 & r1
            r12 = r0
        L_0x001f:
            r0 = 1
            r14 = r0
        L_0x0022:
            r0 = r14
            r1 = r8
            if (r0 >= r1) goto L_0x003f
            r0 = r12
            r1 = 8
            long r0 = r0 << r1
            r1 = r7
            r2 = r14
            r1 = r1[r2]
            long r1 = (long) r1
            r2 = 255(0xff, double:1.26E-321)
            long r1 = r1 & r2
            long r0 = r0 | r1
            r12 = r0
            int r14 = r14 + 1
            goto L_0x0022
        L_0x003f:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ann.m4845a(byte[], int, boolean):long");
    }

    /* renamed from: a */
    public final long m4846a(zzjg zzjgVar, boolean z, boolean z2, int i) {
        if (this.f7908c == 0) {
            if (!zzjgVar.zza(this.f7907b, 0, 1, z)) {
                return -1L;
            }
            this.f7909d = m4847a(this.f7907b[0] & 255);
            if (this.f7909d != -1) {
                this.f7908c = 1;
            } else {
                throw new IllegalStateException("No valid varint length mask found");
            }
        }
        int i2 = this.f7909d;
        if (i2 > i) {
            this.f7908c = 0;
            return -2L;
        }
        if (i2 != 1) {
            zzjgVar.readFully(this.f7907b, 1, i2 - 1);
        }
        this.f7908c = 0;
        return m4845a(this.f7907b, this.f7909d, z2);
    }

    /* renamed from: a */
    public final void m4848a() {
        this.f7908c = 0;
        this.f7909d = 0;
    }

    /* renamed from: b */
    public final int m4844b() {
        return this.f7909d;
    }
}
