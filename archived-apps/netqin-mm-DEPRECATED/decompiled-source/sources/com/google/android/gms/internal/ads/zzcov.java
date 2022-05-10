package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcov.class */
public final class zzcov implements zzeoy<PackageInfo> {

    /* renamed from: a */
    public final zzeph<Context> f26356a;

    /* renamed from: b */
    public final zzeph<ApplicationInfo> f26357b;

    public zzcov(zzeph<Context> zzephVar, zzeph<ApplicationInfo> zzephVar2) {
        this.f26356a = zzephVar;
        this.f26357b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcov m13964a(zzeph<Context> zzephVar, zzeph<ApplicationInfo> zzephVar2) {
        return new zzcov(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return zzcol.m13973a(this.f26356a.get(), this.f26357b.get());
    }
}
