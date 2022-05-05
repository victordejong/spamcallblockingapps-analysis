package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjv.class */
public final class zzbjv implements zzdxg<View> {

    /* renamed from: a */
    private final zzbjw f12007a;

    public zzbjv(zzbjw zzbjwVar) {
        this.f12007a = zzbjwVar;
    }

    public static View zza(zzbjw zzbjwVar) {
        return (View) zzdxm.zza(zzbjwVar.zzafu(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zza(this.f12007a);
    }
}
