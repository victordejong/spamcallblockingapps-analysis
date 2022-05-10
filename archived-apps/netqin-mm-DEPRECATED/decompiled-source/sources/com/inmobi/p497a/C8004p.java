package com.inmobi.p497a;

import com.google.logging.type.LogSeverity;
import com.inmobi.ads.C8311w;
import com.inmobi.commons.core.configs.AbstractC8346a;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.a.p */
/* loaded from: classes2-dex2jar.jar:com/inmobi/a/p.class */
public final class C8004p extends AbstractC8346a {

    /* renamed from: d */
    public static final String f31249d = AbstractC8346a.class.getSimpleName();

    /* renamed from: a */
    public C8006b f31250a = new C8006b();

    /* renamed from: b */
    public C8005a f31251b = new C8005a();

    /* renamed from: c */
    public JSONObject f31252c;

    /* renamed from: com.inmobi.a.p$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/a/p$a.class */
    public static final class C8005a {

        /* renamed from: a */
        public boolean f31253a = false;

        /* renamed from: b */
        public String f31254b = "https://dock.inmobi.com/carb/v1/i";

        /* renamed from: c */
        public String f31255c = "https://dock.inmobi.com/carb/v1/o";

        /* renamed from: d */
        public int f31256d = 86400;

        /* renamed from: e */
        public int f31257e = 3;

        /* renamed from: f */
        public int f31258f = 60;

        /* renamed from: g */
        public int f31259g = 60;

        /* renamed from: h */
        public long f31260h = 307200;
    }

    /* renamed from: com.inmobi.a.p$b */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/a/p$b.class */
    public static final class C8006b {

        /* renamed from: a */
        public boolean f31261a = false;

        /* renamed from: b */
        public int f31262b = LogSeverity.NOTICE_VALUE;

        /* renamed from: c */
        public int f31263c = 3;

        /* renamed from: d */
        public int f31264d = 50;

        /* renamed from: e */
        public String f31265e = "https://sdkm.w.inmobi.com/user/e.asm";

        /* renamed from: f */
        public int f31266f = 3;

        /* renamed from: g */
        public int f31267g = 60;

        /* renamed from: h */
        public boolean f31268h = false;

        /* renamed from: i */
        public boolean f31269i = false;

        /* renamed from: j */
        public int f31270j = 0;

        /* renamed from: k */
        public boolean f31271k = false;

        /* renamed from: l */
        public boolean f31272l = false;

        /* renamed from: m */
        public int f31273m = 0;

        /* renamed from: n */
        public boolean f31274n = false;

        /* renamed from: o */
        public boolean f31275o = false;

        /* renamed from: p */
        public boolean f31276p = false;

        /* renamed from: a */
        public final boolean m6737a() {
            return this.f31268h && this.f31261a;
        }

        /* renamed from: b */
        public final boolean m6736b() {
            return this.f31269i && this.f31261a;
        }
    }

