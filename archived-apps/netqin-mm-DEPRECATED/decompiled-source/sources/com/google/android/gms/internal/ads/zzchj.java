package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzbch;
import com.google.android.gms.internal.ads.zzbgj;
import com.google.android.gms.internal.ads.zzchj;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzchj.class */
public final class zzchj {

    /* renamed from: a */
    public final zzdok f26028a;

    /* renamed from: b */
    public final Executor f26029b;

    /* renamed from: c */
    public final zzcjt f26030c;

    public zzchj(zzdok zzdokVar, Executor executor, zzcjt zzcjtVar) {
        this.f26028a = zzdokVar;
        this.f26029b = executor;
        this.f26030c = zzcjtVar;
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m14270a(Object obj) throws Exception {
        zzbgj a = this.f26030c.m14129a(zzvn.m11195i());
        final zzbch c = zzbch.m15831c(a);
        m14272a(a);
        a.mo15543z().mo15491a(new zzbhx(c) { // from class: c.d.b.d.g.a.zi

            /* renamed from: a */
            public final zzbch f16457a;

            {
                this.f16457a = c;
            }

            @Override // com.google.android.gms.internal.ads.zzbhx
            /* renamed from: a */
            public final void mo15514a() {
                this.f16457a.m15832a();
            }
        });
        a.loadUrl((String) zzwm.m11166e().m16921a(zzabb.f23921z1));
        return c;
    }

    /* renamed from: a */
    public final zzdzc<zzbgj> m14269a(final String str, final String str2) {
        return zzdyq.m12992a(zzdyq.m12988a((Object) null), new zzdya(this, str, str2) { // from class: c.d.b.d.g.a.xi

            /* renamed from: a */
            public final zzchj f16051a;

            /* renamed from: b */
            public final String f16052b;

            /* renamed from: c */
            public final String f16053c;

            {
                this.f16051a = this;
                this.f16052b = str;
                this.f16053c = str2;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return this.f16051a.m14268a(this.f16052b, this.f16053c, obj);
            }
        }, this.f26029b);
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m14268a(String str, String str2, Object obj) throws Exception {
        final zzbgj a = this.f26030c.m14129a(zzvn.m11195i());
        final zzbch c = zzbch.m15831c(a);
        m14272a(a);
        if (this.f26028a.f27641c != null) {
            a.mo15585a(zzbhy.m15504h());
        } else {
            a.mo15585a(zzbhy.m15505g());
        }
        a.mo15543z().mo15492a(new zzbhu(this, a, c) { // from class: c.d.b.d.g.a.cj

            /* renamed from: a */
            public final zzchj f12563a;

            /* renamed from: b */
            public final zzbgj f12564b;

            /* renamed from: c */
            public final zzbch f12565c;

            {
                this.f12563a = this;
                this.f12564b = a;
                this.f12565c = c;
            }

            @Override // com.google.android.gms.internal.ads.zzbhu
            /* renamed from: a */
            public final void mo15515a(boolean z) {
                this.f12563a.m14271a(this.f12564b, this.f12565c, z);
            }
        });
        a.mo15578a(str, str2, (String) null);
        return c;
    }

    /* renamed from: a */
    public final zzdzc<zzbgj> m14267a(final JSONObject jSONObject) {
        return zzdyq.m12992a(zzdyq.m12992a(zzdyq.m12988a((Object) null), new zzdya(this) { // from class: c.d.b.d.g.a.aj

            /* renamed from: a */
            public final zzchj f12296a;

            {
                this.f12296a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return this.f12296a.m14270a(obj);
            }
        }, this.f26029b), new zzdya(this, jSONObject) { // from class: c.d.b.d.g.a.yi

            /* renamed from: a */
            public final zzchj f16223a;

            /* renamed from: b */
            public final JSONObject f16224b;

            {
                this.f16223a = this;
                this.f16224b = jSONObject;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return this.f16223a.m14266a(this.f16224b, (zzbgj) obj);
            }
        }, this.f26029b);
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m14266a(JSONObject jSONObject, final zzbgj zzbgjVar) throws Exception {
        final zzbch c = zzbch.m15831c(zzbgjVar);
        if (this.f26028a.f27641c != null) {
            zzbgjVar.mo15585a(zzbhy.m15504h());
        } else {
            zzbgjVar.mo15585a(zzbhy.m15505g());
        }
        zzbgjVar.mo15543z().mo15492a(new zzbhu(this, zzbgjVar, c) { // from class: c.d.b.d.g.a.bj

            /* renamed from: a */
            public final zzchj f12481a;

            /* renamed from: b */
            public final zzbgj f12482b;

            /* renamed from: c */
            public final zzbch f12483c;

            {
                this.f12481a = this;
                this.f12482b = zzbgjVar;
                this.f12483c = c;
            }

            @Override // com.google.android.gms.internal.ads.zzbhu
            /* renamed from: a */
            public final void mo15515a(boolean z) {
                this.f12481a.m14265b(this.f12482b, this.f12483c, z);
            }
        });
        zzbgjVar.mo15569b("google.afma.nativeAds.renderVideo", jSONObject);
        return c;
    }

    /* renamed from: a */
    public final void m14272a(zzbgj zzbgjVar) {
        zzbgjVar.mo15570b("/video", zzagx.f24103m);
        zzbgjVar.mo15570b("/videoMeta", zzagx.f24104n);
        zzbgjVar.mo15570b("/precache", new zzbfq());
        zzbgjVar.mo15570b("/delayPageLoaded", zzagx.f24107q);
        zzbgjVar.mo15570b("/instrument", zzagx.f24105o);
        zzbgjVar.mo15570b("/log", zzagx.f24098h);
        zzbgjVar.mo15570b("/videoClicked", zzagx.f24099i);
        zzbgjVar.mo15543z().mo15486a(true);
        zzbgjVar.mo15570b("/click", zzagx.f24094d);
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23650A1)).booleanValue()) {
            zzbgjVar.mo15570b("/getNativeAdViewSignals", zzagx.f24110t);
        }
        if (this.f26028a.f27641c != null) {
            zzbgjVar.mo15543z().mo15480b(true);
            zzbgjVar.mo15570b("/open", new zzahu(null, null));
        } else {
            zzbgjVar.mo15543z().mo15480b(false);
        }
        if (zzp.m17972A().m16256a(zzbgjVar.getContext())) {
            zzbgjVar.mo15570b("/logScionEvent", new zzahs(zzbgjVar.getContext()));
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m14271a(zzbgj zzbgjVar, zzbch zzbchVar, boolean z) {
        if (z) {
            if (!(this.f26028a.f27640b == null || zzbgjVar.mo15558i() == null)) {
                zzbgjVar.mo15558i().m15531b(this.f26028a.f27640b);
            }
            zzbchVar.m15832a();
            return;
        }
        zzbchVar.m15834a((Throwable) new zzcwn(zzdpg.INTERNAL_ERROR, "Instream video Web View failed to load."));
    }

    /* renamed from: b */
    public final /* synthetic */ void m14265b(zzbgj zzbgjVar, zzbch zzbchVar, boolean z) {
        if (!(this.f26028a.f27640b == null || zzbgjVar.mo15558i() == null)) {
            zzbgjVar.mo15558i().m15531b(this.f26028a.f27640b);
        }
        zzbchVar.m15832a();
    }
}
