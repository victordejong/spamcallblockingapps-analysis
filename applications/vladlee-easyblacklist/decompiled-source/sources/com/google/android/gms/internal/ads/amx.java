package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/amx.class */
final class amx implements zzhm {

    /* renamed from: a */
    private int f7722a = -1;

    /* renamed from: b */
    private int f7723b = -1;

    /* renamed from: c */
    private int f7724c = 0;

    /* renamed from: d */
    private ByteBuffer f7725d = zzaha;

    /* renamed from: e */
    private ByteBuffer f7726e = zzaha;

    /* renamed from: f */
    private boolean f7727f;

    @Override // com.google.android.gms.internal.ads.zzhm
    public final void flush() {
        this.f7726e = zzaha;
        this.f7727f = false;
    }

    @Override // com.google.android.gms.internal.ads.zzhm
    public final boolean isActive() {
        int i = this.f7724c;
        return (i == 0 || i == 2) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzhm
    public final void reset() {
        flush();
        this.f7725d = zzaha;
        this.f7722a = -1;
        this.f7723b = -1;
        this.f7724c = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzhm
    public final boolean zzb(int i, int i2, int i3) {
        if (i3 != 3 && i3 != 2 && i3 != Integer.MIN_VALUE && i3 != 1073741824) {
            throw new zzhp(i, i2, i3);
        } else if (this.f7722a == i && this.f7723b == i2 && this.f7724c == i3) {
            return false;
        } else {
            this.f7722a = i;
            this.f7723b = i2;
            this.f7724c = i3;
            if (i3 != 2) {
                return true;
            }
            this.f7725d = zzaha;
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhm
    public final boolean zzeu() {
        return this.f7727f && this.f7726e == zzaha;
    }

    @Override // com.google.android.gms.internal.ads.zzhm
    public final int zzez() {
        return this.f7723b;
    }

    @Override // com.google.android.gms.internal.ads.zzhm
    public final int zzfa() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzhm
    public final void zzfb() {
        this.f7727f = true;
    }

    @Override // com.google.android.gms.internal.ads.zzhm
    public final ByteBuffer zzfc() {
        ByteBuffer byteBuffer = this.f7726e;
        this.f7726e = zzaha;
        return byteBuffer;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ed A[LOOP:2: B:31:0x00ed->B:33:0x00f3, LOOP_START, PHI: r11 
      PHI: (r11v2 int) = (r11v1 int), (r11v3 int) binds: [B:18:0x007d, B:33:0x00f3] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.ads.zzhm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzi(java.nio.ByteBuffer r6) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.amx.zzi(java.nio.ByteBuffer):void");
    }
}
