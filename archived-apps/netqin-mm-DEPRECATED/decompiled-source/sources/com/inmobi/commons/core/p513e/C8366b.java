package com.inmobi.commons.core.p513e;

import com.inmobi.commons.core.configs.AbstractC8346a;
import com.inmobi.commons.core.configs.C8348b;
import com.inmobi.commons.core.p510b.AbstractC8342e;
import com.inmobi.commons.core.p510b.C8337a;
import com.inmobi.commons.core.p510b.C8339c;
import com.inmobi.commons.core.p510b.C8340d;
import com.inmobi.commons.core.p513e.C8373d;
import com.inmobi.commons.core.utilities.p516b.C8397a;
import com.inmobi.commons.core.utilities.p516b.C8398b;
import com.inmobi.commons.p508a.C8326a;
import com.inmobi.commons.p508a.C8327b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.commons.core.e.b */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/e/b.class */
public class C8366b implements AbstractC8342e, C8348b.AbstractC8351c {

    /* renamed from: c */
    public static final String f32528c = "b";

    /* renamed from: e */
    public static volatile C8366b f32530e;

    /* renamed from: f */
    public static Map<String, C8371c> f32531f;

    /* renamed from: g */
    public C8373d f32533g;

    /* renamed from: i */
    public String f32535i;

    /* renamed from: j */
    public C8340d f32536j;

    /* renamed from: d */
    public static final Object f32529d = new Object();

    /* renamed from: b */
    public static AtomicBoolean f32527b = new AtomicBoolean(false);

    /* renamed from: h */
    public C8375e f32534h = new C8375e();

    /* renamed from: a */
    public ExecutorService f32532a = Executors.newSingleThreadExecutor();

    public C8366b() {
        f32531f = new HashMap();
        C8373d dVar = new C8373d();
        this.f32533g = dVar;
        m5790a("telemetry", dVar.f32549a);
        this.f32535i = this.f32533g.f32550b;
    }

    /* renamed from: a */
    public static C8366b m5794a() {
        C8366b bVar = f32530e;
        C8366b bVar2 = bVar;
        if (bVar == null) {
            synchronized (f32529d) {
                C8366b bVar3 = f32530e;
                bVar2 = bVar3;
                if (bVar3 == null) {
                    bVar2 = new C8366b();
                    f32530e = bVar2;
                }
            }
        }
        return bVar2;
    }

    /* renamed from: a */
    public static String m5787a(List<C8376f> list) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.putAll(C8398b.m5689a(false));
            hashMap.put("im-accid", C8326a.m5885e());
            hashMap.put("version", "2.0.0");
            hashMap.put("component", "telemetry");
            hashMap.put("mk-version", C8327b.m5881a());
            hashMap.putAll(C8397a.m5693a().f32654b);
            JSONObject jSONObject = new JSONObject(hashMap);
            JSONArray jSONArray = new JSONArray();
            for (C8376f fVar : list) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("eventId", fVar.f32565b);
                jSONObject2.put("eventType", fVar.f32566c);
                if (!fVar.m5768a().trim().isEmpty()) {
                    jSONObject2.put("payload", fVar.m5768a());
                }
                jSONObject2.put("componentType", fVar.f32567d);
                jSONObject2.put("ts", fVar.f32568e);
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("telemetry", jSONArray);
            return jSONObject.toString();
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m5793a(C8366b bVar) {
        bVar.f32532a.execute(new Runnable() { // from class: com.inmobi.commons.core.e.b.4
            @Override // java.lang.Runnable
            public final void run() {
                if (C8366b.this.f32534h.mo5762a("default") > 0) {
                    C8366b.m5781d(C8366b.this);
                }
            }
        });
    }

    /* renamed from: a */
    private void m5790a(String str, C8371c cVar) {
        if (str != null && !str.trim().equals("")) {
            if (cVar != null) {
                f32531f.put(str, cVar);
            } else {
                f32531f.put(str, new C8371c(str, null, this.f32533g.f32549a));
            }
        }
    }

