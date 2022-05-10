package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzckw;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzckw.class */
public final class zzckw {

    /* renamed from: a */
    public final Map<String, Map<String, JSONObject>> f26194a = new ConcurrentHashMap();

    /* renamed from: b */
    public final Executor f26195b;

    /* renamed from: c */
    public boolean f26196c;

    /* renamed from: d */
    public JSONObject f26197d;

    public zzckw(Executor executor) {
        this.f26195b = executor;
    }

    /* renamed from: a */
    public final JSONObject m14099a(String str, String str2) {
        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23710M1)).booleanValue() || str == null || str2 == null) {
            return null;
        }
        if (!this.f26196c) {
            m14095e();
        }
        Map<String, JSONObject> map = this.f26194a.get(str2);
        if (map == null) {
            return null;
        }
        JSONObject jSONObject = map.get(str);
        if (jSONObject != null) {
            return jSONObject;
        }
        String a = zzckz.m14093a(this.f26197d, str, str2);
        if (a == null) {
            return null;
        }
        return map.get(a);
    }

    /* renamed from: a */
    public final void m14100a() {
        zzp.m17965g().m16176i().mo16072a(new Runnable(this) { // from class: c.d.b.d.g.a.nk

            /* renamed from: a */
            public final zzckw f14259a;

            {
                this.f14259a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f14259a.m14096d();
            }
        });
        this.f26195b.execute(new Runnable(this) { // from class: c.d.b.d.g.a.pk

            /* renamed from: a */
            public final zzckw f14551a;

            {
                this.f14551a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f14551a.m14097c();
            }
        });
    }

    /* renamed from: b */
    public final void m14095e() {
        Map<String, JSONObject> map;
        synchronized (this) {
            this.f26196c = true;
            zzaxy a = zzp.m17965g().m16176i().mo16075a();
            if (a != null) {
                JSONObject f = a.m16194f();
                if (f != null) {
                    this.f26197d = f.optJSONObject("ad_unit_patterns");
                    JSONArray optJSONArray = f.optJSONArray("ad_unit_id_settings");
                    if (optJSONArray != null) {
                        for (int i = 0; i < optJSONArray.length(); i++) {
                            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                            if (optJSONObject != null) {
                                String optString = optJSONObject.optString("ad_unit_id");
                                String optString2 = optJSONObject.optString("format");
                                JSONObject optJSONObject2 = optJSONObject.optJSONObject("request_signals");
                                if (!(optString == null || optJSONObject2 == null || optString2 == null)) {
                                    if (this.f26194a.containsKey(optString2)) {
                                        map = this.f26194a.get(optString2);
                                    } else {
                                        map = new ConcurrentHashMap<>();
                                        this.f26194a.put(optString2, map);
                                    }
                                    map.put(optString, optJSONObject2);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    /* renamed from: d */
    public final /* synthetic */ void m14096d() {
        this.f26195b.execute(new Runnable(this) { // from class: c.d.b.d.g.a.ok

            /* renamed from: a */
            public final zzckw f14346a;

            {
                this.f14346a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f14346a.m14095e();
            }
        });
    }
}
