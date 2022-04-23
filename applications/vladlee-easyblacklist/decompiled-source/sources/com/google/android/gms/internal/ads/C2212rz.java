package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.rz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/rz.class */
final /* synthetic */ class C2212rz implements zzdby {

    /* renamed from: a */
    static final zzdby f10446a = new C2212rz();

    private C2212rz() {
    }

    @Override // com.google.android.gms.internal.ads.zzdby
    public final Object apply(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        zzavs.zzed("Ad request signals:");
        zzavs.zzed(jSONObject.toString(2));
        return jSONObject;
    }
}
