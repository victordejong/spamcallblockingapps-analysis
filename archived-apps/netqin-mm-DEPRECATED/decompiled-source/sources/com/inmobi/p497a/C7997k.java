package com.inmobi.p497a;

import com.inmobi.ads.C8303s;
import com.inmobi.ads.C8311w;
import com.inmobi.commons.core.utilities.p516b.C8405h;
import java.util.Calendar;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.a.k */
/* loaded from: classes2-dex2jar.jar:com/inmobi/a/k.class */
public class C7997k {

    /* renamed from: d */
    public static final String f31213d = "k";

    /* renamed from: a */
    public Map<String, Object> f31214a;

    /* renamed from: b */
    public C8405h f31215b;

    /* renamed from: c */
    public List<C7998l> f31216c;

    /* renamed from: e */
    public long f31217e = Calendar.getInstance().getTimeInMillis();

    /* renamed from: a */
    public final JSONObject m6766a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ts", this.f31217e);
            if (this.f31214a != null && !this.f31214a.isEmpty()) {
                jSONObject.put(C7998l.f31218d, new JSONObject(this.f31214a));
            }
            if (this.f31215b != null) {
                jSONObject.put(C8303s.f32309d, this.f31215b.m5653b());
            }
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < this.f31216c.size(); i++) {
                jSONArray.put(this.f31216c.get(i).m6765a());
            }
            if (jSONArray.length() > 0) {
                jSONObject.put(C8311w.f32327d, jSONArray);
            }
        } catch (JSONException e) {
        }
        return jSONObject;
    }
}
