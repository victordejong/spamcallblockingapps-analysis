package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdhw.class */
public final class zzdhw implements zzdgu<JSONObject> {

    /* renamed from: a */
    public String f27351a;

    public zzdhw(String str) {
        this.f27351a = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(JSONObject jSONObject) {
        try {
            JSONObject a = zzbao.m15955a(jSONObject, "pii");
            if (!TextUtils.isEmpty(this.f27351a)) {
                a.put("attok", this.f27351a);
            }
        } catch (JSONException e) {
            zzayp.m16154e("Failed putting attestation token.", e);
        }
    }
}
