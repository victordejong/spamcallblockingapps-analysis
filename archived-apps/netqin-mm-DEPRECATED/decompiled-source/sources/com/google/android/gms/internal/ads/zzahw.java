package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzp;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p252g.p253a.C3899p0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzahw.class */
public final class zzahw implements zzahq<Object> {

    /* renamed from: a */
    public final Object f24121a = new Object();

    /* renamed from: b */
    public final Map<String, zzahy> f24122b = new HashMap();

    /* renamed from: a */
    public final <EngineT extends zzaks> zzdzc<JSONObject> m16749a(EngineT enginet, String str, JSONObject jSONObject) {
        zzbcg zzbcgVar = new zzbcg();
        zzp.m17969c();
        String b = zzayu.m16115b();
        m16748a(b, new C3899p0(this, zzbcgVar));
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", b);
            jSONObject2.put("args", jSONObject);
            enginet.mo15569b(str, jSONObject2);
        } catch (Exception e) {
            zzbcgVar.m15834a((Throwable) e);
        }
        return zzbcgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzahq
    /* renamed from: a */
    public final void mo14168a(Object obj, Map<String, String> map) {
        String str;
        String str2 = map.get("id");
        String str3 = map.get("fail");
        String str4 = map.get("fail_reason");
        String str5 = map.get("fail_stack");
        String str6 = map.get("result");
        if (TextUtils.isEmpty(str5)) {
            str4 = "Unknown Fail Reason.";
        }
        if (TextUtils.isEmpty(str5)) {
            str = "";
        } else {
            String valueOf = String.valueOf(str5);
            str = valueOf.length() != 0 ? "\n".concat(valueOf) : new String("\n");
        }
        synchronized (this.f24121a) {
            zzahy remove = this.f24122b.remove(str2);
            if (remove == null) {
                String valueOf2 = String.valueOf(str2);
                zzbbq.m15852d(valueOf2.length() != 0 ? "Received result for unexpected method invocation: ".concat(valueOf2) : new String("Received result for unexpected method invocation: "));
            } else if (!TextUtils.isEmpty(str3)) {
                String valueOf3 = String.valueOf(str4);
                String valueOf4 = String.valueOf(str);
                remove.mo16746a(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3));
            } else if (str6 == null) {
                remove.mo16745a((JSONObject) null);
            } else {
                try {
                    JSONObject jSONObject = new JSONObject(str6);
                    if (zzayp.m16155a()) {
                        String valueOf5 = String.valueOf(jSONObject.toString(2));
                        zzayp.m16153g(valueOf5.length() != 0 ? "Result GMSG: ".concat(valueOf5) : new String("Result GMSG: "));
                    }
                    remove.mo16745a(jSONObject);
                } catch (JSONException e) {
                    remove.mo16746a(e.getMessage());
                }
            }
        }
    }

    /* renamed from: a */
    public final void m16748a(String str, zzahy zzahyVar) {
        synchronized (this.f24121a) {
            this.f24122b.put(str, zzahyVar);
        }
    }
}
