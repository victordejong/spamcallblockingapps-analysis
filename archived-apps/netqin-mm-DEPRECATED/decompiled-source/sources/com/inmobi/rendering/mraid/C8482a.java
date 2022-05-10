package com.inmobi.rendering.mraid;

import com.inmobi.commons.core.utilities.p516b.C8399c;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.rendering.mraid.a */
/* loaded from: classes2-dex2jar.jar:com/inmobi/rendering/mraid/a.class */
public class C8482a {

    /* renamed from: d */
    public static final String f32947d = "a";

    /* renamed from: b */
    public boolean f32949b;

    /* renamed from: c */
    public String f32950c;

    /* renamed from: e */
    public int f32951e = C8399c.m5687a().f32660a;

    /* renamed from: f */
    public int f32952f = C8399c.m5687a().f32661b;

    /* renamed from: a */
    public boolean f32948a = false;

    /* renamed from: g */
    public boolean f32953g = true;

    public C8482a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("width", this.f32951e);
            jSONObject.put("height", this.f32952f);
            jSONObject.put("useCustomClose", this.f32948a);
            jSONObject.put("isModal", this.f32953g);
        } catch (JSONException e) {
            new StringBuilder("Exception in composing ExpandProperties: ").append(e.getMessage());
        }
        this.f32950c = jSONObject.toString();
    }

    /* renamed from: a */
    public static C8482a m5476a(String str) {
        C8482a aVar = new C8482a();
        aVar.f32950c = str;
        try {
            JSONObject jSONObject = new JSONObject(str);
            aVar.f32953g = true;
            if (jSONObject.has("useCustomClose")) {
                aVar.f32949b = true;
            }
            aVar.f32948a = jSONObject.optBoolean("useCustomClose", false);
        } catch (JSONException e) {
        }
        return aVar;
    }
}
