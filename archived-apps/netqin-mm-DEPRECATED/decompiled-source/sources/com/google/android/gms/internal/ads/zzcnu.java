package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzais;
import com.google.android.gms.internal.ads.zzait;
import com.google.android.gms.internal.ads.zzbcg;
import com.google.android.gms.internal.ads.zzcnu;
import com.google.android.gms.internal.ads.zzdpa;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p252g.p253a.BinderC3997rl;
import p131c.p161d.p170b.p224d.p252g.p253a.C3920pl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcnu.class */
public final class zzcnu {

    /* renamed from: e */
    public final Context f26322e;

    /* renamed from: f */
    public final WeakReference<Context> f26323f;

    /* renamed from: g */
    public final zzcku f26324g;

    /* renamed from: h */
    public final Executor f26325h;

    /* renamed from: i */
    public final Executor f26326i;

    /* renamed from: j */
    public final ScheduledExecutorService f26327j;

    /* renamed from: k */
    public final zzcne f26328k;

    /* renamed from: l */
    public final zzbbx f26329l;

    /* renamed from: a */
    public boolean f26318a = false;

    /* renamed from: b */
    public boolean f26319b = false;

    /* renamed from: d */
    public final zzbcg<Boolean> f26321d = new zzbcg<>();

    /* renamed from: m */
    public Map<String, zzaiq> f26330m = new ConcurrentHashMap();

    /* renamed from: n */
    public boolean f26331n = true;

    /* renamed from: c */
    public final long f26320c = zzp.m17962j().mo17092a();

    public zzcnu(Executor executor, Context context, WeakReference<Context> weakReference, Executor executor2, zzcku zzckuVar, ScheduledExecutorService scheduledExecutorService, zzcne zzcneVar, zzbbx zzbbxVar) {
        this.f26324g = zzckuVar;
        this.f26322e = context;
        this.f26323f = weakReference;
        this.f26325h = executor2;
        this.f26327j = scheduledExecutorService;
        this.f26326i = executor;
        this.f26328k = zzcneVar;
        this.f26329l = zzbbxVar;
        m13987a("com.google.android.gms.ads.MobileAds", false, "", 0);
    }

    /* renamed from: a */
    public final void m13997a() {
        this.f26331n = false;
    }

    /* renamed from: a */
    public final void m13996a(final zzait zzaitVar) {
        this.f26321d.mo12976a(new Runnable(this, zzaitVar) { // from class: c.d.b.d.g.a.hl

            /* renamed from: a */
            public final zzcnu f13468a;

            /* renamed from: b */
            public final zzait f13469b;

            {
                this.f13468a = this;
                this.f13469b = zzaitVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f13468a.m13985b(this.f13469b);
            }
        }, this.f26326i);
    }

