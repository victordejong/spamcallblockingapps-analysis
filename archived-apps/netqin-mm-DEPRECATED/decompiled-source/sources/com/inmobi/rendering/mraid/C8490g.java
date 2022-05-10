package com.inmobi.rendering.mraid;

import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.rendering.mraid.g */
/* loaded from: classes2-dex2jar.jar:com/inmobi/rendering/mraid/g.class */
public class C8490g {

    /* renamed from: g */
    public static final String f32976g = "g";

    /* renamed from: b */
    public int f32978b;

    /* renamed from: c */
    public int f32979c;

    /* renamed from: d */
    public int f32980d = 0;

    /* renamed from: e */
    public int f32981e = 0;

    /* renamed from: a */
    public String f32977a = "top-right";

    /* renamed from: f */
    public boolean f32982f = true;

    /* renamed from: a */
    public static C8490g m5465a(String str, C8490g gVar) {
        C8490g gVar2;
        C8490g gVar3 = new C8490g();
        try {
            JSONObject jSONObject = new JSONObject(str);
            gVar3.f32978b = jSONObject.getInt("width");
            gVar3.f32979c = jSONObject.getInt("height");
            gVar3.f32980d = jSONObject.getInt("offsetX");
            gVar3.f32981e = jSONObject.getInt("offsetY");
            gVar2 = gVar3;
            if (gVar != null) {
                gVar3.f32977a = jSONObject.optString("customClosePosition", gVar.f32977a);
                gVar3.f32982f = jSONObject.optBoolean("allowOffscreen", gVar.f32982f);
                gVar2 = gVar3;
            }
        } catch (JSONException e) {
            gVar2 = null;
        }
        return gVar2;
    }

    /* renamed from: a */
    public final String m5466a() {
        String str;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("width", this.f32978b);
            jSONObject.put("height", this.f32979c);
            jSONObject.put("customClosePosition", this.f32977a);
            jSONObject.put("offsetX", this.f32980d);
            jSONObject.put("offsetY", this.f32981e);
            jSONObject.put("allowOffscreen", this.f32982f);
            str = jSONObject.toString();
        } catch (JSONException e) {
            str = "";
        }
        return str;
    }
}
