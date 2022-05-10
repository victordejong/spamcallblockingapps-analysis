package com.inmobi.p497a.p499b;

import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.a.b.a */
/* loaded from: classes2-dex2jar.jar:com/inmobi/a/b/a.class */
public class C7984a {

    /* renamed from: e */
    public static final String f31179e = "a";

    /* renamed from: a */
    public long f31180a;

    /* renamed from: b */
    public String f31181b;

    /* renamed from: c */
    public int f31182c;

    /* renamed from: d */
    public int f31183d;

    /* renamed from: a */
    public final JSONObject m6786a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("bssid", this.f31180a);
            jSONObject.put("essid", this.f31181b);
        } catch (JSONException e) {
        }
        return jSONObject;
    }
}
