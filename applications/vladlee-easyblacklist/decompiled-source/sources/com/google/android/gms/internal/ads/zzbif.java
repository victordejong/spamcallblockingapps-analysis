package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbif.class */
public final class zzbif implements zzdxg<zzaks> {

    /* renamed from: a */
    private static final zzbif f11914a = new zzbif();

    public static zzbif zzafe() {
        return f11914a;
    }

    public static zzaks zzaff() {
        return (zzaks) zzdxm.zza(new zzaks(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zzaff();
    }
}
