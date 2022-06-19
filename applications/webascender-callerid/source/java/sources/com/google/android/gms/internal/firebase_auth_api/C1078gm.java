package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.common.internal.C0931r;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.gm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/gm.class */
public final class C1078gm {

    /* renamed from: a */
    private final String f3717a;

    public C1078gm(String str) {
        C0931r.m3312g(str);
        this.f3717a = str;
    }

    /* renamed from: a */
    public final JSONObject m2842a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("appSignatureHash", this.f3717a);
        return jSONObject;
    }
}
