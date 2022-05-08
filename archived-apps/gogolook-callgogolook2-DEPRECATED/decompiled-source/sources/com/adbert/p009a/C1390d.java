package com.adbert.p009a;

import com.adbert.p009a.p012c.EnumC1386f;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.adbert.a.d */
/* loaded from: classes-dex2jar.jar:com/adbert/a/d.class */
public class C1390d {

    /* renamed from: a */
    public JSONObject f641a;

    public C1390d(String str) {
        this.f641a = new JSONObject(str);
    }

    /* renamed from: a */
    public String m37179a(EnumC1386f fVar) {
        return !this.f641a.has(fVar.toString()) ? "" : this.f641a.getString(fVar.toString()).trim();
    }

    /* renamed from: b */
    public boolean m37178b(EnumC1386f fVar) {
        if (!this.f641a.has(fVar.toString())) {
            return false;
        }
        return this.f641a.getBoolean(fVar.toString());
    }

    /* renamed from: c */
    public JSONArray m37177c(EnumC1386f fVar) {
        return !this.f641a.has(fVar.toString()) ? new JSONArray() : this.f641a.getJSONArray(fVar.toString());
    }
}
