package p081h.p160h.p179e.p180a.p188o;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: h.h.e.a.o.h */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/o/h.class */
public class C6420h {

    /* renamed from: a */
    public int f16010a = 0;

    /* renamed from: b */
    public int f16011b = 0;

    /* renamed from: c */
    public int f16012c = 0;

    /* renamed from: d */
    public int f16013d = 0;

    /* renamed from: e */
    public int f16014e = 0;

    /* renamed from: f */
    public int f16015f = 0;

    /* renamed from: g */
    public int f16016g = 0;

    /* renamed from: h */
    public int f16017h = 0;

    /* renamed from: i */
    public int f16018i = 0;

    /* renamed from: j */
    public int f16019j = 0;

    /* renamed from: k */
    public String f16020k;

    /* renamed from: l */
    public String f16021l;

    /* renamed from: m */
    public String f16022m;

    /* renamed from: a */
    public static C6420h m22694a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return m22693a(new JSONObject(str));
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    public static C6420h m22693a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            C6420h hVar = new C6420h();
            hVar.f16010a = jSONObject.getInt("version");
            hVar.f16011b = jSONObject.getInt("db_type");
            hVar.f16012c = jSONObject.getInt("top_num_size");
            hVar.f16013d = jSONObject.getInt("spam_num_size");
            hVar.f16014e = jSONObject.getInt("toptop_spam_size");
            hVar.f16020k = jSONObject.getString("url");
            hVar.f16021l = jSONObject.getString("diff_url");
            hVar.f16022m = jSONObject.getString("checksums");
            hVar.f16017h = jSONObject.optInt("update_rate", 3);
            hVar.f16015f = jSONObject.optInt("ntop_size", 0);
            hVar.f16016g = jSONObject.optInt("nspam_size", 0);
            if (!jSONObject.isNull("basic")) {
                hVar.f16018i = jSONObject.getJSONObject("basic").optInt("top_num_size", 0) + jSONObject.getJSONObject("basic").optInt("spam_num_size", 0);
            } else if (!jSONObject.isNull("basic_num")) {
                hVar.f16018i = jSONObject.optInt("basic_num", 0);
            }
            if (!jSONObject.isNull("premium")) {
                hVar.f16019j = jSONObject.getJSONObject("premium").optInt("top_num_size", 0) + jSONObject.getJSONObject("basic").optInt("spam_num_size", 0);
            } else if (!jSONObject.isNull("premium_num")) {
                hVar.f16019j = jSONObject.optInt("premium_num", 0);
            }
            return hVar;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    public String m22695a() {
        return TextUtils.isEmpty(this.f16021l) ? this.f16020k : this.f16021l;
    }

    public String toString() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("version", this.f16010a);
            jSONObject.put("db_type", this.f16011b);
            jSONObject.put("top_num_size", this.f16012c);
            jSONObject.put("spam_num_size", this.f16013d);
            jSONObject.put("toptop_spam_size", this.f16014e);
            jSONObject.put("url", this.f16020k);
            jSONObject.put("diff_url", this.f16021l);
            jSONObject.put("checksums", this.f16022m);
            jSONObject.put("update_rate", this.f16017h);
            jSONObject.put("ntop_size", this.f16015f);
            jSONObject.put("nspam_size", this.f16016g);
            jSONObject.put("basic_num", this.f16018i);
            jSONObject.put("premium_num", this.f16019j);
            return jSONObject.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return "";
        }
    }
}
