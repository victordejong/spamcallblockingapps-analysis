package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvy.class */
public final class zzcvy implements zzdxg<ApplicationInfo> {

    /* renamed from: a */
    private final zzcvw f13980a;

    public zzcvy(zzcvw zzcvwVar) {
        this.f13980a = zzcvwVar;
    }

    public static ApplicationInfo zzb(zzcvw zzcvwVar) {
        return (ApplicationInfo) zzdxm.zza(zzcvwVar.zzany(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zzb(this.f13980a);
    }
}
