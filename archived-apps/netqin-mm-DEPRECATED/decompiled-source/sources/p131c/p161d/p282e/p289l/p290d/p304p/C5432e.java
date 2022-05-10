package p131c.p161d.p282e.p289l.p290d.p304p;

import org.json.JSONException;
import org.json.JSONObject;
import p131c.p161d.p282e.p289l.p290d.p293h.AbstractC5279q;
import p131c.p161d.p282e.p289l.p290d.p304p.p305h.C5440f;
/* renamed from: c.d.e.l.d.p.e */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/p/e.class */
public class C5432e {

    /* renamed from: a */
    public final AbstractC5279q f18386a;

    public C5432e(AbstractC5279q qVar) {
        this.f18386a = qVar;
    }

    /* renamed from: a */
    public static AbstractC5433f m23782a(int i) {
        return i != 3 ? new C5428b() : new C5434g();
    }

    /* renamed from: a */
    public C5440f m23781a(JSONObject jSONObject) throws JSONException {
        return m23782a(jSONObject.getInt("settings_version")).mo23778a(this.f18386a, jSONObject);
    }
}
