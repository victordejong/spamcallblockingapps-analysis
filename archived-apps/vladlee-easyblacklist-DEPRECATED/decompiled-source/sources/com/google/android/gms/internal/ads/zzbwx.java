package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwx.class */
public final class zzbwx implements zzdxg<zzbwv> {

    /* renamed from: a */
    private final zzdxp<zzczl> f12605a;

    /* renamed from: b */
    private final zzdxp<JSONObject> f12606b;

    public zzbwx(zzdxp<zzczl> zzdxpVar, zzdxp<JSONObject> zzdxpVar2) {
        this.f12605a = zzdxpVar;
        this.f12606b = zzdxpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbwv(this.f12605a.get(), this.f12606b.get());
    }
}
