package p131c.p132a.p133a.p134a;

import android.text.TextUtils;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: c.a.a.a.i */
/* loaded from: classes-dex2jar.jar:c/a/a/a/i.class */
public class C1999i {

    /* renamed from: a */
    public final String f7849a;

    /* renamed from: b */
    public final String f7850b;

    /* renamed from: c */
    public final JSONObject f7851c;

    /* renamed from: c.a.a.a.i$a */
    /* loaded from: classes-dex2jar.jar:c/a/a/a/i$a.class */
    public static class C2000a {

        /* renamed from: a */
        public final List<C1999i> f7852a;

        /* renamed from: b */
        public final C1994g f7853b;

        public C2000a(C1994g gVar, List<C1999i> list) {
            this.f7852a = list;
            this.f7853b = gVar;
        }

        /* renamed from: a */
        public C1994g m31272a() {
            return this.f7853b;
        }

        /* renamed from: b */
        public List<C1999i> m31271b() {
            return this.f7852a;
        }

        /* renamed from: c */
        public int m31270c() {
            return m31272a().m31291b();
        }
    }

    public C1999i(String str, String str2) throws JSONException {
        this.f7849a = str;
        this.f7850b = str2;
        this.f7851c = new JSONObject(this.f7849a);
    }

    /* renamed from: a */
    public String m31278a() {
        return this.f7849a;
    }

    /* renamed from: b */
    public int m31277b() {
        return this.f7851c.optInt("purchaseState", 1) != 4 ? 1 : 2;
    }

    /* renamed from: c */
    public String m31276c() {
        JSONObject jSONObject = this.f7851c;
        return jSONObject.optString("token", jSONObject.optString("purchaseToken"));
    }

    /* renamed from: d */
    public String m31275d() {
        return this.f7850b;
    }

    /* renamed from: e */
    public String m31274e() {
        return this.f7851c.optString("productId");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1999i)) {
            return false;
        }
        C1999i iVar = (C1999i) obj;
        return TextUtils.equals(this.f7849a, iVar.m31278a()) && TextUtils.equals(this.f7850b, iVar.m31275d());
    }

    /* renamed from: f */
    public boolean m31273f() {
        return this.f7851c.optBoolean("acknowledged", true);
    }

    public int hashCode() {
        return this.f7849a.hashCode();
    }

    public String toString() {
        String valueOf = String.valueOf(this.f7849a);
        return valueOf.length() != 0 ? "Purchase. Json: ".concat(valueOf) : new String("Purchase. Json: ");
    }
}
