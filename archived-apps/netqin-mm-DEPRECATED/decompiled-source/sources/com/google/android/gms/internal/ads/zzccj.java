package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccj.class */
public final class zzccj implements zzeoy<zzcta<zzcbe>> {

    /* renamed from: a */
    public final zzeph<zzdsi> f25699a;

    /* renamed from: b */
    public final zzeph<zzdzb> f25700b;

    /* renamed from: c */
    public final zzeph<zzcvi> f25701c;

    /* renamed from: d */
    public final zzeph<zzcxr> f25702d;

    public zzccj(zzeph<zzdsi> zzephVar, zzeph<zzdzb> zzephVar2, zzeph<zzcvi> zzephVar3, zzeph<zzcxr> zzephVar4) {
        this.f25699a = zzephVar;
        this.f25700b = zzephVar2;
        this.f25701c = zzephVar3;
        this.f25702d = zzephVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcxv zzcxvVar = new zzcxv(this.f25699a.get(), this.f25700b.get(), this.f25702d.get(), this.f25701c.get());
        zzepe.m12187a(zzcxvVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcxvVar;
    }
}
