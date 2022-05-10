package com.inmobi.ads;

import com.inmobi.commons.core.configs.C8348b;
import com.inmobi.commons.core.p513e.C8366b;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.ads.b */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/b.class */
public class C8141b {
    /* renamed from: a */
    public static void m6347a() {
        C8197c cVar = new C8197c();
        C8348b.m5847a().m5844a(cVar, (C8348b.AbstractC8351c) null);
        m6346a(cVar);
        JSONArray jSONArray = new JSONArray();
        C8223d.m6169a();
        m6345a(cVar, jSONArray, C8223d.m6160b());
        if (jSONArray.length() > 0) {
            HashMap hashMap = new HashMap();
            hashMap.put("adsArray", jSONArray.toString());
            C8366b.m5794a().m5788a("ads", cVar.f31993l);
            C8366b.m5794a();
            C8366b.m5789a("ads", "AdCacheCachedAds", hashMap);
        }
    }

    /* renamed from: a */
    public static void m6346a(C8197c cVar) {
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < 3; i++) {
            String str = new String[]{"banner", "int", "native"}[i];
            C8223d.m6169a();
            m6345a(cVar, jSONArray, C8223d.m6163a(str, cVar.m6198a(str).f32019d));
        }
        if (jSONArray.length() > 0) {
            HashMap hashMap = new HashMap();
            hashMap.put("adsArray", jSONArray.toString());
            C8366b.m5794a().m5788a("ads", cVar.f31993l);
            C8366b.m5794a();
            C8366b.m5789a("ads", "AdCacheAdExpired", hashMap);
        }
    }

    /* renamed from: a */
    public static void m6345a(C8197c cVar, JSONArray jSONArray, List<C8047a> list) {
        for (C8047a aVar : list) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("ts", System.currentTimeMillis());
                jSONObject.put("impId", aVar.f31479g);
                jSONObject.put("plId", aVar.f31476d);
                jSONObject.put("insTs", aVar.f31477e);
                jSONObject.put("expTs", aVar.m6628c());
                jSONObject.put("expiryDuration", aVar.f31478f);
                jSONObject.put("configTTL", TimeUnit.SECONDS.toMillis(cVar.m6198a(aVar.f31474b).f32019d));
                jSONObject.put("adType", aVar.f31474b);
                jSONArray.put(jSONObject);
            } catch (JSONException e) {
            }
        }
    }

    /* renamed from: b */
    public static void m6344b() {
        C8197c cVar = new C8197c();
        C8348b.m5847a().m5844a(cVar, (C8348b.AbstractC8351c) null);
        m6346a(cVar);
    }

    /* renamed from: c */
    public static void m6343c() {
        C8197c cVar = new C8197c();
        C8348b.m5847a().m5844a(cVar, (C8348b.AbstractC8351c) null);
        if (cVar.f31996o) {
            C8223d.m6169a();
            C8223d.m6156c();
        }
    }
}
