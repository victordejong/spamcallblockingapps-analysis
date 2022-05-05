package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvz.class */
public final class zzcvz implements zzdxg<String> {

    /* renamed from: a */
    private final zzcvw f13981a;

    public zzcvz(zzcvw zzcvwVar) {
        this.f13981a = zzcvwVar;
    }

    public static String zzc(zzcvw zzcvwVar) {
        return (String) zzdxm.zza(zzcvwVar.zzant(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zzc(this.f13981a);
    }
}
