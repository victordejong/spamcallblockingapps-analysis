package com.inmobi.commons.core.configs;

import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.commons.core.configs.a */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/configs/a.class */
public abstract class AbstractC8346a {

    /* renamed from: p */
    public C8347a f32471p = new C8347a();

    /* renamed from: com.inmobi.commons.core.configs.a$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/configs/a$a.class */
    public static final class C8347a {

        /* renamed from: a */
        public HashMap<String, Boolean> f32472a;

        public C8347a() {
            HashMap<String, Boolean> hashMap = new HashMap<>();
            this.f32472a = hashMap;
            hashMap.put("O1", true);
            this.f32472a.put("UM5", true);
            this.f32472a.put("GPID", true);
            this.f32472a.put("SHA1_IMEI", false);
            this.f32472a.put("MD5_IMEI", false);
        }
    }

    /* renamed from: a */
    public abstract String mo5778a();

    /* renamed from: a */
    public void mo5777a(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = jSONObject.getJSONObject("includeIds");
        for (int i = 0; i < jSONObject2.length(); i++) {
            this.f32471p.f32472a.put("O1", Boolean.valueOf(jSONObject2.getBoolean("O1")));
            this.f32471p.f32472a.put("UM5", Boolean.valueOf(jSONObject2.getBoolean("UM5")));
            this.f32471p.f32472a.put("GPID", Boolean.valueOf(jSONObject2.getBoolean("GPID")));
            this.f32471p.f32472a.put("SHA1_IMEI", Boolean.valueOf(jSONObject2.optBoolean("SHA1_IMEI", false)));
            this.f32471p.f32472a.put("MD5_IMEI", Boolean.valueOf(jSONObject2.optBoolean("MD5_IMEI", false)));
        }
    }

    /* renamed from: b */
    public JSONObject mo5776b() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("O1", this.f32471p.f32472a.get("O1"));
        jSONObject2.put("UM5", this.f32471p.f32472a.get("UM5"));
        jSONObject2.put("GPID", this.f32471p.f32472a.get("GPID"));
        jSONObject2.put("SHA1_IMEI", this.f32471p.f32472a.get("SHA1_IMEI"));
        jSONObject2.put("MD5_IMEI", this.f32471p.f32472a.get("MD5_IMEI"));
        jSONObject.put("includeIds", jSONObject2);
        return jSONObject;
    }

    /* renamed from: c */
    public abstract boolean mo5774c();

    /* renamed from: d */
    public abstract AbstractC8346a mo5773d();

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj != null) {
            if (obj.getClass() != getClass()) {
                z = false;
            } else {
                z = false;
                if (mo5778a().equals(((AbstractC8346a) obj).mo5778a())) {
                    z = true;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return mo5778a().hashCode();
    }
}
