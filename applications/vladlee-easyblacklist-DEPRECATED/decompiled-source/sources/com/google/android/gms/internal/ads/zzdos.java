package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdos.class */
public final class zzdos {

    /* renamed from: a */
    private final zzdpj f14426a;

    /* renamed from: b */
    private final zzdpj f14427b;

    public zzdos(byte[] bArr, byte[] bArr2) {
        this.f14426a = zzdpj.zzs(bArr);
        this.f14427b = zzdpj.zzs(bArr2);
    }

    public final byte[] zzaxd() {
        zzdpj zzdpjVar = this.f14426a;
        if (zzdpjVar == null) {
            return null;
        }
        return zzdpjVar.getBytes();
    }

    public final byte[] zzaxe() {
        zzdpj zzdpjVar = this.f14427b;
        if (zzdpjVar == null) {
            return null;
        }
        return zzdpjVar.getBytes();
    }
}
