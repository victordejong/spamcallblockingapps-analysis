package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.xt */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xt.class */
final /* synthetic */ class C2368xt implements zzcty {

    /* renamed from: a */
    static final zzcty f10699a = new C2368xt();

    private C2368xt() {
    }

    @Override // com.google.android.gms.internal.ads.zzcty
    public final void zzr(Object obj) {
        try {
            ((JSONObject) obj).getJSONObject("sdk_env").put("container_version", 12451009);
        } catch (JSONException e) {
        }
    }
}
