package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvn.class */
public final class zzcvn implements zzcty<JSONObject> {

    /* renamed from: a */
    private List<String> f13962a;

    public zzcvn(List<String> list) {
        this.f13962a = list;
    }

    @Override // com.google.android.gms.internal.ads.zzcty
    public final /* synthetic */ void zzr(JSONObject jSONObject) {
        try {
            jSONObject.put("eid", TextUtils.join(",", this.f13962a));
        } catch (JSONException e) {
            zzavs.zzed("Failed putting experiment ids.");
        }
    }
}
