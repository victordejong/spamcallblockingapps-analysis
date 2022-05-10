package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpc.class */
public final class zzpc {

    /* renamed from: a */
    public static final byte[] f28759a = {0, 0, 0, 1};

    /* renamed from: b */
    public static final int[] f28760b = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};

    /* renamed from: c */
    public static final int[] f28761c = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* renamed from: a */
    public static int m11686a(zzph zzphVar) {
        int a = zzphVar.m11672a(5);
        int i = a;
        if (a == 31) {
            i = zzphVar.m11672a(6) + 32;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0024, code lost:
        if (r0 == 29) goto L_0x0027;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> m11685a(byte[] r4) {
        /*
            com.google.android.gms.internal.ads.zzph r0 = new com.google.android.gms.internal.ads.zzph
            r1 = r0
            r2 = r4
            r1.<init>(r2)
            r4 = r0
            r0 = r4
            int r0 = m11686a(r0)
            r5 = r0
            r0 = r4
            int r0 = m11683b(r0)
            r6 = r0
            r0 = r4
            r1 = 4
            int r0 = r0.m11672a(r1)
            r7 = r0
            r0 = r5
            r1 = 5
            if (r0 == r1) goto L_0x0027
            r0 = r7
            r8 = r0
            r0 = r5
            r1 = 29
            if (r0 != r1) goto L_0x0043
        L_0x0027:
            r0 = r4
            int r0 = m11683b(r0)
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r7
            r8 = r0
            r0 = r4
            int r0 = m11686a(r0)
            r1 = 22
            if (r0 != r1) goto L_0x0043
            r0 = r4
            r1 = 4
            int r0 = r0.m11672a(r1)
            r8 = r0
            r0 = r5
            r6 = r0
        L_0x0043:
            int[] r0 = com.google.android.gms.internal.ads.zzpc.f28761c
            r1 = r8
            r0 = r0[r1]
            r8 = r0
            r0 = r8
            r1 = -1
            if (r0 == r1) goto L_0x0057
            r0 = 1
            r9 = r0
            goto L_0x005a
        L_0x0057:
            r0 = 0
            r9 = r0
        L_0x005a:
            r0 = r9
            com.google.android.gms.internal.ads.zzoz.m11696a(r0)
            r0 = r6
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r1 = r8
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            android.util.Pair r0 = android.util.Pair.create(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpc.m11685a(byte[]):android.util.Pair");
    }

    /* renamed from: a */
    public static byte[] m11684a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = f28759a;
        byte[] bArr3 = new byte[bArr2.length + i2];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i, bArr3, f28759a.length, i2);
        return bArr3;
    }

    /* renamed from: b */
    public static int m11683b(zzph zzphVar) {
        int i;
        int a = zzphVar.m11672a(4);
        if (a == 15) {
            i = zzphVar.m11672a(24);
        } else {
            zzoz.m11696a(a < 13);
            i = f28760b[a];
        }
        return i;
    }
}
