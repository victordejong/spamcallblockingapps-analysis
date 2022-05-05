package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.ts */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ts.class */
final /* synthetic */ class C2259ts implements zzdgf {

    /* renamed from: a */
    static final zzdgf f10526a = new C2259ts();

    private C2259ts() {
    }

    @Override // com.google.android.gms.internal.ads.zzdgf
    public final zzdhe zzf(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        if (jSONObject.optBoolean("success")) {
            return zzdgs.zzaj(jSONObject.getJSONObject("json").getJSONArray("ads"));
        }
        throw new zzajr("process json failed");
    }
}