    /* renamed from: a */
    public static void m5789a(String str, String str2, Map<String, Object> map) {
        try {
            C8376f fVar = new C8376f(str, str2);
            if (map != null && !map.isEmpty()) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    for (Map.Entry<String, Object> entry : map.entrySet()) {
                        jSONObject.put(entry.getKey(), entry.getValue());
                    }
                    fVar.f32569f = jSONObject.toString();
                } catch (JSONException e) {
                    StringBuilder sb = new StringBuilder("Error forming JSON payload for ");
                    sb.append(str2);
                    sb.append(" Error: ");
                    sb.append(e);
                }
            }
            m5794a().m5792a(fVar);
        } catch (Exception e2) {
            StringBuilder sb2 = new StringBuilder("Error in submitting telemetry event : (");
            sb2.append(e2.getMessage());
            sb2.append(")");
        }
    }

    /* renamed from: c */
    public static C8371c m5782c(C8376f fVar) {
        m5794a();
        String str = fVar.f32567d;
        if (str == null || str.trim().equals("")) {
            return null;
        }
        return f32531f.get(str);
    }

    /* renamed from: d */
    public static /* synthetic */ void m5781d(C8366b bVar) {
        if (!f32527b.get()) {
            C8373d dVar = bVar.f32533g;
            int i = dVar.f32552d;
            long j = dVar.f32554f;
            long j2 = dVar.f32551c;
            long j3 = dVar.f32555g;
            C8373d.C8374a aVar = dVar.f32557i;
            int i2 = aVar.f32559b;
            int i3 = aVar.f32560c;
            C8373d.C8374a aVar2 = dVar.f32556h;
            C8337a aVar3 = new C8337a(i, j, j2, j3, i2, i3, aVar2.f32559b, aVar2.f32560c, aVar.f32558a, aVar2.f32558a);
            aVar3.f32426e = bVar.f32535i;
            aVar3.f32423b = "default";
            C8340d dVar2 = bVar.f32536j;
            if (dVar2 == null) {
                bVar.f32536j = new C8340d(bVar.f32534h, bVar, aVar3);
            } else {
                dVar2.m5862a(aVar3);
            }
            bVar.f32536j.m5860a("default");
        }
    }

    @Override // com.inmobi.commons.core.p510b.AbstractC8342e
    /* renamed from: a */
    public final C8339c mo5791a(String str) {
        C8339c cVar;
        List<C8376f> a = C8398b.m5691a() != 1 ? C8375e.m5770a(this.f32533g.f32556h.f32560c) : C8375e.m5770a(this.f32533g.f32557i.f32560c);
        if (!a.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (C8376f fVar : a) {
                arrayList.add(Integer.valueOf(fVar.f32564a));
            }
            String a2 = m5787a(a);
            if (a2 != null) {
                cVar = new C8339c(arrayList, a2, true);
                return cVar;
            }
        }
        cVar = null;
        return cVar;
    }

    @Override // com.inmobi.commons.core.configs.C8348b.AbstractC8351c
    /* renamed from: a */
    public final void mo5529a(AbstractC8346a aVar) {
        C8373d dVar = (C8373d) aVar;
        this.f32533g = dVar;
        this.f32535i = dVar.f32550b;
    }

    /* renamed from: a */
    public final void m5792a(final C8376f fVar) {
        C8371c c = m5782c(fVar);
        if (c == null || !c.f32543b || !this.f32533g.f32549a.f32543b) {
            StringBuilder sb = new StringBuilder("Telemetry service is not enabled or registered for component: ");
            sb.append(fVar.f32567d);
            sb.append("|| type = ");
            sb.append(fVar.f32566c);
            sb.append(" Config :");
            sb.append(c);
            return;
        }
        this.f32532a.execute(new Runnable() { // from class: com.inmobi.commons.core.e.b.3
            @Override // java.lang.Runnable
            public final void run() {
                C8366b.this.m5784b(fVar);
                C8366b.m5781d(C8366b.this);
            }
        });
    }

    /* renamed from: a */
    public final void m5788a(String str, JSONObject jSONObject) {
        m5790a(str, new C8371c(str, jSONObject, this.f32533g.f32549a));
    }

    /* renamed from: b */
    public final void m5786b() {
        f32527b.set(false);
        C8348b.m5847a().m5844a(this.f32533g, this);
        m5790a("telemetry", this.f32533g.f32549a);
        this.f32535i = this.f32533g.f32550b;
        this.f32532a.execute(new Runnable() { // from class: com.inmobi.commons.core.e.b.1
            @Override // java.lang.Runnable
            public final void run() {
                C8366b.m5793a(C8366b.this);
            }
        });
    }

    /* renamed from: b */
    public final void m5784b(C8376f fVar) {
        C8371c c = m5782c(fVar);
        if (c != null && c.f32543b) {
            C8373d dVar = this.f32533g;
            if (dVar.f32549a.f32543b) {
                this.f32534h.mo5759b(dVar.f32554f, "default");
                if ((this.f32534h.mo5762a("default") + 1) - this.f32533g.f32553e >= 0) {
                    C8375e.m5771a();
                }
                C8375e.m5769a(fVar);
                return;
            }
        }
        StringBuilder sb = new StringBuilder("Telemetry service is not enabled or registered for component: ");
        sb.append(fVar.f32567d);
        sb.append("|| type = ");
        sb.append(fVar.f32566c);
        sb.append(" Config :");
        sb.append(c);
    }
}
