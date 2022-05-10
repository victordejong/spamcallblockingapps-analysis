package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeis.class */
public final class zzeis extends zzeiz {
    public final int zzieu;
    public final int zziev;

    public zzeis(byte[] bArr, int i, int i2) {
        super(bArr);
        zzeip.zzi(i, i + i2, bArr.length);
        this.zzieu = i;
        this.zziev = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzeiz, com.google.android.gms.internal.ads.zzeip
    public final int size() {
        return this.zziev;
    }

    @Override // com.google.android.gms.internal.ads.zzeiz, com.google.android.gms.internal.ads.zzeip
    public final void zzb(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zzifc, zzbem() + i, bArr, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzeiz
    public final int zzbem() {
        return this.zzieu;
    }

    @Override // com.google.android.gms.internal.ads.zzeiz, com.google.android.gms.internal.ads.zzeip
    public final byte zzfu(int i) {
        zzeip.zzaa(i, size());
        return this.zzifc[this.zzieu + i];
    }

    @Override // com.google.android.gms.internal.ads.zzeiz, com.google.android.gms.internal.ads.zzeip
    public final byte zzfv(int i) {
        return this.zzifc[this.zzieu + i];
    }
}
