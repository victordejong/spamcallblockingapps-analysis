package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzalt;
import com.google.android.gms.internal.ads.zzcpp;
import com.google.android.gms.internal.ads.zzdyq;
import com.google.android.gms.internal.ads.zzdzc;
import com.google.android.gms.internal.ads.zzuy;
import java.io.StringReader;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpp.class */
public final class zzcpp {

    /* renamed from: a */
    public final Context f26381a;

    /* renamed from: b */
    public final zzbbx f26382b;

    /* renamed from: c */
    public final zzdok f26383c;

    /* renamed from: d */
    public final Executor f26384d;

    public zzcpp(Context context, zzbbx zzbbxVar, zzdok zzdokVar, Executor executor) {
        this.f26381a = context;
        this.f26382b = zzbbxVar;
        this.f26383c = zzdokVar;
        this.f26384d = executor;
    }

    /* renamed from: a */
    public final zzdzc<zzdog> m13947a() {
        zzamb b = zzp.m17956p().m16666b(this.f26381a, this.f26382b);
        zzalx<JSONObject> zzalxVar = zzama.f24180b;
        final zzalt a = b.m16663a("google.afma.response.normalize", zzalxVar, zzalxVar);
        final zzuy zzuyVar = this.f26383c.f27642d.f29019s;
        return zzdyq.m12992a(zzdyq.m12992a(zzdyq.m12992a(zzdyq.m12988a(""), new zzdya(this, zzuyVar) { // from class: c.d.b.d.g.a.lm

            /* renamed from: a */
            public final zzuy f13986a;

            {
                this.f13986a = zzuyVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                zzuy zzuyVar2 = this.f13986a;
                String str = (String) obj;
                String str2 = zzuyVar2.f28992a;
                String str3 = zzuyVar2.f28993b;
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("headers", new JSONObject());
                jSONObject3.put("body", str2);
                jSONObject2.put("base_url", "");
                jSONObject2.put("signals", new JSONObject(str3));
                jSONObject.put("request", jSONObject2);
                jSONObject.put("response", jSONObject3);
                jSONObject.put("flags", new JSONObject());
                return zzdyq.m12988a(jSONObject);
            }
        }, this.f26384d), new zzdya(a) { // from class: c.d.b.d.g.a.km

            /* renamed from: a */
            public final zzalt f13899a;

            {
                this.f13899a = a;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return this.f13899a.mo16659c((JSONObject) obj);
            }
        }, this.f26384d), new zzdya(this) { // from class: c.d.b.d.g.a.mm

            /* renamed from: a */
            public final zzcpp f14185a;

            {
                this.f14185a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return this.f14185a.m13946a((JSONObject) obj);
            }
        }, this.f26384d);
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m13946a(JSONObject jSONObject) throws Exception {
        return zzdyq.m12988a(new zzdog(new zzdof(this.f26383c), zzdoe.m13444a(new StringReader(jSONObject.toString()))));
    }
}
