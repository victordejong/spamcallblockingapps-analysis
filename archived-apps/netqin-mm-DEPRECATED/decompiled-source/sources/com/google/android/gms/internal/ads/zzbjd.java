package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjd.class */
public final class zzbjd implements zzeoy<Context> {

    /* renamed from: a */
    public final zzbja f25048a;

    public zzbjd(zzbja zzbjaVar) {
        this.f25048a = zzbjaVar;
    }

    /* renamed from: a */
    public static Context m15418a(zzbja zzbjaVar) {
        Context a = zzbjaVar.m15428a();
        zzepe.m12187a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m15418a(this.f25048a);
    }
}
