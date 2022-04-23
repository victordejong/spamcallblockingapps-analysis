package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcqa.class */
public final class zzcqa implements zzcub<Object> {

    /* renamed from: a */
    private final zzdhe<String> f13718a;

    /* renamed from: b */
    private final Executor f13719b;

    public zzcqa(zzdhe<String> zzdheVar, Executor executor) {
        this.f13718a = zzdheVar;
        this.f13719b = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<Object> zzanc() {
        return zzdgs.zzb(this.f13718a, C2308vn.f10627a, this.f13719b);
    }
}
