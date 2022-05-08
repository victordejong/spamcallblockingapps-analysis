package p081h.p203i.p325c.p327b0.p328p;

import java.util.Date;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: h.i.c.b0.p.f */
/* loaded from: classes2-dex2jar.jar:h/i/c/b0/p/f.class */
public class C9419f {

    /* renamed from: f */
    public static final Date f21482f = new Date(0);

    /* renamed from: a */
    public JSONObject f21483a;

    /* renamed from: b */
    public JSONObject f21484b;

    /* renamed from: c */
    public Date f21485c;

    /* renamed from: d */
    public JSONArray f21486d;

    /* renamed from: e */
    public JSONObject f21487e;

    /* renamed from: h.i.c.b0.p.f$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/b0/p/f$b.class */
    public static class C9421b {

        /* renamed from: a */
        public JSONObject f21488a;

        /* renamed from: b */
        public Date f21489b;

        /* renamed from: c */
        public JSONArray f21490c;

        /* renamed from: d */
        public JSONObject f21491d;

        public C9421b() {
            this.f21488a = new JSONObject();
            this.f21489b = C9419f.f21482f;
            this.f21490c = new JSONArray();
            this.f21491d = new JSONObject();
        }

        /* renamed from: a */
        public C9421b m15248a(Date date) {
            this.f21489b = date;
            return this;
        }

        /* renamed from: a */
        public C9421b m15247a(Map<String, String> map) {
            this.f21488a = new JSONObject(map);
            return this;
        }

        /* renamed from: a */
        public C9421b m15246a(JSONArray jSONArray) {
            try {
                this.f21490c = new JSONArray(jSONArray.toString());
            } catch (JSONException e) {
            }
            return this;
        }

        /* renamed from: a */
        public C9421b m15245a(JSONObject jSONObject) {
            try {
                this.f21488a = new JSONObject(jSONObject.toString());
            } catch (JSONException e) {
            }
            return this;
        }

        /* renamed from: a */
        public C9419f m15249a() throws JSONException {
            return new C9419f(this.f21488a, this.f21489b, this.f21490c, this.f21491d);
        }

        /* renamed from: b */
        public C9421b m15244b(JSONObject jSONObject) {
            try {
                this.f21491d = new JSONObject(jSONObject.toString());
            } catch (JSONException e) {
            }
            return this;
        }
    }

    public C9419f(JSONObject jSONObject, Date date, JSONArray jSONArray, JSONObject jSONObject2) throws JSONException {
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("configs_key", jSONObject);
        jSONObject3.put("fetch_time_key", date.getTime());
        jSONObject3.put("abt_experiments_key", jSONArray);
        jSONObject3.put("personalization_metadata_key", jSONObject2);
        this.f21484b = jSONObject;
        this.f21485c = date;
        this.f21486d = jSONArray;
        this.f21487e = jSONObject2;
        this.f21483a = jSONObject3;
    }

    /* renamed from: a */
    public static C9419f m15255a(JSONObject jSONObject) throws JSONException {
        return new C9419f(jSONObject.getJSONObject("configs_key"), new Date(jSONObject.getLong("fetch_time_key")), jSONObject.getJSONArray("abt_experiments_key"), jSONObject.getJSONObject("personalization_metadata_key"));
    }

    /* renamed from: f */
    public static C9421b m15250f() {
        return new C9421b();
    }

    /* renamed from: a */
    public JSONArray m15256a() {
        return this.f21486d;
    }

    /* renamed from: b */
    public JSONObject m15254b() {
        return this.f21484b;
    }

    /* renamed from: c */
    public Date m15253c() {
        return this.f21485c;
    }

    /* renamed from: d */
    public JSONObject m15252d() {
        return this.f21487e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C9419f)) {
            return false;
        }
        return this.f21483a.toString().equals(((C9419f) obj).toString());
    }

    public int hashCode() {
        return this.f21483a.hashCode();
    }

    public String toString() {
        return this.f21483a.toString();
    }
}
