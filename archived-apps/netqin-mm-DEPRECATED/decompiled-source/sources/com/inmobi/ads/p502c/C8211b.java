package com.inmobi.ads.p502c;

import com.inmobi.ads.C8047a;
import com.inmobi.ads.C8240f;
import com.inmobi.ads.C8302r;
import com.inmobi.ads.p501b.C8143b;
import com.inmobi.commons.core.configs.C8348b;
import com.inmobi.commons.core.configs.C8358g;
import com.inmobi.commons.core.utilities.p515a.C8394b;
import com.inmobi.commons.p508a.C8326a;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.ads.c.b */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/c/b.class */
public final class C8211b {

    /* renamed from: a */
    public C8240f f32072a;

    /* renamed from: b */
    public List<C8047a> f32073b;

    public C8211b(C8240f fVar, List<C8047a> list) {
        this.f32072a = fVar;
        this.f32073b = list;
    }

    /* renamed from: a */
    public final byte[] m6187a() throws C8143b, JSONException {
        HashMap hashMap = new HashMap();
        hashMap.put("h-user-agent", C8326a.m5884f());
        JSONArray jSONArray = new JSONArray();
        if (this.f32073b != null) {
            C8358g gVar = new C8358g();
            C8348b.m5847a().m5844a(gVar, (C8348b.AbstractC8351c) null);
            for (C8047a aVar : this.f32073b) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("impressionId", aVar.f31479g);
                C8302r rVar = this.f32072a.f32153k;
                float f = aVar.f31483k;
                String a = C8394b.m5710a(String.valueOf(f), rVar.f32307b, rVar.f32306a, rVar.f32308c, gVar.f32497b, gVar.f32496a);
                String str = a;
                if (a == null) {
                    str = "";
                }
                jSONObject.put("bid", str);
                JSONObject f2 = aVar.m6625f();
                if (f2 == null) {
                    f2 = new JSONObject();
                }
                jSONObject.put("cachedAdData", f2);
                jSONArray.put(jSONObject);
            }
        }
        hashMap.put("cachedAdInfos", jSONArray.toString());
        this.f32072a.m5739c(hashMap);
        this.f32072a.mo5745a();
        C8240f fVar = this.f32072a;
        if (fVar.f32618w == 1) {
            return fVar.m5735f().getBytes();
        }
        throw new C8143b();
    }
}
