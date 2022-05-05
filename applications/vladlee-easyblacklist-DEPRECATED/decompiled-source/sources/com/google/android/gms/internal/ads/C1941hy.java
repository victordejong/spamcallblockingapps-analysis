package com.google.android.gms.internal.ads;

import android.net.Uri;
/* renamed from: com.google.android.gms.internal.ads.hy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/hy.class */
final class C1941hy implements zznl {

    /* renamed from: a */
    private final zznl f8582a;

    /* renamed from: b */
    private final long f8583b;

    /* renamed from: c */
    private final zznl f8584c;

    /* renamed from: d */
    private long f8585d;

    /* renamed from: e */
    private Uri f8586e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1941hy(zznl zznlVar, int i, zznl zznlVar2) {
        this.f8582a = zznlVar;
        this.f8583b = i;
        this.f8584c = zznlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zznl
    public final void close() {
        this.f8582a.close();
        this.f8584c.close();
    }

    @Override // com.google.android.gms.internal.ads.zznl
    public final Uri getUri() {
        return this.f8586e;
    }

    @Override // com.google.android.gms.internal.ads.zznl
    public final int read(byte[] bArr, int i, int i2) {
        int i3;
        long j = this.f8585d;
        long j2 = this.f8583b;
        if (j < j2) {
            i3 = this.f8582a.read(bArr, i, (int) Math.min(i2, j2 - j));
            this.f8585d += i3;
        } else {
            i3 = 0;
        }
        int i4 = i3;
        if (this.f8585d >= this.f8583b) {
            int read = this.f8584c.read(bArr, i + i3, i2 - i3);
            i4 = i3 + read;
            this.f8585d += read;
        }
        return i4;
    }

    @Override // com.google.android.gms.internal.ads.zznl
    public final long zza(zznq zznqVar) {
        zznq zznqVar2;
        this.f8586e = zznqVar.uri;
        zznq zznqVar3 = null;
        if (zznqVar.zzamw >= this.f8583b) {
            zznqVar2 = null;
        } else {
            long j = zznqVar.zzamw;
            zznqVar2 = new zznq(zznqVar.uri, j, zznqVar.zzce != -1 ? Math.min(zznqVar.zzce, this.f8583b - j) : this.f8583b - j, null);
        }
        if (zznqVar.zzce == -1 || zznqVar.zzamw + zznqVar.zzce > this.f8583b) {
            zznqVar3 = new zznq(zznqVar.uri, Math.max(this.f8583b, zznqVar.zzamw), zznqVar.zzce != -1 ? Math.min(zznqVar.zzce, (zznqVar.zzamw + zznqVar.zzce) - this.f8583b) : -1L, null);
        }
        long j2 = 0;
        long zza = zznqVar2 != null ? this.f8582a.zza(zznqVar2) : 0L;
        if (zznqVar3 != null) {
            j2 = this.f8584c.zza(zznqVar3);
        }
        this.f8585d = zznqVar.zzamw;
        if (zza == -1 || j2 == -1) {
            return -1L;
        }
        return zza + j2;
    }
}
