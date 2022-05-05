package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.zzq;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcgw.class */
public final class zzcgw extends zzaqa {

    /* renamed from: a */
    private final Context f13124a;

    /* renamed from: b */
    private final Executor f13125b;

    /* renamed from: c */
    private final zzarb f13126c;

    /* renamed from: d */
    private final zzaqy f13127d;

    /* renamed from: e */
    private final zzbij f13128e;

    /* renamed from: f */
    private final HashMap<String, zzchh> f13129f;

    public zzcgw(Context context, Executor executor, zzarb zzarbVar, zzbij zzbijVar, zzaqy zzaqyVar, HashMap<String, zzchh> hashMap) {
        zzzn.initialize(context);
        this.f13124a = context;
        this.f13125b = executor;
        this.f13126c = zzarbVar;
        this.f13127d = zzaqyVar;
        this.f13128e = zzbijVar;
        this.f13129f = hashMap;
    }

    /* renamed from: a */
    private static zzdhe<JSONObject> m3777a(zzaqk zzaqkVar, zzdcr zzdcrVar, final zzcut zzcutVar) {
        zzdgf sbVar = new zzdgf(zzcutVar) { // from class: com.google.android.gms.internal.ads.sb

            /* renamed from: a */
            private final zzcut f10448a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10448a = zzcutVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                return this.f10448a.zzadt().zzs(zzq.zzkq().zzd((Bundle) obj));
            }
        };
        return zzdcrVar.zza((zzdcr) zzdco.GMS_SIGNALS, zzdgs.zzaj(zzaqkVar.zzdlu)).zza(sbVar).zzb(C2212rz.f10446a).zzaqg();
    }

    /* renamed from: a */
    private static zzdhe<zzaqq> m3775a(zzdhe<JSONObject> zzdheVar, zzdcr zzdcrVar, zzakc zzakcVar) {
        return zzdcrVar.zza((zzdcr) zzdco.BUILD_URL, (zzdhe) zzdheVar).zza(zzakcVar.zza("AFMA_getAdDictionary", zzajx.zzdaq, C2217sd.f10450a)).zzaqg();
    }

    /* renamed from: a */
    private final void m3776a(zzdhe<InputStream> zzdheVar, zzaqe zzaqeVar) {
        zzdgs.zza(zzdgs.zzb(zzdheVar, new zzdgf(this) { // from class: com.google.android.gms.internal.ads.sh

            /* renamed from: a */
            private final zzcgw f10455a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10455a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                return zzdgs.zzaj(zzdae.zze((InputStream) obj));
            }
        }, zzazd.zzdwe), new C2222si(zzaqeVar), zzazd.zzdwj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ InputStream m3774a(zzdhe zzdheVar, zzdhe zzdheVar2) {
        String zzuf = ((zzaqq) zzdheVar.get()).zzuf();
        this.f13129f.put(zzuf, new zzchh((zzaqq) zzdheVar.get(), (JSONObject) zzdheVar2.get()));
        return new ByteArrayInputStream(zzuf.getBytes(zzdeb.UTF_8));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3778a() {
        zzazh.zza(this.f13127d.zzuh(), "persistFlags");
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final zzapx zza(zzapv zzapvVar) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void zza(zzapv zzapvVar, zzaqc zzaqcVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void zza(zzaqk zzaqkVar, zzaqe zzaqeVar) {
        zzdhe<InputStream> zzh = zzh(zzaqkVar);
        m3776a(zzh, zzaqeVar);
        zzh.addListener(new Runnable(this) { // from class: com.google.android.gms.internal.ads.sc

            /* renamed from: a */
            private final zzcgw f10449a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10449a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f10449a.m3778a();
            }
        }, this.f13125b);
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void zza(String str, zzaqe zzaqeVar) {
        zzdhe<InputStream> zzdheVar;
        if (!zzabd.zzcty.get().booleanValue()) {
            zzdheVar = zzdgs.zzk(new Exception("Split request is disabled."));
        } else {
            C2220sg sgVar = new C2220sg();
            if (this.f13129f.remove(str) == null) {
                String valueOf = String.valueOf(str);
                zzdheVar = zzdgs.zzk(new Exception(valueOf.length() != 0 ? "URL to be removed not found for cache key: ".concat(valueOf) : new String("URL to be removed not found for cache key: ")));
            } else {
                zzdheVar = zzdgs.zzaj(sgVar);
            }
        }
        m3776a(zzdheVar, zzaqeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void zzb(zzaqk zzaqkVar, zzaqe zzaqeVar) {
        zzdhe<InputStream> zzdheVar;
        zzakc zza = zzq.zzld().zza(this.f13124a, zzazb.zzxm());
        if (!((Boolean) zzve.zzoy().zzd(zzzn.zzcpp)).booleanValue()) {
            zzdheVar = zzdgs.zzk(new Exception("Signal collection disabled."));
        } else {
            zzcut zza2 = this.f13128e.zza(zzaqkVar);
            final zzcua<JSONObject> zzadu = this.f13128e.zza(zzaqkVar).zzadu();
            zzdheVar = zza2.zzadv().zza((zzdcr) zzdco.GET_SIGNALS, zzdgs.zzaj(zzaqkVar.zzdlu)).zza(new zzdgf(zzadu) { // from class: com.google.android.gms.internal.ads.se

                /* renamed from: a */
                private final zzcua f10451a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10451a = zzadu;
                }

                @Override // com.google.android.gms.internal.ads.zzdgf
                public final zzdhe zzf(Object obj) {
                    return this.f10451a.zzs(zzq.zzkq().zzd((Bundle) obj));
                }
            }).zzw(zzdco.JS_SIGNALS).zza(zza.zza("google.afma.request.getSignals", zzajx.zzdaq, zzajx.zzdar)).zzaqg();
        }
        m3776a(zzdheVar, zzaqeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void zzc(zzaqk zzaqkVar, zzaqe zzaqeVar) {
        zzdhe<InputStream> zzdheVar;
        Exception exc;
        if (!zzabd.zzcty.get().booleanValue()) {
            exc = new Exception("Split request is disabled.");
        } else if (zzaqkVar.zzdlx == null) {
            exc = new Exception("Pool configuration missing from request.");
        } else if (zzaqkVar.zzdlx.zzgoi == 0 || zzaqkVar.zzdlx.zzgoj == 0) {
            exc = new Exception("Caching is disabled.");
        } else {
            zzakc zza = zzq.zzld().zza(this.f13124a, zzazb.zzxm());
            zzcut zza2 = this.f13128e.zza(zzaqkVar);
            zzdcr zzadv = zza2.zzadv();
            final zzdhe<JSONObject> a = m3777a(zzaqkVar, zzadv, zza2);
            final zzdhe<zzaqq> a2 = m3775a(a, zzadv, zza);
            zzdheVar = zzadv.zza((zzdcr) zzdco.GET_URL_AND_CACHE_KEY, a, a2).zzb(new Callable(this, a2, a) { // from class: com.google.android.gms.internal.ads.sf

                /* renamed from: a */
                private final zzcgw f10452a;

                /* renamed from: b */
                private final zzdhe f10453b;

                /* renamed from: c */
                private final zzdhe f10454c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10452a = this;
                    this.f10453b = a2;
                    this.f10454c = a;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f10452a.m3774a(this.f10453b, this.f10454c);
                }
            }).zzaqg();
            m3776a(zzdheVar, zzaqeVar);
        }
        zzdheVar = zzdgs.zzk(exc);
        m3776a(zzdheVar, zzaqeVar);
    }

    public final zzdhe<InputStream> zzh(zzaqk zzaqkVar) {
        zzdcj zzb;
        String str;
        zzakc zza = zzq.zzld().zza(this.f13124a, zzazb.zzxm());
        zzcut zza2 = this.f13128e.zza(zzaqkVar);
        zzaju zza3 = zza.zza("google.afma.response.normalize", zzchk.zzfwm, zzajx.zzdar);
        zzchl zzchlVar = new zzchl(this.f13124a, zzaqkVar.zzdij.zzbma, this.f13126c, zzaqkVar.zzdjj);
        zzdcr zzadv = zza2.zzadv();
        zzchh zzchhVar = null;
        if (!zzabd.zzcty.get().booleanValue()) {
            zzchhVar = null;
            if (zzaqkVar.zzdly != null) {
                zzchhVar = null;
                if (!zzaqkVar.zzdly.isEmpty()) {
                    str = "Request contained a PoolKey but split request is disabled.";
                    zzavs.zzed(str);
                }
            }
        } else {
            zzchhVar = null;
            if (zzaqkVar.zzdly != null) {
                zzchhVar = null;
                if (!zzaqkVar.zzdly.isEmpty()) {
                    zzchh remove = this.f13129f.remove(zzaqkVar.zzdly);
                    zzchhVar = remove;
                    if (remove == null) {
                        str = "Request contained a PoolKey but no matching parameters were found.";
                        zzchhVar = remove;
                        zzavs.zzed(str);
                    }
                }
            }
        }
        if (zzchhVar == null) {
            final zzdhe<JSONObject> a = m3777a(zzaqkVar, zzadv, zza2);
            final zzdhe<zzaqq> a2 = m3775a(a, zzadv, zza);
            final zzdca zzaqg = zzadv.zza((zzdcr) zzdco.HTTP, a2, a).zzb(new Callable(a, a2) { // from class: com.google.android.gms.internal.ads.rw

                /* renamed from: a */
                private final zzdhe f10439a;

                /* renamed from: b */
                private final zzdhe f10440b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10439a = a;
                    this.f10440b = a2;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new zzcho((JSONObject) this.f10439a.get(), (zzaqq) this.f10440b.get());
                }
            }).zzb(zzchlVar).zzaqg();
            zzb = zzadv.zza((zzdcr) zzdco.PRE_PROCESS, a, a2, zzaqg).zzb(new Callable(zzaqg, a, a2) { // from class: com.google.android.gms.internal.ads.ry

                /* renamed from: a */
                private final zzdhe f10443a;

                /* renamed from: b */
                private final zzdhe f10444b;

                /* renamed from: c */
                private final zzdhe f10445c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10443a = zzaqg;
                    this.f10444b = a;
                    this.f10445c = a2;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new zzchk((zzchn) this.f10443a.get(), (JSONObject) this.f10444b.get(), (zzaqq) this.f10445c.get());
                }
            });
        } else {
            final zzdca zzaqg2 = zzadv.zza((zzdcr) zzdco.HTTP, zzdgs.zzaj(new zzcho(zzchhVar.zzfwj, zzchhVar.zzfwi))).zzb(zzchlVar).zzaqg();
            final zzdhe<?> zzaj = zzdgs.zzaj(zzchhVar);
            zzb = zzadv.zza((zzdcr) zzdco.PRE_PROCESS, zzaqg2, zzaj).zzb(new Callable(zzaqg2, zzaj) { // from class: com.google.android.gms.internal.ads.rx

                /* renamed from: a */
                private final zzdhe f10441a;

                /* renamed from: b */
                private final zzdhe f10442b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10441a = zzaqg2;
                    this.f10442b = zzaj;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    zzdhe zzdheVar = this.f10441a;
                    zzdhe zzdheVar2 = this.f10442b;
                    return new zzchk((zzchn) zzdheVar.get(), ((zzchh) zzdheVar2.get()).zzfwj, ((zzchh) zzdheVar2.get()).zzfwi);
                }
            });
        }
        return zzb.zza(zza3).zzaqg();
    }
}
