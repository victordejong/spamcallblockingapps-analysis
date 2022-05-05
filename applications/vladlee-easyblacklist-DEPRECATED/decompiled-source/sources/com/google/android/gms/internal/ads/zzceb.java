package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzceb.class */
public final class zzceb implements zzdxg<zzcec> {

    /* renamed from: a */
    private final zzdxp<Clock> f13018a;

    public zzceb(zzdxp<Clock> zzdxpVar) {
        this.f13018a = zzdxpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcec(this.f13018a.get());
    }
}