    /* renamed from: a */
    public final /* synthetic */ void m13995a(final zzbcg zzbcgVar) {
        this.f26325h.execute(new Runnable(this, zzbcgVar) { // from class: c.d.b.d.g.a.ql

            /* renamed from: a */
            public final zzbcg f14826a;

            {
                this.f14826a = zzbcgVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbcg zzbcgVar2 = this.f14826a;
                String c = zzp.m17965g().m16176i().mo16075a().m16197c();
                if (!TextUtils.isEmpty(c)) {
                    zzbcgVar2.m15835a((zzbcg) c);
                } else {
                    zzbcgVar2.m15834a((Throwable) new Exception());
                }
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ void m13990a(zzdpa zzdpaVar, zzais zzaisVar, List list, String str) {
        try {
            Context context = this.f26323f.get();
            if (context == null) {
                context = this.f26322e;
            }
            zzdpaVar.m13367a(context, zzaisVar, list);
        } catch (zzdos e) {
            try {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 74);
                sb.append("Failed to initialize adapter. ");
                sb.append(str);
                sb.append(" does not implement the initialize() method.");
                zzaisVar.mo16734e(sb.toString());
            } catch (RemoteException e2) {
                zzbbq.m15855b("", e2);
            }
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m13989a(Object obj, zzbcg zzbcgVar, String str, long j) {
        synchronized (obj) {
            if (!zzbcgVar.isDone()) {
                m13987a(str, false, "Timeout.", (int) (zzp.m17962j().mo17092a() - j));
                this.f26328k.m14029a(str, "timeout");
                zzbcgVar.m15835a((zzbcg) false);
            }
        }
    }

    /* renamed from: a */
    public final void m13988a(String str) {
        try {
            ArrayList arrayList = new ArrayList();
            JSONObject jSONObject = new JSONObject(str).getJSONObject("initializer_settings").getJSONObject("config");
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                final String next = keys.next();
                final Object obj = new Object();
                final zzbcg zzbcgVar = new zzbcg();
                zzdzc a = zzdyq.m12994a(zzbcgVar, ((Long) zzwm.m11166e().m16921a(zzabb.f23744T0)).longValue(), TimeUnit.SECONDS, this.f26327j);
                this.f26328k.m14030a(next);
                final long a2 = zzp.m17962j().mo17092a();
                a.mo12976a(new Runnable(this, obj, zzbcgVar, next, a2) { // from class: c.d.b.d.g.a.kl

                    /* renamed from: a */
                    public final zzcnu f13894a;

                    /* renamed from: b */
                    public final Object f13895b;

                    /* renamed from: c */
                    public final zzbcg f13896c;

                    /* renamed from: d */
                    public final String f13897d;

                    /* renamed from: e */
                    public final long f13898e;

                    {
                        this.f13894a = this;
                        this.f13895b = obj;
                        this.f13896c = zzbcgVar;
                        this.f13897d = next;
                        this.f13898e = a2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f13894a.m13989a(this.f13895b, this.f13896c, this.f13897d, this.f13898e);
                    }
                }, this.f26325h);
                arrayList.add(a);
                final BinderC3997rl rlVar = new BinderC3997rl(this, obj, next, a2, zzbcgVar);
                JSONObject optJSONObject = jSONObject.optJSONObject(next);
                final ArrayList arrayList2 = new ArrayList();
                if (optJSONObject != null) {
                    try {
                        JSONArray jSONArray = optJSONObject.getJSONArray("data");
                        for (int i = 0; i < jSONArray.length(); i++) {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                            String optString = jSONObject2.optString("format", "");
                            JSONObject optJSONObject2 = jSONObject2.optJSONObject("data");
                            Bundle bundle = new Bundle();
                            if (optJSONObject2 != null) {
                                Iterator<String> keys2 = optJSONObject2.keys();
                                while (keys2.hasNext()) {
                                    String next2 = keys2.next();
                                    bundle.putString(next2, optJSONObject2.optString(next2, ""));
                                }
                            }
                            arrayList2.add(new zzaja(optString, bundle));
                        }
                    } catch (JSONException e) {
                    }
                }
                m13987a(next, false, "", 0);
                try {
                    final zzdpa a3 = this.f26324g.m14103a(next, new JSONObject());
                    this.f26326i.execute(new Runnable(this, a3, rlVar, arrayList2, next) { // from class: c.d.b.d.g.a.ml

                        /* renamed from: a */
                        public final zzcnu f14180a;

                        /* renamed from: b */
                        public final zzdpa f14181b;

                        /* renamed from: c */
                        public final zzais f14182c;

                        /* renamed from: d */
                        public final List f14183d;

                        /* renamed from: e */
                        public final String f14184e;

                        {
                            this.f14180a = this;
                            this.f14181b = a3;
                            this.f14182c = rlVar;
                            this.f14183d = arrayList2;
                            this.f14184e = next;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f14180a.m13990a(this.f14181b, this.f14182c, this.f14183d, this.f14184e);
                        }
                    });
                } catch (zzdos e2) {
                    try {
                        rlVar.mo16734e("Failed to create Adapter.");
                    } catch (RemoteException e3) {
                        zzbbq.m15855b("", e3);
                    }
                }
            }
            zzdyq.m12984b(arrayList).m12979a(new Callable(this) { // from class: c.d.b.d.g.a.ol

                /* renamed from: a */
                public final zzcnu f14347a;

                {
                    this.f14347a = this;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f14347a.m13979e();
                }
            }, this.f26325h);
        } catch (JSONException e4) {
            zzayp.m16154e("Malformed CLD response", e4);
        }
    }

    /* renamed from: a */
    public final void m13987a(String str, boolean z, String str2, int i) {
        this.f26330m.put(str, new zzaiq(str, z, i, str2));
    }

    /* renamed from: b */
    public final void m13986b() {
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23734R0)).booleanValue() && !zzacx.f23996a.mo16862a().booleanValue()) {
            if (this.f26329l.f24761c >= ((Integer) zzwm.m11166e().m16921a(zzabb.f23739S0)).intValue() && this.f26331n) {
                if (!this.f26318a) {
                    synchronized (this) {
                        if (!this.f26318a) {
                            this.f26328k.m14031a();
                            this.f26321d.mo12976a(new Runnable(this) { // from class: c.d.b.d.g.a.jl

                                /* renamed from: a */
                                public final zzcnu f13797a;

                                {
                                    this.f13797a = this;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f13797a.m13977g();
                                }
                            }, this.f26325h);
                            this.f26318a = true;
                            zzdzc<String> d = m13981d();
                            this.f26327j.schedule(new Runnable(this) { // from class: c.d.b.d.g.a.ll

                                /* renamed from: a */
                                public final zzcnu f13985a;

                                {
                                    this.f13985a = this;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f13985a.m13978f();
                                }
                            }, ((Long) zzwm.m11166e().m16921a(zzabb.f23749U0)).longValue(), TimeUnit.SECONDS);
                            zzdyq.m12991a(d, new C3920pl(this), this.f26325h);
                            return;
                        }
                        return;
                    }
                }
                return;
            }
        }
        if (!this.f26318a) {
            m13987a("com.google.android.gms.ads.MobileAds", true, "", 0);
            this.f26321d.m15835a((zzbcg<Boolean>) false);
            this.f26318a = true;
        }
    }

    /* renamed from: b */
    public final /* synthetic */ void m13985b(zzait zzaitVar) {
        try {
            zzaitVar.mo10990f(m13983c());
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
        }
    }

    /* renamed from: c */
    public final List<zzaiq> m13983c() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.f26330m.keySet()) {
            zzaiq zzaiqVar = this.f26330m.get(str);
            arrayList.add(new zzaiq(str, zzaiqVar.f24138b, zzaiqVar.f24139c, zzaiqVar.f24140d));
        }
        return arrayList;
    }

    /* renamed from: d */
    public final zzdzc<String> m13981d() {
        synchronized (this) {
            String c = zzp.m17965g().m16176i().mo16075a().m16197c();
            if (!TextUtils.isEmpty(c)) {
                return zzdyq.m12988a(c);
            }
            final zzbcg zzbcgVar = new zzbcg();
            zzp.m17965g().m16176i().mo16072a(new Runnable(this, zzbcgVar) { // from class: c.d.b.d.g.a.il

                /* renamed from: a */
                public final zzcnu f13549a;

                /* renamed from: b */
                public final zzbcg f13550b;

                {
                    this.f13549a = this;
                    this.f13550b = zzbcgVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f13549a.m13995a(this.f13550b);
                }
            });
            return zzbcgVar;
        }
    }

    /* renamed from: e */
    public final /* synthetic */ Object m13979e() throws Exception {
        this.f26321d.m15835a((zzbcg<Boolean>) true);
        return null;
    }

    /* renamed from: f */
    public final /* synthetic */ void m13978f() {
        synchronized (this) {
            if (!this.f26319b) {
                m13987a("com.google.android.gms.ads.MobileAds", false, "Timeout.", (int) (zzp.m17962j().mo17092a() - this.f26320c));
                this.f26321d.m15834a(new Exception());
            }
        }
    }

    /* renamed from: g */
    public final /* synthetic */ void m13977g() {
        this.f26328k.m14028b();
    }
}
