package com.google.android.gms.internal.ads;

import p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0079b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzob.class */
public final class zzob {

    /* renamed from: a */
    private static final byte[] f15227a = {0, 0, 0, 1};

    /* renamed from: b */
    private static final int[] f15228b = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, AbstractC0079b.MAX_BYTE_SIZE_PER_FILE, 7350};

    /* renamed from: c */
    private static final int[] f15229c = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* renamed from: a */
    private static int m3168a(zzok zzokVar) {
        int zzbh = zzokVar.zzbh(5);
        int i = zzbh;
        if (zzbh == 31) {
            i = zzokVar.zzbh(6) + 32;
        }
        return i;
    }

    /* renamed from: b */
    private static int m3167b(zzok zzokVar) {
        int i;
        int zzbh = zzokVar.zzbh(4);
        if (zzbh == 15) {
            i = zzokVar.zzbh(24);
        } else {
            zzoc.checkArgument(zzbh < 13);
            i = f15228b[zzbh];
        }
        return i;
    }

    public static byte[] zzc(byte[] bArr, int i, int i2) {
        byte[] bArr2 = f15227a;
        byte[] bArr3 = new byte[bArr2.length + i2];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i, bArr3, f15227a.length, i2);
        return bArr3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0024, code lost:
        if (r0 == 29) goto L_0x0027;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> zze(byte[] r4) {
        /*
            com.google.android.gms.internal.ads.zzok r0 = new com.google.android.gms.internal.ads.zzok
            r1 = r0
            r2 = r4
            r1.<init>(r2)
            r4 = r0
            r0 = r4
            int r0 = m3168a(r0)
            r5 = r0
            r0 = r4
            int r0 = m3167b(r0)
            r6 = r0
            r0 = r4
            r1 = 4
            int r0 = r0.zzbh(r1)
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
            int r0 = m3167b(r0)
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r7
            r8 = r0
            r0 = r4
            int r0 = m3168a(r0)
            r1 = 22
            if (r0 != r1) goto L_0x0043
            r0 = r4
            r1 = 4
            int r0 = r0.zzbh(r1)
            r8 = r0
            r0 = r5
            r6 = r0
        L_0x0043:
            int[] r0 = com.google.android.gms.internal.ads.zzob.f15229c
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
            com.google.android.gms.internal.ads.zzoc.checkArgument(r0)
            r0 = r6
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r1 = r8
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            android.util.Pair r0 = android.util.Pair.create(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzob.zze(byte[]):android.util.Pair");
    }
}
