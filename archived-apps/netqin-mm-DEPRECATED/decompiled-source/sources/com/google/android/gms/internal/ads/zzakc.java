package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzp;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzakc.class */
public final /* synthetic */ class zzakc {
    /* renamed from: a */
    public static void m16716a(zzajz zzajzVar, String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("(");
        sb.append(str2);
        sb.append(");");
        zzajzVar.mo15582a(sb.toString());
    }

    /* renamed from: a */
    public static void m16715a(zzajz zzajzVar, String str, Map map) {
        try {
            zzajzVar.mo15576a(str, zzp.m17969c().m16118a(map));
        } catch (JSONException e) {
            zzbbq.m15852d("Could not convert parameters to JSON.");
        }
    }

    /* renamed from: a */
    public static void m16714a(zzajz zzajzVar, String str, JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (jSONObject == null) {
            jSONObject2 = new JSONObject();
        }
        zzajzVar.mo16672a(str, jSONObject2.toString());
    }

    /* renamed from: b */
    public static void m16713b(zzajz zzajzVar, String str, JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (jSONObject == null) {
            jSONObject2 = new JSONObject();
        }
        String jSONObject3 = jSONObject2.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("'");
        sb.append(",");
        sb.append(jSONObject3);
        sb.append(");");
        String valueOf = String.valueOf(sb.toString());
        zzbbq.m15858a(valueOf.length() != 0 ? "Dispatching AFMA event: ".concat(valueOf) : new String("Dispatching AFMA event: "));
        zzajzVar.mo15582a(sb.toString());
    }
}
