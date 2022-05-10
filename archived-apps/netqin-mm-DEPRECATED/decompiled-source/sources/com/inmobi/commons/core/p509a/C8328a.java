package com.inmobi.commons.core.p509a;

import com.inmobi.commons.core.configs.AbstractC8346a;
import com.inmobi.commons.core.configs.C8348b;
import com.inmobi.commons.core.p509a.C8332b;
import com.inmobi.commons.core.p510b.AbstractC8342e;
import com.inmobi.commons.core.p510b.C8337a;
import com.inmobi.commons.core.p510b.C8339c;
import com.inmobi.commons.core.p510b.C8340d;
import com.inmobi.commons.core.p513e.C8365a;
import com.inmobi.commons.core.p513e.C8366b;
import com.inmobi.commons.core.p513e.C8376f;
import com.inmobi.commons.core.utilities.p516b.C8397a;
import com.inmobi.commons.core.utilities.p516b.C8398b;
import com.inmobi.commons.p508a.C8326a;
import com.inmobi.commons.p508a.C8327b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.commons.core.a.a */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/a/a.class */
public class C8328a implements AbstractC8342e, C8348b.AbstractC8351c {

    /* renamed from: e */
    public static final String f32383e = "a";

    /* renamed from: g */
    public static volatile C8328a f32385g;

    /* renamed from: i */
    public C8340d f32390i;

    /* renamed from: f */
    public static final Object f32384f = new Object();

    /* renamed from: b */
    public static AtomicBoolean f32382b = new AtomicBoolean(false);

    /* renamed from: c */
    public C8332b f32387c = new C8332b();

    /* renamed from: d */
    public String f32388d = this.f32387c.f32396a;

    /* renamed from: h */
    public C8334c f32389h = new C8334c();

    /* renamed from: a */
    public ExecutorService f32386a = Executors.newSingleThreadExecutor();

    public C8328a() {
        Thread.setDefaultUncaughtExceptionHandler(new C8336e(Thread.getDefaultUncaughtExceptionHandler()));
        C8366b.m5794a().m5788a("crashReporting", this.f32387c.f32404i);
        C8366b.m5794a().m5788a("catchReporting", this.f32387c.f32405j);
    }

    /* renamed from: a */
    public static C8328a m5878a() {
        C8328a aVar = f32385g;
        C8328a aVar2 = aVar;
        if (aVar == null) {
            synchronized (f32384f) {
                C8328a aVar3 = f32385g;
                aVar2 = aVar3;
                if (aVar3 == null) {
                    aVar2 = new C8328a();
                    f32385g = aVar2;
                }
            }
        }
        return aVar2;
    }

    /* renamed from: a */
    public static String m5874a(List<C8335d> list) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.putAll(C8398b.m5689a(false));
            hashMap.put("im-accid", C8326a.m5885e());
            hashMap.put("version", "2.0.0");
            hashMap.put("component", "crash");
            hashMap.put("mk-version", C8327b.m5881a());
            hashMap.putAll(C8397a.m5693a().f32654b);
            JSONObject jSONObject = new JSONObject(hashMap);
            JSONArray jSONArray = new JSONArray();
            for (C8335d dVar : list) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("eventId", dVar.f32415b);
                jSONObject2.put("eventType", dVar.f32416c);
                if (!dVar.m5865a().trim().isEmpty()) {
                    jSONObject2.put("crash_report", dVar.m5865a());
                }
                jSONObject2.put("ts", dVar.f32418e);
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("crash", jSONArray);
            return jSONObject.toString();
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m5877a(C8328a aVar) {
        if (!f32382b.get()) {
            C8332b bVar = aVar.f32387c;
            int i = bVar.f32398c;
            long j = bVar.f32400e;
            long j2 = bVar.f32397b;
            long j3 = bVar.f32401f;
            C8332b.C8333a aVar2 = bVar.f32407l;
            int i2 = aVar2.f32409b;
            int i3 = aVar2.f32410c;
            C8332b.C8333a aVar3 = bVar.f32406k;
            C8337a aVar4 = new C8337a(i, j, j2, j3, i2, i3, aVar3.f32409b, aVar3.f32410c, aVar2.f32408a, aVar3.f32408a);
            aVar4.f32426e = aVar.f32388d;
            aVar4.f32423b = "default";
            C8340d dVar = aVar.f32390i;
            if (dVar == null) {
                aVar.f32390i = new C8340d(aVar.f32389h, aVar, aVar4);
            } else {
                dVar.m5862a(aVar4);
            }
            aVar.f32390i.m5860a("default");
        }
    }

    /* renamed from: b */
    public static /* synthetic */ void m5873b(C8328a aVar) {
        aVar.f32386a.execute(new Runnable() { // from class: com.inmobi.commons.core.a.a.3
            @Override // java.lang.Runnable
            public final void run() {
                if (C8328a.this.f32389h.mo5762a("default") > 0) {
                    C8328a.m5877a(C8328a.this);
                }
            }
        });
    }

    @Override // com.inmobi.commons.core.p510b.AbstractC8342e
    /* renamed from: a */
    public final C8339c mo5791a(String str) {
        C8339c cVar;
        List<C8335d> a = C8398b.m5691a() != 1 ? C8334c.m5867a(this.f32387c.f32406k.f32410c) : C8334c.m5867a(this.f32387c.f32407l.f32410c);
        if (!a.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (C8335d dVar : a) {
                arrayList.add(Integer.valueOf(dVar.f32414a));
            }
            String a2 = m5874a(a);
            if (a2 != null) {
                cVar = new C8339c(arrayList, a2, false);
                return cVar;
            }
        }
        cVar = null;
        return cVar;
    }

    /* renamed from: a */
    public final void m5876a(C8335d dVar) {
        if (!(dVar instanceof C8365a)) {
            if (this.f32387c.f32402g) {
                C8366b.m5794a().m5784b(new C8376f("crashReporting", "CrashEventOccurred"));
            } else {
                return;
            }
        }
        this.f32389h.mo5759b(this.f32387c.f32400e, "default");
        if ((this.f32389h.mo5762a("default") + 1) - this.f32387c.f32399d >= 0) {
            C8334c.m5868a();
        }
        C8334c.m5866a(dVar);
    }

    @Override // com.inmobi.commons.core.configs.C8348b.AbstractC8351c
    /* renamed from: a */
    public final void mo5529a(AbstractC8346a aVar) {
        C8332b bVar = (C8332b) aVar;
        this.f32387c = bVar;
        this.f32388d = bVar.f32396a;
        C8366b.m5794a().m5788a("crashReporting", this.f32387c.f32404i);
        C8366b.m5794a().m5788a("catchReporting", this.f32387c.f32405j);
    }

    /* renamed from: a */
    public final void m5875a(final C8365a aVar) {
        if (this.f32387c.f32403h) {
            C8366b.m5794a().m5792a(new C8376f("catchReporting", "CatchEventOccurred"));
            this.f32386a.execute(new Runnable() { // from class: com.inmobi.commons.core.a.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    C8328a.this.m5876a((C8335d) aVar);
                    C8328a.m5877a(C8328a.this);
                }
            });
        }
    }
}
