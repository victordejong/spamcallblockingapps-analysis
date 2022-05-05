package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzc;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcaj.class */
public final class zzcaj {

    /* renamed from: b */
    private final zza f12818b;

    /* renamed from: c */
    private final zzbdr f12819c;

    /* renamed from: d */
    private final Context f12820d;

    /* renamed from: e */
    private final Executor f12821e;

    /* renamed from: f */
    private final zzdq f12822f;

    /* renamed from: g */
    private final zzazb f12823g;

    /* renamed from: i */
    private zzdhe<zzbdi> f12825i;

    /* renamed from: a */
    private final C2151ps f12817a = new C2151ps((byte) 0);

    /* renamed from: h */
    private final zzaft f12824h = new zzaft();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcaj(zzcat zzcatVar) {
        this.f12820d = zzcat.m3824a(zzcatVar);
        this.f12821e = zzcat.m3823b(zzcatVar);
        this.f12822f = zzcat.m3822c(zzcatVar);
        this.f12823g = zzcat.m3821d(zzcatVar);
        this.f12818b = zzcat.m3820e(zzcatVar);
        this.f12819c = zzcat.m3819f(zzcatVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzbdi m3827a(zzbdi zzbdiVar) {
        zzbdiVar.zza("/result", this.f12824h);
        zzbev zzaaa = zzbdiVar.zzaaa();
        C2151ps psVar = this.f12817a;
        zzaaa.zza(null, psVar, psVar, psVar, psVar, false, null, new zzc(this.f12820d, null, null), null, null);
        return zzbdiVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzdhe m3825a(String str, JSONObject jSONObject, zzbdi zzbdiVar) {
        return this.f12824h.zza(zzbdiVar, str, jSONObject);
    }

    public final void destroy() {
        synchronized (this) {
            if (this.f12825i != null) {
                zzdgs.zza(this.f12825i, new C2148pp(), this.f12821e);
                this.f12825i = null;
            }
        }
    }

    public final void zza(String str, zzafn<Object> zzafnVar) {
        synchronized (this) {
            if (this.f12825i != null) {
                zzdgs.zza(this.f12825i, new C2147po(str, zzafnVar), this.f12821e);
            }
        }
    }

    public final void zza(String str, Map<String, ?> map) {
        synchronized (this) {
            if (this.f12825i != null) {
                zzdgs.zza(this.f12825i, new C2149pq(str, map), this.f12821e);
            }
        }
    }

    public final <T> void zza(WeakReference<T> weakReference, String str, zzafn<T> zzafnVar) {
        zza(str, new C2153pu(this, weakReference, str, zzafnVar, (byte) 0));
    }

    public final void zzakq() {
        synchronized (this) {
            this.f12825i = zzdgs.zzb(zzbdr.zza(this.f12820d, this.f12823g, (String) zzve.zzoy().zzd(zzzn.zzclx), this.f12822f, this.f12818b), new zzded(this) { // from class: com.google.android.gms.internal.ads.pn

                /* renamed from: a */
                private final zzcaj f10332a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10332a = this;
                }

                @Override // com.google.android.gms.internal.ads.zzded
                public final Object apply(Object obj) {
                    return this.f10332a.m3827a((zzbdi) obj);
                }
            }, this.f12821e);
            zzazh.zza(this.f12825i, "NativeJavascriptExecutor.initializeEngine");
        }
    }

    public final void zzb(String str, zzafn<Object> zzafnVar) {
        synchronized (this) {
            if (this.f12825i != null) {
                zzdgs.zza(this.f12825i, new C2150pr(str, zzafnVar), this.f12821e);
            }
        }
    }

    public final zzdhe<JSONObject> zzc(final String str, final JSONObject jSONObject) {
        synchronized (this) {
            if (this.f12825i == null) {
                return zzdgs.zzaj(null);
            }
            return zzdgs.zzb(this.f12825i, new zzdgf(this, str, jSONObject) { // from class: com.google.android.gms.internal.ads.pm

                /* renamed from: a */
                private final zzcaj f10329a;

                /* renamed from: b */
                private final String f10330b;

                /* renamed from: c */
                private final JSONObject f10331c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10329a = this;
                    this.f10330b = str;
                    this.f10331c = jSONObject;
                }

                @Override // com.google.android.gms.internal.ads.zzdgf
                public final zzdhe zzf(Object obj) {
                    return this.f10329a.m3825a(this.f10330b, this.f10331c, (zzbdi) obj);
                }
            }, this.f12821e);
        }
    }
}
