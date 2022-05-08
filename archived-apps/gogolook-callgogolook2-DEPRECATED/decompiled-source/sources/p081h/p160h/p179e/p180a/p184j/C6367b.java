package p081h.p160h.p179e.p180a.p184j;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p160h.p179e.p180a.C6334a;
import p081h.p160h.p179e.p180a.p190p.C6432e;
import p081h.p160h.p179e.p180a.p190p.C6438i;
/* renamed from: h.h.e.a.j.b */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/j/b.class */
public class C6367b {

    /* renamed from: a */
    public JSONObject f15847a;

    /* renamed from: b */
    public C6369d f15848b = new C6369d();

    public C6367b(Context context, String str, String str2) {
        this.f15847a = null;
        this.f15847a = new JSONObject();
        try {
            this.f15847a.put("appId", str);
            this.f15847a.put("timestamp", C6432e.m22589e());
            String c = C6432e.m22595c(context);
            if (!TextUtils.isEmpty(c)) {
                this.f15847a.put("package_name", c);
                this.f15847a.put("key_hash", C6432e.m22609a(context, c));
            }
            this.f15847a.put("did", C6334a.m23211s().m23220j());
            this.f15847a.put("region", str2);
        } catch (JSONException e) {
            C6438i.m22583a(e);
        }
    }

    /* renamed from: a */
    public static C6367b m22958a(String str, String str2, int i, String str3, String str4) {
        C6367b b = m22956b(str, str2);
        b.m22960a("account_type", i);
        b.m22959a("account_id", str3);
        b.m22959a("account_authtoken", str4);
        b.m22961a(C6369d.m22943e());
        return b;
    }

    /* renamed from: b */
    public static C6367b m22956b(String str, String str2) {
        C6367b bVar = new C6367b(C6334a.m23211s().m23221i(), str, str2);
        bVar.m22959a("account_id", C6334a.m23211s().m23220j());
        bVar.m22960a("account_type", 0);
        bVar.m22961a(C6369d.m22945c());
        return bVar;
    }

    /* renamed from: c */
    public static C6367b m22954c(String str, String str2) {
        C6367b b = m22956b(str, str2);
        b.m22961a(C6369d.m22944d());
        return b;
    }

    /* renamed from: a */
    public String m22962a() {
        return this.f15847a.optString("account_id", null);
    }

    /* renamed from: a */
    public void m22961a(C6369d dVar) {
        this.f15848b = dVar;
    }

    /* renamed from: a */
    public void m22960a(String str, int i) {
        try {
            this.f15847a.put(str, i);
        } catch (JSONException e) {
            C6438i.m22583a(e);
        }
    }

    /* renamed from: a */
    public void m22959a(String str, String str2) {
        try {
            this.f15847a.put(str, str2);
        } catch (JSONException e) {
            C6438i.m22583a(e);
        }
    }

    /* renamed from: b */
    public int m22957b() {
        return this.f15848b.m22948a();
    }

    /* renamed from: c */
    public String m22955c() {
        return this.f15847a.optString("appId", null);
    }

    /* renamed from: d */
    public int m22953d() {
        return this.f15848b.m22946b();
    }

    /* renamed from: e */
    public String m22952e() {
        m22960a("scope", this.f15848b.m22948a());
        m22960a("scope_search", this.f15848b.m22946b());
        String c = C6432e.m22594c(C6432e.m22602a(this.f15847a));
        if (!TextUtils.isEmpty(c)) {
            m22959a("nonce", c);
        }
        return this.f15847a.toString();
    }

    public boolean equals(Object obj) {
        C6367b bVar = (C6367b) obj;
        if (bVar == null || !this.f15847a.toString().equals(bVar.f15847a.toString())) {
            return false;
        }
        C6369d dVar = this.f15848b;
        int i = dVar.f15855a;
        C6369d dVar2 = bVar.f15848b;
        return i == dVar2.f15855a && dVar.f15856b == dVar2.f15856b;
    }
}
