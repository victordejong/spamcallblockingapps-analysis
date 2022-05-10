package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzaki;
import com.google.android.gms.internal.ads.zzakr;
import com.google.android.gms.internal.ads.zzalm;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzeg;
import p131c.p161d.p170b.p224d.p252g.p253a.C3826n1;
import p131c.p161d.p170b.p224d.p252g.p253a.C3937q1;
import p131c.p161d.p170b.p224d.p252g.p253a.C3974r1;
import p131c.p161d.p170b.p224d.p252g.p253a.C4088u1;
import p131c.p161d.p170b.p224d.p252g.p253a.C4125v1;
import p131c.p161d.p170b.p224d.p252g.p253a.C4162w1;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3863o1;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC4051t1;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzakr.class */
public final class zzakr {

    /* renamed from: a */
    public final Object f24158a;

    /* renamed from: b */
    public final Context f24159b;

    /* renamed from: c */
    public final String f24160c;

    /* renamed from: d */
    public final zzbbx f24161d;

    /* renamed from: e */
    public zzbad<zzaki> f24162e;

    /* renamed from: f */
    public zzbad<zzaki> f24163f;

    /* renamed from: g */
    public zzalm f24164g;

    /* renamed from: h */
    public int f24165h;

    public zzakr(Context context, zzbbx zzbbxVar, String str) {
        this.f24158a = new Object();
        this.f24165h = 1;
        this.f24160c = str;
        this.f24159b = context.getApplicationContext();
        this.f24161d = zzbbxVar;
        this.f24162e = new zzalf();
        this.f24163f = new zzalf();
    }

    public zzakr(Context context, zzbbx zzbbxVar, String str, zzbad<zzaki> zzbadVar, zzbad<zzaki> zzbadVar2) {
        this(context, zzbbxVar, str);
        this.f24162e = zzbadVar;
        this.f24163f = zzbadVar2;
    }

    /* renamed from: a */
    public final zzalm m16687a(final zzeg zzegVar) {
        final zzalm zzalmVar = new zzalm(this.f24163f);
        zzbbz.f24768e.execute(new Runnable(this, zzegVar, zzalmVar) { // from class: c.d.b.d.g.a.l1

            /* renamed from: a */
            public final zzakr f13924a;

            /* renamed from: b */
            public final zzeg f13925b;

            /* renamed from: c */
            public final zzalm f13926c;

            {
                this.f13924a = this;
                this.f13925b = zzegVar;
                this.f13926c = zzalmVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f13924a.m16686a(this.f13925b, this.f13926c);
            }
        });
        zzalmVar.m15828a(new C4125v1(this, zzalmVar), new C4088u1(this, zzalmVar));
        return zzalmVar;
    }

    /* renamed from: a */
    public final /* synthetic */ void m16692a(zzaki zzakiVar) {
        if (zzakiVar.mo16694g()) {
            this.f24165h = 1;
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m16688a(zzalm zzalmVar, zzaki zzakiVar) {
        synchronized (this.f24158a) {
            if (!(zzalmVar.m15829a() == -1 || zzalmVar.m15829a() == 1)) {
                zzalmVar.m15825b();
                zzdzb zzdzbVar = zzbbz.f24768e;
                zzakiVar.getClass();
                zzdzbVar.execute(RunnableC3863o1.m26613a(zzakiVar));
                zzayp.m16153g("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m16686a(zzeg zzegVar, final zzalm zzalmVar) {
        try {
            Context context = this.f24159b;
            zzbbx zzbbxVar = this.f24161d;
            final zzaki zzajuVar = zzadh.f24017c.mo16862a().booleanValue() ? new zzaju(context, zzbbxVar) : new zzakk(context, zzbbxVar, zzegVar, null);
            zzajuVar.mo16701a(new zzakh(this, zzalmVar, zzajuVar) { // from class: c.d.b.d.g.a.m1

                /* renamed from: a */
                public final zzakr f14009a;

                /* renamed from: b */
                public final zzalm f14010b;

                /* renamed from: c */
                public final zzaki f14011c;

                {
                    this.f14009a = this;
                    this.f14010b = zzalmVar;
                    this.f14011c = zzajuVar;
                }

                @Override // com.google.android.gms.internal.ads.zzakh
                /* renamed from: a */
                public final void mo16702a() {
                    final zzakr zzakrVar = this.f14009a;
                    final zzalm zzalmVar2 = this.f14010b;
                    final zzaki zzakiVar = this.f14011c;
                    zzayu.f24665h.postDelayed(new Runnable(zzakrVar, zzalmVar2, zzakiVar) { // from class: c.d.b.d.g.a.p1

                        /* renamed from: a */
                        public final zzakr f14374a;

                        /* renamed from: b */
                        public final zzalm f14375b;

                        /* renamed from: c */
                        public final zzaki f14376c;

                        {
                            this.f14374a = zzakrVar;
                            this.f14375b = zzalmVar2;
                            this.f14376c = zzakiVar;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f14374a.m16688a(this.f14375b, this.f14376c);
                        }
                    }, C4162w1.f15896b);
                }
            });
            zzajuVar.mo16671b("/jsLoaded", new C3974r1(this, zzalmVar, zzajuVar));
            zzbaz zzbazVar = new zzbaz();
            C3937q1 q1Var = new C3937q1(this, zzegVar, zzajuVar, zzbazVar);
            zzbazVar.m15925a(q1Var);
            zzajuVar.mo16671b("/requestReload", q1Var);
            if (this.f24160c.endsWith(".js")) {
                zzajuVar.mo16697c(this.f24160c);
            } else if (this.f24160c.startsWith("<html>")) {
                zzajuVar.mo16696e(this.f24160c);
            } else {
                zzajuVar.mo16698b(this.f24160c);
            }
            zzayu.f24665h.postDelayed(new RunnableC4051t1(this, zzalmVar, zzajuVar), C4162w1.f15895a);
        } catch (Throwable th) {
            zzbbq.m15855b("Error creating webview.", th);
            zzp.m17965g().m16188a(th, "SdkJavascriptFactory.loadJavascriptEngine");
            zzalmVar.m15825b();
        }
    }

    /* renamed from: b */
    public final zzali m16684b(zzeg zzegVar) {
        synchronized (this.f24158a) {
            synchronized (this.f24158a) {
                if (this.f24164g != null && this.f24165h == 0) {
                    this.f24164g.m15828a(new zzbck(this) { // from class: c.d.b.d.g.a.k1

                        /* renamed from: a */
                        public final zzakr f13827a;

                        {
                            this.f13827a = this;
                        }

                        @Override // com.google.android.gms.internal.ads.zzbck
                        /* renamed from: a */
                        public final void mo15830a(Object obj) {
                            this.f13827a.m16692a((zzaki) obj);
                        }
                    }, C3826n1.f14209a);
                }
            }
            if (!(this.f24164g == null || this.f24164g.m15829a() == -1)) {
                if (this.f24165h == 0) {
                    return this.f24164g.m16677c();
                } else if (this.f24165h == 1) {
                    this.f24165h = 2;
                    m16687a((zzeg) null);
                    return this.f24164g.m16677c();
                } else if (this.f24165h == 2) {
                    return this.f24164g.m16677c();
                } else {
                    return this.f24164g.m16677c();
                }
            }
            this.f24165h = 2;
            zzalm a = m16687a((zzeg) null);
            this.f24164g = a;
            return a.m16677c();
        }
    }
}
