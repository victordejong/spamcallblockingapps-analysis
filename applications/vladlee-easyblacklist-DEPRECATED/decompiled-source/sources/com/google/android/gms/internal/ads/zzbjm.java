package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjm.class */
public final class zzbjm implements zzdxg<zzakh> {

    /* renamed from: a */
    private final zzdxp<zzakc> f11985a;

    private zzbjm(zzdxp<zzakc> zzdxpVar) {
        this.f11985a = zzdxpVar;
    }

    public static zzbjm zzb(zzdxp<zzakc> zzdxpVar) {
        return new zzbjm(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzakh) zzdxm.zza(this.f11985a.get().zzsh(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
