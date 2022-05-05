package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzg.class */
public final class zzg implements zzad {

    /* renamed from: a */
    private int f14802a;

    /* renamed from: b */
    private int f14803b;

    /* renamed from: c */
    private final int f14804c;

    /* renamed from: d */
    private final float f14805d;

    public zzg() {
        this((byte) 0);
    }

    private zzg(byte b) {
        this.f14802a = 2500;
        this.f14804c = 1;
        this.f14805d = 1.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzad
    public final int zza() {
        return this.f14802a;
    }

    @Override // com.google.android.gms.internal.ads.zzad
    public final void zza(zzae zzaeVar) {
        boolean z = true;
        this.f14803b++;
        int i = this.f14802a;
        this.f14802a = i + ((int) (i * this.f14805d));
        if (this.f14803b > this.f14804c) {
            z = false;
        }
        if (!z) {
            throw zzaeVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzad
    public final int zzb() {
        return this.f14803b;
    }
}
