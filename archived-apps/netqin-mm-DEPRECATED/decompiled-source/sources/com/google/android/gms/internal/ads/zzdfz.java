package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzdfw;
import com.google.android.gms.internal.ads.zzdfz;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfz.class */
public final class zzdfz implements zzdgx<zzdfw> {

    /* renamed from: a */
    public final zzdzb f27257a;

    /* renamed from: b */
    public final ScheduledExecutorService f27258b;

    /* renamed from: c */
    public final zzcza f27259c;

    /* renamed from: d */
    public final Context f27260d;

    /* renamed from: e */
    public final zzdok f27261e;

    /* renamed from: f */
    public final zzcyy f27262f;

    /* renamed from: g */
    public String f27263g;

    public zzdfz(zzdzb zzdzbVar, ScheduledExecutorService scheduledExecutorService, String str, zzcza zzczaVar, Context context, zzdok zzdokVar, zzcyy zzcyyVar) {
        this.f27257a = zzdzbVar;
        this.f27258b = scheduledExecutorService;
        this.f27263g = str;
        this.f27259c = zzczaVar;
        this.f27260d = context;
        this.f27261e = zzdokVar;
        this.f27262f = zzcyyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdfw> mo13576a() {
        return ((Boolean) zzwm.m11166e().m16921a(zzabb.f23704L0)).booleanValue() ? zzdyq.m12995a(new zzdyb(this) { // from class: c.d.b.d.g.a.au

            /* renamed from: a */
            public final zzdfz f12313a;

            {
                this.f12313a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdyb
            /* renamed from: a */
            public final zzdzc mo13005a() {
                return this.f12313a.m13614b();
            }
        }, this.f27257a) : zzdyq.m12988a((Object) null);
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m13615a(String str, List list, Bundle bundle) throws Exception {
        zzbcg zzbcgVar = new zzbcg();
        this.f27262f.m13759a(str);
        zzaph b = this.f27262f.m13758b(str);
        if (b != null) {
            b.mo16481a(ObjectWrapper.m17020a(this.f27260d), this.f27263g, bundle, (Bundle) list.get(0), this.f27261e.f27643e, new zzczg(str, b, zzbcgVar));
            return zzbcgVar;
        }
        throw null;
    }

    /* renamed from: b */
    public final /* synthetic */ zzdzc m13614b() {
        Map<String, List<Bundle>> a = this.f27259c.m13755a(this.f27263g, this.f27261e.f27644f);
        final ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, List<Bundle>> entry : a.entrySet()) {
            final String key = entry.getKey();
            final List<Bundle> value = entry.getValue();
            Bundle bundle = this.f27261e.f27642d.f29013m;
            final Bundle bundle2 = bundle != null ? bundle.getBundle(key) : null;
            arrayList.add(zzdyl.m12999d(zzdyq.m12995a(new zzdyb(this, key, value, bundle2) { // from class: c.d.b.d.g.a.du

                /* renamed from: a */
                public final zzdfz f12773a;

                /* renamed from: b */
                public final String f12774b;

                /* renamed from: c */
                public final List f12775c;

                /* renamed from: d */
                public final Bundle f12776d;

                {
                    this.f12773a = this;
                    this.f12774b = key;
                    this.f12775c = value;
                    this.f12776d = bundle2;
                }

                @Override // com.google.android.gms.internal.ads.zzdyb
                /* renamed from: a */
                public final zzdzc mo13005a() {
                    return this.f12773a.m13615a(this.f12774b, this.f12775c, this.f12776d);
                }
            }, this.f27257a)).m13004a(((Long) zzwm.m11166e().m16921a(zzabb.f23699K0)).longValue(), TimeUnit.MILLISECONDS, this.f27258b).m13001a(Throwable.class, new zzdvu(key) { // from class: c.d.b.d.g.a.cu

                /* renamed from: a */
                public final String f12583a;

                {
                    this.f12583a = key;
                }

                @Override // com.google.android.gms.internal.ads.zzdvu
                public final Object apply(Object obj) {
                    Throwable th = (Throwable) obj;
                    String valueOf = String.valueOf(this.f12583a);
                    zzbbq.m15856b(valueOf.length() != 0 ? "Error calling adapter: ".concat(valueOf) : new String("Error calling adapter: "));
                    return null;
                }
            }, this.f27257a));
        }
        return zzdyq.m12981c(arrayList).m12979a(new Callable(arrayList) { // from class: c.d.b.d.g.a.eu

            /* renamed from: a */
            public final List f12860a;

            {
                this.f12860a = arrayList;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                List<zzdzc> list = this.f12860a;
                JSONArray jSONArray = new JSONArray();
                for (zzdzc zzdzcVar : list) {
                    if (((JSONObject) zzdzcVar.get()) != null) {
                        jSONArray.put(zzdzcVar.get());
                    }
                }
                if (jSONArray.length() == 0) {
                    return null;
                }
                return new zzdfw(jSONArray.toString());
            }
        }, this.f27257a);
    }
}
