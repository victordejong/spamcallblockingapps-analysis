package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbgl.class */
public final class zzbgl implements zzdxg<zzazb> {

    /* renamed from: a */
    private final zzbga f11837a;

    public zzbgl(zzbga zzbgaVar) {
        this.f11837a = zzbgaVar;
    }

    public static zzazb zzb(zzbga zzbgaVar) {
        return (zzazb) zzdxm.zza(zzbgaVar.m4088c(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zzb(this.f11837a);
    }
}
