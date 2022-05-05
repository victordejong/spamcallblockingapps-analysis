package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwa.class */
public final class zzbwa implements zzdxg<JSONObject> {

    /* renamed from: a */
    private final zzbvy f12524a;

    public zzbwa(zzbvy zzbvyVar) {
        this.f12524a = zzbvyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (JSONObject) zzdxm.zza(this.f12524a.zzais(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
