package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwe.class */
public final class zzbwe implements zzdxg<zzbst> {

    /* renamed from: a */
    private final zzdxp<Context> f12530a;

    /* renamed from: b */
    private final zzdxp<zzczl> f12531b;

    public zzbwe(zzdxp<Context> zzdxpVar, zzdxp<zzczl> zzdxpVar2) {
        this.f12530a = zzdxpVar;
        this.f12531b = zzdxpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbst) zzdxm.zza(new zzbst(this.f12530a.get(), new HashSet(), this.f12531b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
