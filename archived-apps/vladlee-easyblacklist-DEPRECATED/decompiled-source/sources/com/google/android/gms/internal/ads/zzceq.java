package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzq;
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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzceq.class */
public final class zzceq {

    /* renamed from: e */
    private final Context f13053e;

    /* renamed from: f */
    private final WeakReference<Context> f13054f;

    /* renamed from: g */
    private final zzcka f13055g;

    /* renamed from: h */
    private final Executor f13056h;

    /* renamed from: i */
    private final Executor f13057i;

    /* renamed from: j */
    private final ScheduledExecutorService f13058j;

    /* renamed from: k */
    private final zzcea f13059k;

    /* renamed from: l */
    private final zzazb f13060l;

    /* renamed from: a */
    private boolean f13049a = false;

    /* renamed from: b */
    private boolean f13050b = false;

    /* renamed from: d */
    private final zzazl<Boolean> f13052d = new zzazl<>();

    /* renamed from: m */
    private Map<String, zzagn> f13061m = new ConcurrentHashMap();

    /* renamed from: c */
    private final long f13051c = zzq.zzkx().elapsedRealtime();

    public zzceq(Executor executor, Context context, WeakReference<Context> weakReference, Executor executor2, zzcka zzckaVar, ScheduledExecutorService scheduledExecutorService, zzcea zzceaVar, zzazb zzazbVar) {
        this.f13055g = zzckaVar;
        this.f13053e = context;
        this.f13054f = weakReference;
        this.f13056h = executor2;
        this.f13058j = scheduledExecutorService;
        this.f13057i = executor;
        this.f13059k = zzceaVar;
        this.f13060l = zzazbVar;
        m3794a("com.google.android.gms.ads.MobileAds", false, "", 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m3798a(final zzceq zzceqVar, String str) {
        try {
            ArrayList arrayList = new ArrayList();
            JSONObject jSONObject = new JSONObject(str).getJSONObject("initializer_settings").getJSONObject("config");
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                final String next = keys.next();
                final Object obj = new Object();
                final zzazl zzazlVar = new zzazl();
                zzdhe zza = zzdgs.zza(zzazlVar, ((Long) zzve.zzoy().zzd(zzzn.zzcks)).longValue(), TimeUnit.SECONDS, zzceqVar.f13058j);
                zzceqVar.f13059k.zzgd(next);
                final long elapsedRealtime = zzq.zzkx().elapsedRealtime();
                zza.addListener(new Runnable(zzceqVar, obj, zzazlVar, next, elapsedRealtime) { // from class: com.google.android.gms.internal.ads.qu

                    /* renamed from: a */
                    private final zzceq f10381a;

                    /* renamed from: b */
                    private final Object f10382b;

                    /* renamed from: c */
                    private final zzazl f10383c;

                    /* renamed from: d */
                    private final String f10384d;

                    /* renamed from: e */
                    private final long f10385e;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f10381a = zzceqVar;
                        this.f10382b = obj;
                        this.f10383c = zzazlVar;
                        this.f10384d = next;
                        this.f10385e = elapsedRealtime;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f10381a.m3795a(this.f10382b, this.f10383c, this.f10384d, this.f10385e);
                    }
                }, zzceqVar.f13056h);
                arrayList.add(zza);
                final BinderC2187ra raVar = new BinderC2187ra(zzceqVar, obj, next, elapsedRealtime, zzazlVar);
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
                            arrayList2.add(new zzagx(optString, bundle));
                        }
                    } catch (JSONException e) {
                    }
                }
                zzceqVar.m3794a(next, false, "", 0);
                try {
                    final zzdac zze = zzceqVar.f13055g.zze(next, new JSONObject());
                    zzceqVar.f13057i.execute(new Runnable(zzceqVar, zze, raVar, arrayList2, next) { // from class: com.google.android.gms.internal.ads.qw

                        /* renamed from: a */
                        private final zzceq f10387a;

                        /* renamed from: b */
                        private final zzdac f10388b;

                        /* renamed from: c */
                        private final zzagp f10389c;

                        /* renamed from: d */
                        private final List f10390d;

                        /* renamed from: e */
                        private final String f10391e;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f10387a = zzceqVar;
                            this.f10388b = zze;
                            this.f10389c = raVar;
                            this.f10390d = arrayList2;
                            this.f10391e = next;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f10387a.m3796a(this.f10388b, this.f10389c, this.f10390d, this.f10391e);
                        }
                    });
                } catch (zzdab e2) {
                    try {
                        raVar.onInitializationFailed("Failed to create Adapter.");
                    } catch (RemoteException e3) {
                        zzayu.zzc("", e3);
                    }
                }
            }
            zzdgs.zzh(arrayList).zza(new Callable(zzceqVar) { // from class: com.google.android.gms.internal.ads.qx

                /* renamed from: a */
                private final zzceq f10392a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10392a = zzceqVar;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f10392a.m3801a();
                }
            }, zzceqVar.f13056h);
        } catch (JSONException e4) {
            zzavs.zza("Malformed CLD response", e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final void m3794a(String str, boolean z, String str2, int i) {
        this.f13061m.put(str, new zzagn(str, z, i, str2));
    }

    /* renamed from: d */
    private final zzdhe<String> m3789d() {
        synchronized (this) {
            String zzvl = zzq.zzku().zzvf().zzwa().zzvl();
            if (!TextUtils.isEmpty(zzvl)) {
                return zzdgs.zzaj(zzvl);
            }
            final zzazl zzazlVar = new zzazl();
            zzq.zzku().zzvf().zzb(new Runnable(this, zzazlVar) { // from class: com.google.android.gms.internal.ads.qs

                /* renamed from: a */
                private final zzceq f10378a;

                /* renamed from: b */
                private final zzazl f10379b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10378a = this;
                    this.f10379b = zzazlVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f10378a.m3800a(this.f10379b);
                }
            });
            return zzazlVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ Object m3801a() {
        this.f13052d.set(Boolean.TRUE);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3800a(final zzazl zzazlVar) {
        this.f13056h.execute(new Runnable(this, zzazlVar) { // from class: com.google.android.gms.internal.ads.qz

            /* renamed from: a */
            private final zzceq f10394a;

            /* renamed from: b */
            private final zzazl f10395b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10394a = this;
                this.f10395b = zzazlVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzazl zzazlVar2 = this.f10395b;
                String zzvl = zzq.zzku().zzvf().zzwa().zzvl();
                if (!TextUtils.isEmpty(zzvl)) {
                    zzazlVar2.set(zzvl);
                } else {
                    zzazlVar2.setException(new Exception());
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3796a(zzdac zzdacVar, zzagp zzagpVar, List list, String str) {
        try {
            Context context = this.f13054f.get();
            if (context == null) {
                context = this.f13053e;
            }
            zzdacVar.zza(context, zzagpVar, list);
        } catch (zzdab e) {
            try {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 74);
                sb.append("Failed to initialize adapter. ");
                sb.append(str);
                sb.append(" does not implement the initialize() method.");
                zzagpVar.onInitializationFailed(sb.toString());
            } catch (RemoteException e2) {
                zzayu.zzc("", e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3795a(Object obj, zzazl zzazlVar, String str, long j) {
        synchronized (obj) {
            if (!zzazlVar.isDone()) {
                m3794a(str, false, "Timeout.", (int) (zzq.zzkx().elapsedRealtime() - j));
                this.f13059k.zzq(str, "timeout");
                zzazlVar.set(Boolean.FALSE);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final /* synthetic */ void m3793b() {
        synchronized (this) {
            if (!this.f13050b) {
                m3794a("com.google.android.gms.ads.MobileAds", false, "Timeout.", (int) (zzq.zzkx().elapsedRealtime() - this.f13051c));
                this.f13052d.setException(new Exception());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final /* synthetic */ void m3791c() {
        this.f13059k.zzalj();
    }

    public final void zzall() {
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzckq)).booleanValue() && !zzabe.zzctz.get().booleanValue()) {
            if (this.f13060l.zzdwa >= ((Integer) zzve.zzoy().zzd(zzzn.zzckr)).intValue()) {
                if (!this.f13049a) {
                    synchronized (this) {
                        if (!this.f13049a) {
                            this.f13059k.zzali();
                            this.f13052d.addListener(new Runnable(this) { // from class: com.google.android.gms.internal.ads.qt

                                /* renamed from: a */
                                private final zzceq f10380a;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f10380a = this;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f10380a.m3791c();
                                }
                            }, this.f13056h);
                            this.f13049a = true;
                            zzdhe<String> d = m3789d();
                            this.f13058j.schedule(new Runnable(this) { // from class: com.google.android.gms.internal.ads.qv

                                /* renamed from: a */
                                private final zzceq f10386a;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f10386a = this;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f10386a.m3793b();
                                }
                            }, ((Long) zzve.zzoy().zzd(zzzn.zzckt)).longValue(), TimeUnit.SECONDS);
                            zzdgs.zza(d, new C2184qy(this), this.f13056h);
                            return;
                        }
                        return;
                    }
                }
                return;
            }
        }
        m3794a("com.google.android.gms.ads.MobileAds", true, "", 0);
        this.f13052d.set(Boolean.FALSE);
    }

    public final List<zzagn> zzalm() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.f13061m.keySet()) {
            zzagn zzagnVar = this.f13061m.get(str);
            arrayList.add(new zzagn(str, zzagnVar.zzcyd, zzagnVar.zzcye, zzagnVar.description));
        }
        return arrayList;
    }

    public final void zzb(final zzagu zzaguVar) {
        this.f13052d.addListener(new Runnable(this, zzaguVar) { // from class: com.google.android.gms.internal.ads.qr

            /* renamed from: a */
            private final zzceq f10376a;

            /* renamed from: b */
            private final zzagu f10377b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10376a = this;
                this.f10377b = zzaguVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzceq zzceqVar = this.f10376a;
                try {
                    this.f10377b.zzc(zzceqVar.zzalm());
                } catch (RemoteException e) {
                    zzayu.zzc("", e);
                }
            }
        }, this.f13057i);
    }
}
