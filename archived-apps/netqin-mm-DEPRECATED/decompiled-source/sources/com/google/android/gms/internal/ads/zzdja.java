package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdja.class */
public final class zzdja implements zzeoy<ApplicationInfo> {

    /* renamed from: a */
    public final zzdiy f27405a;

    public zzdja(zzdiy zzdiyVar) {
        this.f27405a = zzdiyVar;
    }

    /* renamed from: a */
    public static ApplicationInfo m13581a(zzdiy zzdiyVar) {
        ApplicationInfo f = zzdiyVar.m13584f();
        zzepe.m12187a(f, "Cannot return null from a non-@Nullable @Provides method");
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m13581a(this.f27405a);
    }
}
