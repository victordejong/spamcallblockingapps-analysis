package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ank.class */
final class ank {

    /* renamed from: a */
    private final zzoj f7768a = new zzoj(8);

    /* renamed from: b */
    private int f7769b;

    /* renamed from: b */
    private final long m4857b(zzjg zzjgVar) {
        int i = 0;
        zzjgVar.zza(this.f7768a.data, 0, 1);
        int i2 = this.f7768a.data[0] & 255;
        if (i2 == 0) {
            return Long.MIN_VALUE;
        }
        int i3 = 128;
        int i4 = 0;
        while ((i2 & i3) == 0) {
            i3 >>= 1;
            i4++;
        }
        int i5 = i2 & (i3 ^ (-1));
        zzjgVar.zza(this.f7768a.data, 1, i4);
        while (i < i4) {
            i++;
            i5 = (this.f7768a.data[i] & 255) + (i5 << 8);
        }
        this.f7769b += i4 + 1;
        return i5;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m4858a(com.google.android.gms.internal.ads.zzjg r8) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ank.m4858a(com.google.android.gms.internal.ads.zzjg):boolean");
    }
}
