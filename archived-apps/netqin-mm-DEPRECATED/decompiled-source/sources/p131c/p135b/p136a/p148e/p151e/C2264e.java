package p131c.p135b.p136a.p148e.p151e;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
/* renamed from: c.b.a.e.e.e */
/* loaded from: classes-dex2jar.jar:c/b/a/e/e/e.class */
public class C2264e {

    /* renamed from: c */
    public final C2341l f8872c;

    /* renamed from: d */
    public final C2374t f8873d;

    /* renamed from: b */
    public final Object f8871b = new Object();

    /* renamed from: a */
    public final List<C2266b> f8870a = new ArrayList();

    /* renamed from: c.b.a.e.e.e$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/e/e$b.class */
    public static class C2266b {

        /* renamed from: a */
        public final Long f8874a;

        /* renamed from: b */
        public final String f8875b;

        /* renamed from: c */
        public final String f8876c;

        /* renamed from: d */
        public final String f8877d;

        public C2266b(String str, Throwable th) {
            this.f8875b = str;
            this.f8874a = Long.valueOf(System.currentTimeMillis());
            String str2 = null;
            this.f8876c = th != null ? th.getClass().getName() : null;
            this.f8877d = th != null ? th.getMessage() : str2;
        }

        public C2266b(JSONObject jSONObject) throws JSONException {
            this.f8875b = jSONObject.getString("ms");
            this.f8874a = Long.valueOf(jSONObject.getLong("ts"));
            JSONObject optJSONObject = jSONObject.optJSONObject("ex");
            String str = null;
            this.f8876c = optJSONObject != null ? optJSONObject.getString("nm") : null;
            this.f8877d = optJSONObject != null ? optJSONObject.getString("rn") : str;
        }

        /* renamed from: a */
        public final JSONObject m30529a() throws JSONException {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ms", this.f8875b);
            jSONObject.put("ts", this.f8874a);
            if (!TextUtils.isEmpty(this.f8876c)) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("nm", this.f8876c);
                if (!TextUtils.isEmpty(this.f8877d)) {
                    jSONObject2.put("rn", this.f8877d);
                }
                jSONObject.put("ex", jSONObject2);
            }
            return jSONObject;
        }

        public String toString() {
            return "ErrorLog{timestampMillis=" + this.f8874a + ",message='" + this.f8875b + "',throwableName='" + this.f8876c + "',throwableReason='" + this.f8877d + "'}";
        }
    }

    public C2264e(C2341l lVar) {
        this.f8872c = lVar;
        this.f8873d = lVar.m30262d0();
    }

    /* renamed from: a */
    public JSONArray m30534a() {
        JSONArray jSONArray;
        synchronized (this.f8871b) {
            try {
                jSONArray = new JSONArray();
                for (C2266b bVar : this.f8870a) {
                    try {
                        jSONArray.put(bVar.m30529a());
                    } catch (JSONException e) {
                        this.f8873d.m30048a("ErrorManager", false, "Failed to convert error log into json.", e);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return jSONArray;
    }

    /* renamed from: a */
    public void m30533a(String str, Throwable th) {
        if (!TextUtils.isEmpty(str)) {
            synchronized (this.f8871b) {
                if (this.f8870a.size() < ((Integer) this.f8872c.m30291a(C2251d.C2256e.f8526D3)).intValue()) {
                    this.f8870a.add(new C2266b(str, th));
                    m30530d();
                }
            }
        }
    }

    /* renamed from: b */
    public void m30532b() {
        String str = (String) this.f8872c.m30273b(C2251d.C2258g.f8807q, null);
        if (str != null) {
            synchronized (this.f8871b) {
                try {
                    this.f8870a.clear();
                    JSONArray jSONArray = new JSONArray(str);
                    for (int i = 0; i < jSONArray.length(); i++) {
                        try {
                            this.f8870a.add(new C2266b(jSONArray.getJSONObject(i)));
                        } catch (JSONException e) {
                            this.f8873d.m30048a("ErrorManager", false, "Failed to convert error json into a log.", e);
                        }
                    }
                } catch (JSONException e2) {
                    this.f8873d.m30043b("ErrorManager", "Unable to convert String to json.", e2);
                }
            }
        }
    }

    /* renamed from: c */
    public void m30531c() {
        synchronized (this.f8871b) {
            this.f8870a.clear();
            this.f8872c.m30274b(C2251d.C2258g.f8807q);
        }
    }

    /* renamed from: d */
    public final void m30530d() {
        JSONArray jSONArray = new JSONArray();
        synchronized (this.f8871b) {
            try {
                for (C2266b bVar : this.f8870a) {
                    try {
                        jSONArray.put(bVar.m30529a());
                    } catch (JSONException e) {
                        this.f8873d.m30048a("ErrorManager", false, "Failed to convert error log into json.", e);
                        this.f8870a.remove(bVar);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f8872c.m30289a((C2251d.C2258g<C2251d.C2258g<String>>) C2251d.C2258g.f8807q, (C2251d.C2258g<String>) jSONArray.toString());
    }
}
