package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzi.class */
public final class zzbzi implements zzeoy<Set<zzcab<zzbwb>>> {

    /* renamed from: a */
    public final zzbys f25636a;

    public zzbzi(zzbys zzbysVar) {
        this.f25636a = zzbysVar;
    }

    /* renamed from: a */
    public static zzbzi m14881a(zzbys zzbysVar) {
        return new zzbzi(zzbysVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set<zzcab<zzbwb>> i = this.f25636a.m14927i();
        zzepe.m12187a(i, "Cannot return null from a non-@Nullable @Provides method");
        return i;
    }
}
