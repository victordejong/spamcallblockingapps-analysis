package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjr.class */
public final class zzbjr implements zzdxg<JSONObject> {

    /* renamed from: a */
    private final zzdxp<zzczl> f11999a;

    private zzbjr(zzdxp<zzczl> zzdxpVar) {
        this.f11999a = zzdxpVar;
    }

    public static zzbjr zzc(zzdxp<zzczl> zzdxpVar) {
        return new zzbjr(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zzbjs.zza(this.f11999a.get());
    }
}
