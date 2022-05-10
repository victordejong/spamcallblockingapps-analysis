package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbvy.class */
public final class zzbvy implements zzeoy<zzbvw> {

    /* renamed from: a */
    public final zzeph<Set<zzcab<zzbwb>>> f25573a;

    public zzbvy(zzeph<Set<zzcab<zzbwb>>> zzephVar) {
        this.f25573a = zzephVar;
    }

    /* renamed from: a */
    public static zzbvy m15009a(zzeph<Set<zzcab<zzbwb>>> zzephVar) {
        return new zzbvy(zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzbvw(this.f25573a.get());
    }
}
