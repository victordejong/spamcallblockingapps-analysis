package com.inmobi.commons.core.p509a;

import com.inmobi.commons.core.configs.AbstractC8346a;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.commons.core.a.b */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/a/b.class */
public class C8332b extends AbstractC8346a {

    /* renamed from: m */
    public static final String f32395m = "b";

    /* renamed from: a */
    public String f32396a = "https://crash-metrics.sdk.inmobi.com/trace";

    /* renamed from: b */
    public long f32397b = 60;

    /* renamed from: c */
    public int f32398c = 3;

    /* renamed from: d */
    public int f32399d = 50;

    /* renamed from: e */
    public long f32400e = 259200;

    /* renamed from: f */
    public long f32401f = 120;

    /* renamed from: g */
    public boolean f32402g = false;

    /* renamed from: h */
    public boolean f32403h = false;

    /* renamed from: i */
    public JSONObject f32404i;

    /* renamed from: j */
    public JSONObject f32405j;

    /* renamed from: k */
    public C8333a f32406k;

    /* renamed from: l */
    public C8333a f32407l;

    /* renamed from: com.inmobi.commons.core.a.b$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/a/b$a.class */
    public final class C8333a {

        /* renamed from: a */
        public long f32408a;

        /* renamed from: b */
        public int f32409b;

        /* renamed from: c */
        public int f32410c;

        public C8333a() {
        }

        /* renamed from: a */
        public final boolean m5869a() {
            int i;
            int i2 = this.f32410c;
            return i2 <= C8332b.this.f32399d && this.f32408a > 0 && i2 > 0 && (i = this.f32409b) > 0 && i <= i2;
        }
    }

    public C8332b() {
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("retryInterval", 10L);
            jSONObject2.put("minBatchSize", 1);
            jSONObject2.put("maxBatchSize", 2);
            jSONObject.put("wifi", jSONObject2);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("retryInterval", 10L);
            jSONObject3.put("minBatchSize", 1);
            jSONObject3.put("maxBatchSize", 2);
            jSONObject.put("others", jSONObject3);
            m5871b(jSONObject);
            JSONObject jSONObject4 = new JSONObject();
            JSONObject jSONObject5 = new JSONObject();
            jSONObject5.put("enabled", false);
            jSONObject5.put("samplingFactor", 0);
            jSONObject4.put("catchEvent", jSONObject5);
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("enabled", false);
            jSONObject6.put("samplingFactor", 0);
            jSONObject4.put("crashEvent", jSONObject6);
            m5870c(jSONObject4);
        } catch (JSONException e) {
        }
    }

    /* renamed from: b */
    private void m5871b(JSONObject jSONObject) throws JSONException {
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            JSONObject jSONObject2 = jSONObject.getJSONObject(next);
            C8333a aVar = new C8333a();
            aVar.f32408a = jSONObject2.getLong("retryInterval");
            aVar.f32409b = jSONObject2.getInt("minBatchSize");
            aVar.f32410c = jSONObject2.getInt("maxBatchSize");
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
                this.f32406k = aVar;
            } else {
                this.f32407l = aVar;
            }
        }
    }

    /* renamed from: c */
    private void m5870c(JSONObject jSONObject) throws JSONException {
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            char c = 65535;
            int hashCode = next.hashCode();
            if (hashCode != -488533857) {
                if (hashCode == 1411010355 && next.equals("crashEvent")) {
                    c = 1;
                }
            } else if (next.equals("catchEvent")) {
                c = 0;
            }
            if (c == 0) {
                this.f32405j = jSONObject.getJSONObject(next);
            } else if (c == 1) {
                this.f32404i = jSONObject.getJSONObject(next);
            }
        }
    }

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: a */
    public final String mo5778a() {
        return "crashReporting";
    }

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: a */
    public final void mo5777a(JSONObject jSONObject) throws JSONException {
        super.mo5777a(jSONObject);
        this.f32396a = jSONObject.getString("url");
        this.f32397b = jSONObject.getLong("processingInterval");
        this.f32398c = jSONObject.getInt("maxRetryCount");
        this.f32399d = jSONObject.getInt("maxEventsToPersist");
        this.f32400e = jSONObject.getLong("eventTTL");
        this.f32401f = jSONObject.getLong("txLatency");
        this.f32402g = jSONObject.getBoolean("crashEnabled");
        this.f32403h = jSONObject.getBoolean("catchEnabled");
        m5871b(jSONObject.getJSONObject("networkType"));
        m5870c(jSONObject.getJSONObject("telemetry"));
    }

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: b */
    public final JSONObject mo5776b() throws JSONException {
        JSONObject b = super.mo5776b();
        new JSONObject();
        b.put("url", this.f32396a);
        b.put("processingInterval", this.f32397b);
        b.put("maxRetryCount", this.f32398c);
        b.put("maxEventsToPersist", this.f32399d);
        b.put("eventTTL", this.f32400e);
        b.put("txLatency", this.f32401f);
        b.put("crashEnabled", this.f32402g);
        b.put("catchEnabled", this.f32403h);
        JSONObject jSONObject = new JSONObject();
        C8333a aVar = this.f32407l;
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("retryInterval", aVar.f32408a);
        jSONObject2.put("minBatchSize", aVar.f32409b);
        jSONObject2.put("maxBatchSize", aVar.f32410c);
        jSONObject.put("wifi", jSONObject2);
        C8333a aVar2 = this.f32406k;
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("retryInterval", aVar2.f32408a);
        jSONObject3.put("minBatchSize", aVar2.f32409b);
        jSONObject3.put("maxBatchSize", aVar2.f32410c);
        jSONObject.put("others", jSONObject3);
        b.put("networkType", jSONObject);
        JSONObject jSONObject4 = new JSONObject();
        jSONObject4.put("crashEvent", this.f32404i);
        jSONObject4.put("catchEvent", this.f32405j);
        b.put("telemetry", jSONObject4);
        return b;
    }

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: c */
    public final boolean mo5774c() {
        if (this.f32396a.trim().length() == 0) {
            return false;
        }
        if (!this.f32396a.startsWith("http://") && !this.f32396a.startsWith("https://")) {
            return false;
        }
        long j = this.f32401f;
        long j2 = this.f32397b;
        if (j < j2) {
            return false;
        }
        long j3 = this.f32400e;
        return j <= j3 && j3 >= j2 && this.f32406k.m5869a() && this.f32407l.m5869a() && this.f32397b > 0 && this.f32398c >= 0 && this.f32401f > 0 && this.f32400e > 0 && this.f32399d > 0;
    }

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: d */
    public final AbstractC8346a mo5773d() {
        return new C8332b();
    }
}
