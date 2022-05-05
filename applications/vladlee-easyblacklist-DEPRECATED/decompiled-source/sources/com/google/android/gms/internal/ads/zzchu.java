package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzchu.class */
public final class zzchu implements zzdxg<zzchr> {

    /* renamed from: a */
    private final zzdxp<Context> f13154a;

    private zzchu(zzdxp<Context> zzdxpVar) {
        this.f13154a = zzdxpVar;
    }

    public static zzchu zzac(zzdxp<Context> zzdxpVar) {
        return new zzchu(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzchr(this.f13154a.get());
    }
}