    public C8004p() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("enabled", true);
            jSONObject.put("samplingFactor", 0);
            this.f31252c = jSONObject;
        } catch (JSONException e) {
        }
    }

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: a */
    public final String mo5778a() {
        return "signals";
    }

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: a */
    public final void mo5777a(JSONObject jSONObject) throws JSONException {
        super.mo5777a(jSONObject);
        JSONObject jSONObject2 = jSONObject.getJSONObject("ice");
        this.f31250a.f31262b = jSONObject2.getInt("sampleInterval");
        this.f31250a.f31264d = jSONObject2.getInt("sampleHistorySize");
        this.f31250a.f31263c = jSONObject2.getInt("stopRequestTimeout");
        this.f31250a.f31261a = jSONObject2.getBoolean("enabled");
        this.f31250a.f31265e = jSONObject2.getString("endPoint");
        this.f31250a.f31266f = jSONObject2.getInt("maxRetries");
        this.f31250a.f31267g = jSONObject2.getInt("retryInterval");
        this.f31250a.f31268h = jSONObject2.getBoolean("locationEnabled");
        this.f31250a.f31269i = jSONObject2.getBoolean("sessionEnabled");
        JSONObject jSONObject3 = jSONObject2.getJSONObject(C8311w.f32327d);
        this.f31250a.f31270j = jSONObject3.getInt("wf");
        this.f31250a.f31272l = jSONObject3.getBoolean("cwe");
        this.f31250a.f31271k = jSONObject3.getBoolean("vwe");
        JSONObject jSONObject4 = jSONObject2.getJSONObject("c");
        this.f31250a.f31274n = jSONObject4.getBoolean("oe");
        this.f31250a.f31276p = jSONObject4.getBoolean("cce");
        this.f31250a.f31275o = jSONObject4.getBoolean("vce");
        this.f31250a.f31273m = jSONObject4.getInt("cof");
        JSONObject jSONObject5 = jSONObject.getJSONObject("carb");
        this.f31251b.f31253a = jSONObject5.getBoolean("enabled");
        this.f31251b.f31254b = jSONObject5.getString("getEndPoint");
        this.f31251b.f31255c = jSONObject5.getString("postEndPoint");
        this.f31251b.f31256d = jSONObject5.getInt("retrieveFrequency");
        this.f31251b.f31257e = jSONObject5.getInt("maxRetries");
        this.f31251b.f31258f = jSONObject5.getInt("retryInterval");
        this.f31251b.f31259g = jSONObject5.getInt("timeoutInterval");
        this.f31251b.f31260h = jSONObject5.getLong("maxGetResponseSize");
        this.f31252c = jSONObject.optJSONObject("telemetry");
    }

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: b */
    public final JSONObject mo5776b() throws JSONException {
        JSONObject b = super.mo5776b();
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("sampleInterval", this.f31250a.f31262b);
        jSONObject.put("stopRequestTimeout", this.f31250a.f31263c);
        jSONObject.put("sampleHistorySize", this.f31250a.f31264d);
        jSONObject.put("enabled", this.f31250a.f31261a);
        jSONObject.put("endPoint", this.f31250a.f31265e);
        jSONObject.put("maxRetries", this.f31250a.f31266f);
        jSONObject.put("retryInterval", this.f31250a.f31267g);
        jSONObject.put("locationEnabled", this.f31250a.f31268h);
        jSONObject.put("sessionEnabled", this.f31250a.f31269i);
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("wf", this.f31250a.f31270j);
        jSONObject2.put("vwe", this.f31250a.f31271k);
        jSONObject2.put("cwe", this.f31250a.f31272l);
        jSONObject.put(C8311w.f32327d, jSONObject2);
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("cof", this.f31250a.f31273m);
        jSONObject3.put("vce", this.f31250a.f31275o);
        jSONObject3.put("cce", this.f31250a.f31276p);
        jSONObject3.put("oe", this.f31250a.f31274n);
        jSONObject.put("c", jSONObject3);
        b.put("ice", jSONObject);
        JSONObject jSONObject4 = new JSONObject();
        jSONObject4.put("enabled", this.f31251b.f31253a);
        jSONObject4.put("getEndPoint", this.f31251b.f31254b);
        jSONObject4.put("postEndPoint", this.f31251b.f31255c);
        jSONObject4.put("retrieveFrequency", this.f31251b.f31256d);
        jSONObject4.put("maxRetries", this.f31251b.f31257e);
        jSONObject4.put("retryInterval", this.f31251b.f31258f);
        jSONObject4.put("timeoutInterval", this.f31251b.f31259g);
        jSONObject4.put("maxGetResponseSize", this.f31251b.f31260h);
        b.put("carb", jSONObject4);
        b.put("telemetry", this.f31252c);
        return b;
    }

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: c */
    public final boolean mo5774c() {
        C8006b bVar = this.f31250a;
        if (bVar.f31262b < 0 || bVar.f31264d < 0 || bVar.f31263c < 0 || bVar.f31265e.trim().length() == 0) {
            return false;
        }
        C8006b bVar2 = this.f31250a;
        if (bVar2.f31266f < 0 || bVar2.f31267g < 0 || bVar2.f31270j < 0 || bVar2.f31273m < 0 || this.f31251b.f31254b.trim().length() == 0 || this.f31251b.f31255c.trim().length() == 0) {
            return false;
        }
        if (!this.f31251b.f31254b.startsWith("http://") && !this.f31251b.f31254b.startsWith("https://")) {
            return false;
        }
        if (!this.f31251b.f31255c.startsWith("http://") && !this.f31251b.f31255c.startsWith("https://")) {
            return false;
        }
        C8005a aVar = this.f31251b;
        return aVar.f31256d >= 0 && aVar.f31257e >= 0 && aVar.f31258f >= 0 && aVar.f31259g >= 0 && aVar.f31260h >= 0;
    }

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: d */
    public final AbstractC8346a mo5773d() {
        return new C8004p();
    }
}
