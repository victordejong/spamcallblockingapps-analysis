package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdbs.class */
public final class zzdbs implements zzdxg<zzdhd> {

    /* renamed from: a */
    private static final zzdbs f14157a = new zzdbs();

    public static zzdbs zzapw() {
        return f14157a;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        zzdhd zzdhdVar;
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcpc)).booleanValue()) {
            zzdhdVar = zzazd.zzdwg;
        } else {
            zzdhdVar = ((Boolean) zzve.zzoy().zzd(zzzn.zzcpb)).booleanValue() ? zzazd.zzdwe : zzazd.zzdwi;
        }
        return (zzdhd) zzdxm.zza(zzdhdVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}
