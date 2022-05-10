package com.inmobi.commons.core.p513e;

import com.inmobi.commons.core.configs.AbstractC8346a;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.commons.core.e.d */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/e/d.class */
public class C8373d extends AbstractC8346a {

    /* renamed from: j */
    public static final String f32548j = "d";

    /* renamed from: h */
    public C8374a f32556h;

    /* renamed from: i */
    public C8374a f32557i;

    /* renamed from: b */
    public String f32550b = "https://telemetry.sdk.inmobi.com/metrics";

    /* renamed from: c */
    public long f32551c = 300;

    /* renamed from: d */
    public int f32552d = 3;

    /* renamed from: e */
    public int f32553e = 1000;

    /* renamed from: f */
    public long f32554f = 259200;

    /* renamed from: g */
    public long f32555g = 600;

    /* renamed from: a */
    public C8371c f32549a = new C8371c();

    /* renamed from: com.inmobi.commons.core.e.d$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/e/d$a.class */
    public final class C8374a {

        /* renamed from: a */
        public long f32558a;

        /* renamed from: b */
        public int f32559b;

        /* renamed from: c */
        public int f32560c;

        public C8374a() {
        }

        /* renamed from: a */
        public final boolean m5772a() {
            int i;
            int i2 = this.f32560c;
            return i2 <= C8373d.this.f32553e && this.f32558a > 0 && i2 > 0 && (i = this.f32559b) > 0 && i <= i2;
        }
    }

    public C8373d() {
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("retryInterval", 60L);
            jSONObject2.put("minBatchSize", 20);
            jSONObject2.put("maxBatchSize", 50);
            jSONObject.put("wifi", jSONObject2);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("retryInterval", 60L);
            jSONObject3.put("minBatchSize", 20);
            jSONObject3.put("maxBatchSize", 50);
            jSONObject.put("others", jSONObject3);
            m5775b(jSONObject);
        } catch (JSONException e) {
        }
    }

    /* renamed from: b */
    private void m5775b(JSONObject jSONObject) throws JSONException {
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            JSONObject jSONObject2 = jSONObject.getJSONObject(next);
            C8374a aVar = new C8374a();
            aVar.f32558a = jSONObject2.getLong("retryInterval");
            aVar.f32559b = jSONObject2.getInt("minBatchSize");
            aVar.f32560c = jSONObject2.getInt("maxBatchSize");
            char c = 65535;
            int hashCode = next.hashCode();
            if (hashCode != -1068855134) {
                if (hashCode != -1006804125) {
                    if (hashCode == 3649301 && next.equals("wifi")) {
                        c = 0;
                    }
                } else if (next.equals("others")) {
                    c = 2;
                }
            } else if (next.equals("mobile")) {
                c = 1;
            }
            if (c != 0) {
                this.f32556h = aVar;
            } else {
                this.f32557i = aVar;
            }
        }
    }

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: a */
    public final String mo5778a() {
        return "telemetry";
    }

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: a */
    public final void mo5777a(JSONObject jSONObject) throws JSONException {
        super.mo5777a(jSONObject);
        JSONObject jSONObject2 = jSONObject.getJSONObject("base");
        this.f32549a.f32543b = jSONObject2.getBoolean("enabled");
        this.f32549a.f32542a = jSONObject2.getInt("samplingFactor");
        this.f32550b = jSONObject.getString("telemetryUrl");
        this.f32551c = jSONObject.getLong("processingInterval");
        this.f32552d = jSONObject.getInt("maxRetryCount");
        this.f32553e = jSONObject.getInt("maxEventsToPersist");
        this.f32554f = jSONObject.getLong("eventTTL");
        this.f32555g = jSONObject.getLong("txLatency");
        m5775b(jSONObject.getJSONObject("networkType"));
    }

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: b */
    public final JSONObject mo5776b() throws JSONException {
        JSONObject b = super.mo5776b();
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("enabled", this.f32549a.f32543b);
        jSONObject.put("samplingFactor", this.f32549a.f32542a);
        b.put("base", jSONObject);
        b.put("telemetryUrl", this.f32550b);
        b.put("processingInterval", this.f32551c);
        b.put("maxRetryCount", this.f32552d);
        b.put("maxEventsToPersist", this.f32553e);
        b.put("eventTTL", this.f32554f);
        b.put("txLatency", this.f32555g);
        JSONObject jSONObject2 = new JSONObject();
        C8374a aVar = this.f32557i;
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("retryInterval", aVar.f32558a);
        jSONObject3.put("minBatchSize", aVar.f32559b);
        jSONObject3.put("maxBatchSize", aVar.f32560c);
        jSONObject2.put("wifi", jSONObject3);
        C8374a aVar2 = this.f32556h;
        JSONObject jSONObject4 = new JSONObject();
        jSONObject4.put("retryInterval", aVar2.f32558a);
        jSONObject4.put("minBatchSize", aVar2.f32559b);
        jSONObject4.put("maxBatchSize", aVar2.f32560c);
        jSONObject2.put("others", jSONObject4);
        b.put("networkType", jSONObject2);
        return b;
    }

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: c */
    public final boolean mo5774c() {
        if (this.f32549a == null || this.f32550b.trim().length() == 0) {
            return false;
        }
        if (!this.f32550b.startsWith("http://") && !this.f32550b.startsWith("https://")) {
            return false;
        }
        long j = this.f32555g;
        long j2 = this.f32551c;
        if (j < j2) {
            return false;
        }
        long j3 = this.f32554f;
        return j <= j3 && j3 >= j2 && this.f32556h.m5772a() && this.f32557i.m5772a() && this.f32551c > 0 && this.f32552d >= 0 && this.f32555g > 0 && this.f32554f > 0 && this.f32553e > 0;
    }

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: d */
    public final AbstractC8346a mo5773d() {
        return new C8373d();
    }
}
