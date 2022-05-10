package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.common.util.Strings;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzlo;
import com.google.android.gms.internal.measurement.zzml;
import com.google.android.gms.internal.measurement.zzms;
import com.google.android.gms.internal.measurement.zzmy;
import com.google.android.gms.internal.measurement.zznj;
import com.google.android.gms.internal.measurement.zznw;
import com.google.android.gms.measurement.internal.zzhb;
import com.integralads.avid.library.mopub.AvidBridge;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p012b.p035f.C0780a;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4827u3;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4840v7;
import p131c.p161d.p170b.p224d.p260i.p261a.C4673d5;
import p131c.p161d.p170b.p224d.p260i.p261a.C4737k3;
import p131c.p161d.p170b.p224d.p260i.p261a.C4748l5;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4643a5;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4653b5;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4663c5;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4683e5;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4693f5;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4703g5;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4712h5;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4721i5;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4730j5;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4739k5;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4757m5;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4792q4;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4810s4;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4846w4;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4855x4;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4873z4;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhb.class */
public final class zzhb extends AbstractC4827u3 {
    @VisibleForTesting

    /* renamed from: c */
    public C4748l5 f30056c;

    /* renamed from: d */
    public zzgw f30057d;

    /* renamed from: f */
    public boolean f30059f;

    /* renamed from: n */
    public final zzo f30067n;

    /* renamed from: e */
    public final Set<zzgz> f30058e = new CopyOnWriteArraySet();

    /* renamed from: h */
    public final Object f30061h = new Object();
    @VisibleForTesting

    /* renamed from: o */
    public boolean f30068o = true;

    /* renamed from: p */
    public final AbstractC4840v7 f30069p = new C4673d5(this);

    /* renamed from: g */
    public final AtomicReference<String> f30060g = new AtomicReference<>();

    /* renamed from: i */
    public zzac f30062i = new zzac(null, null);

    /* renamed from: j */
    public int f30063j = 100;

    /* renamed from: l */
    public long f30065l = -1;

    /* renamed from: m */
    public int f30066m = 100;

    /* renamed from: k */
    public final AtomicLong f30064k = new AtomicLong(0);

    public zzhb(zzfu zzfuVar) {
        super(zzfuVar);
        this.f30067n = new zzo(zzfuVar);
    }

    /* renamed from: A */
    public final Boolean m9005A() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) mo8795j().m9091a(atomicReference, 15000L, "boolean test flag value", new RunnableC4792q4(this, atomicReference));
    }

    /* renamed from: C */
    public final String m9004C() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) mo8795j().m9091a(atomicReference, 15000L, "String test flag value", new RunnableC4873z4(this, atomicReference));
    }

    /* renamed from: D */
    public final Long m9003D() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) mo8795j().m9091a(atomicReference, 15000L, "long test flag value", new RunnableC4703g5(this, atomicReference));
    }

    /* renamed from: E */
    public final Integer m9002E() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) mo8795j().m9091a(atomicReference, 15000L, "int test flag value", new RunnableC4693f5(this, atomicReference));
    }

    /* renamed from: F */
    public final Double m9001F() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) mo8795j().m9091a(atomicReference, 15000L, "double test flag value", new RunnableC4721i5(this, atomicReference));
    }

    /* renamed from: G */
    public final String m9000G() {
        return this.f30060g.get();
    }

    /* renamed from: H */
    public final void m8999H() {
        mo9085c();
        m24876t();
        if (this.f17262a.m9053h()) {
            if (m24897h().m9354a(zzas.f29864d0)) {
                Boolean f = m24897h().m9341f("google_analytics_deferred_deep_link_enabled");
                if (f != null && f.booleanValue()) {
                    mo8789p().m9145x().m9143a("Deferred Deep Link feature enabled.");
                    mo8795j().m9093a(new Runnable(this) { // from class: c.d.b.d.i.a.r4

                        /* renamed from: a */
                        public final zzhb f17361a;

                        {
                            this.f17361a = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            zzhb zzhbVar = this.f17361a;
                            zzhbVar.mo9085c();
                            if (zzhbVar.m24898g().f17230x.m9133a()) {
                                zzhbVar.mo8789p().m9145x().m9143a("Deferred Deep Link already retrieved. Not fetching again.");
                                return;
                            }
                            long a = zzhbVar.m24898g().f17231y.m9131a();
                            zzhbVar.m24898g().f17231y.m9130a(1 + a);
                            if (a >= 5) {
                                zzhbVar.mo8789p().m9149t().m9143a("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                                zzhbVar.m24898g().f17230x.m9132a(true);
                                return;
                            }
                            zzhbVar.f17262a.m9052i();
                        }
                    });
                }
            }
            m24885n().m8918D();
            this.f30068o = false;
            String A = m24898g().m24931A();
            if (!TextUtils.isEmpty(A)) {
                m24901d().m24909l();
                if (!A.equals(Build.VERSION.RELEASE)) {
                    Bundle bundle = new Bundle();
                    bundle.putString("_po", A);
                    m8974a("auto", "_ou", bundle);
                }
            }
        }
    }

    /* renamed from: I */
    public final String m8998I() {
        zzij y = this.f17262a.m9077C().m8921y();
        if (y != null) {
            return y.f30082a;
        }
        return null;
    }

    /* renamed from: J */
    public final String m8997J() {
        zzij y = this.f17262a.m9077C().m8921y();
        if (y != null) {
            return y.f30083b;
        }
        return null;
    }

    /* renamed from: K */
    public final String m8996K() {
        if (this.f17262a.m9040w() != null) {
            return this.f17262a.m9040w();
        }
        try {
            return zzig.m8945a(mo8846B(), "google_app_id");
        } catch (IllegalStateException e) {
            this.f17262a.mo8789p().m9152q().m9142a("getGoogleAppId failed with exception", e);
            return null;
        }
    }

    /* renamed from: L */
    public final void m8995L() {
        mo9085c();
        String a = m24898g().f17225s.m9126a();
        if (a != null) {
            if ("unset".equals(a)) {
                m8971a("app", "_npa", (Object) null, mo8779z().mo17091b());
            } else {
                m8971a("app", "_npa", Long.valueOf("true".equals(a) ? 1L : 0L), mo8779z().mo17091b());
            }
        }
        if (!this.f17262a.m9058c() || !this.f30068o) {
            mo8789p().m9145x().m9143a("Updating Scion state (FE)");
            m24885n().m8920A();
            return;
        }
        mo8789p().m9145x().m9143a("Recording app launch after enabling measurement for the first time (FE)");
        m8999H();
        if (zznj.m9498a() && m24897h().m9354a(zzas.f29890q0)) {
            m24882r().f30103d.m24934a();
        }
        if (zzmy.m9506a() && m24897h().m9354a(zzas.f29896t0)) {
            if (!(this.f17262a.m9047o().f29980a.m9050l().f17217k.m9131a() > 0)) {
                zzfl o = this.f17262a.m9047o();
                o.m9118a(o.f29980a.mo8846B().getPackageName());
            }
        }
        if (m24897h().m9354a(zzas.f29823D0)) {
            mo8795j().m9093a(new RunnableC4810s4(this));
        }
    }

    /* renamed from: a */
    public final ArrayList<Bundle> m8978a(String str, String str2) {
        if (mo8795j().m9080q()) {
            mo8789p().m9152q().m9143a("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList<>(0);
        } else if (zzw.m8665a()) {
            mo8789p().m9152q().m9143a("Cannot get conditional user properties from main thread");
            return new ArrayList<>(0);
        } else {
            AtomicReference atomicReference = new AtomicReference();
            this.f17262a.mo8795j().m9091a(atomicReference, 5000L, "get conditional user properties", new RunnableC4653b5(this, atomicReference, null, str, str2));
            List list = (List) atomicReference.get();
            if (list != null) {
                return zzkv.m8689b((List<zzz>) list);
            }
            mo8789p().m9152q().m9142a("Timed out waiting for get conditional user properties", null);
            return new ArrayList<>();
        }
    }

    /* renamed from: a */
    public final Map<String, Object> m8968a(String str, String str2, boolean z) {
        if (mo8795j().m9080q()) {
            mo8789p().m9152q().m9143a("Cannot get user properties from analytics worker thread");
            return Collections.emptyMap();
        } else if (zzw.m8665a()) {
            mo8789p().m9152q().m9143a("Cannot get user properties from main thread");
            return Collections.emptyMap();
        } else {
            AtomicReference atomicReference = new AtomicReference();
            this.f17262a.mo8795j().m9091a(atomicReference, 5000L, "get user properties", new RunnableC4683e5(this, atomicReference, null, str, str2, z));
            List<zzku> list = (List) atomicReference.get();
            if (list == null) {
                mo8789p().m9152q().m9142a("Timed out waiting for handle get user properties, includeInternal", Boolean.valueOf(z));
                return Collections.emptyMap();
            }
            C0780a aVar = new C0780a(list.size());
            for (zzku zzkuVar : list) {
                aVar.put(zzkuVar.f30142b, zzkuVar.zza());
            }
            return aVar;
        }
    }

    /* renamed from: a */
    public final void m8994a(long j, boolean z) {
        mo9085c();
        m24876t();
        mo8789p().m9145x().m9143a("Resetting analytics data (FE)");
        zzjx r = m24882r();
        r.mo9085c();
        r.f30104e.m24948a();
        boolean c = this.f17262a.m9058c();
        C4737k3 g = m24898g();
        g.f17216j.m9130a(j);
        if (!TextUtils.isEmpty(g.m24898g().f17232z.m9126a())) {
            g.f17232z.m9125a(null);
        }
        if (zznj.m9498a() && g.m24897h().m9354a(zzas.f29890q0)) {
            g.f17227u.m9130a(0L);
        }
        if (!g.m24897h().m9333l()) {
            g.m24921b(!c);
        }
        g.f17206A.m9125a(null);
        g.f17207B.m9130a(0L);
        g.f17208C.m9128a(null);
        if (z) {
            m24885n().m8919C();
        }
        if (zznj.m9498a() && m24897h().m9354a(zzas.f29890q0)) {
            m24882r().f30103d.m24934a();
        }
        this.f30068o = !c;
    }

    /* renamed from: a */
    public final void m8993a(Bundle bundle) {
        m8991a(bundle, mo8779z().mo17091b());
    }

    /* renamed from: a */
    public final void m8992a(Bundle bundle, int i, long j) {
        if (zzml.m9520a() && m24897h().m9354a(zzas.f29831H0)) {
            m24876t();
            String a = zzac.m9319a(bundle);
            if (a != null) {
                mo8789p().m9147v().m9142a("Ignoring invalid consent setting", a);
                mo8789p().m9147v().m9143a("Valid consent values are 'granted', 'denied'");
            }
            m8989a(zzac.m9313b(bundle), i, j);
        }
    }

    /* renamed from: a */
    public final void m8991a(Bundle bundle, long j) {
        Preconditions.m17288a(bundle);
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            mo8789p().m9149t().m9143a("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        Preconditions.m17288a(bundle2);
        zzgs.m9012a(bundle2, "app_id", String.class, null);
        zzgs.m9012a(bundle2, "origin", String.class, null);
        zzgs.m9012a(bundle2, "name", String.class, null);
        zzgs.m9012a(bundle2, "value", Object.class, null);
        zzgs.m9012a(bundle2, "trigger_event_name", String.class, null);
        zzgs.m9012a(bundle2, "trigger_timeout", Long.class, 0L);
        zzgs.m9012a(bundle2, "timed_out_event_name", String.class, null);
        zzgs.m9012a(bundle2, "timed_out_event_params", Bundle.class, null);
        zzgs.m9012a(bundle2, "triggered_event_name", String.class, null);
        zzgs.m9012a(bundle2, "triggered_event_params", Bundle.class, null);
        zzgs.m9012a(bundle2, "time_to_live", Long.class, 0L);
        zzgs.m9012a(bundle2, "expired_event_name", String.class, null);
        zzgs.m9012a(bundle2, "expired_event_params", Bundle.class, null);
        Preconditions.m17281b(bundle2.getString("name"));
        Preconditions.m17281b(bundle2.getString("origin"));
        Preconditions.m17288a(bundle2.get("value"));
        bundle2.putLong("creation_timestamp", j);
        String string = bundle2.getString("name");
        Object obj = bundle2.get("value");
        if (m24899f().m8716a(string) != 0) {
            mo8789p().m9152q().m9142a("Invalid conditional user property name", m24900e().m9167c(string));
        } else if (m24899f().m8691b(string, obj) != 0) {
            mo8789p().m9152q().m9141a("Invalid conditional user property value", m24900e().m9167c(string), obj);
        } else {
            Object c = m24899f().m8686c(string, obj);
            if (c == null) {
                mo8789p().m9152q().m9141a("Unable to normalize conditional user property value", m24900e().m9167c(string), obj);
                return;
            }
            zzgs.m9013a(bundle2, c);
            long j2 = bundle2.getLong("trigger_timeout");
            if (TextUtils.isEmpty(bundle2.getString("trigger_event_name")) || (j2 <= 15552000000L && j2 >= 1)) {
                long j3 = bundle2.getLong("time_to_live");
                if (j3 > 15552000000L || j3 < 1) {
                    mo8789p().m9152q().m9141a("Invalid conditional user property time to live", m24900e().m9167c(string), Long.valueOf(j3));
                } else {
                    mo8795j().m9093a(new RunnableC4643a5(this, bundle2));
                }
            } else {
                mo8789p().m9152q().m9141a("Invalid conditional user property timeout", m24900e().m9167c(string), Long.valueOf(j2));
            }
        }
    }

    /* renamed from: a */
    public final void m8990a(zzac zzacVar) {
        mo9085c();
        boolean z = (zzacVar.m9306e() && zzacVar.m9309c()) || m24885n().m8913I();
        if (z != this.f17262a.m9056e()) {
            this.f17262a.m9059b(z);
            Boolean w = m24898g().m24913w();
            if (!z || w == null || w.booleanValue()) {
                m8980a(Boolean.valueOf(z), false);
            }
        }
    }

    /* renamed from: a */
    public final void m8989a(zzac zzacVar, int i, long j) {
        boolean z;
        boolean z2;
        boolean z3;
        if (zzml.m9520a() && m24897h().m9354a(zzas.f29831H0)) {
            m24876t();
            if ((!m24897h().m9354a(zzas.f29833I0) || i != 20) && zzacVar.m9314b() == null && zzacVar.m9307d() == null) {
                mo8789p().m9147v().m9143a("Discarding empty consent settings");
                return;
            }
            synchronized (this.f30061h) {
                z = false;
                if (zzac.m9320a(i, this.f30063j)) {
                    z3 = zzacVar.m9318a(this.f30062i);
                    z2 = false;
                    if (zzacVar.m9306e()) {
                        z2 = false;
                        if (!this.f30062i.m9306e()) {
                            z2 = true;
                        }
                    }
                    zzacVar = zzacVar.m9308c(this.f30062i);
                    this.f30062i = zzacVar;
                    this.f30063j = i;
                    z = true;
                } else {
                    z2 = false;
                    z3 = false;
                }
            }
            if (!z) {
                mo8789p().m9146w().m9142a("Ignoring lower-priority consent settings, proposed settings", zzacVar);
                return;
            }
            long andIncrement = this.f30064k.getAndIncrement();
            if (z3) {
                m8979a((String) null);
                mo8795j().m9087b(new RunnableC4739k5(this, zzacVar, j, i, andIncrement, z2));
            } else if (!m24897h().m9354a(zzas.f29833I0) || !(i == 40 || i == 20)) {
                mo8795j().m9093a(new RunnableC4757m5(this, zzacVar, i, andIncrement, z2));
            } else {
                mo8795j().m9087b(new RunnableC4730j5(this, zzacVar, i, andIncrement, z2));
            }
        }
    }

    /* renamed from: a */
    public final void m8988a(zzac zzacVar, int i, long j, boolean z, boolean z2) {
        mo9085c();
        m24876t();
        if (j <= this.f30065l && zzac.m9320a(this.f30066m, i)) {
            mo8789p().m9146w().m9142a("Dropped out-of-date consent setting, proposed settings", zzacVar);
        } else if (m24898g().m24927a(zzacVar, i)) {
            this.f30065l = j;
            this.f30066m = i;
            m24885n().m8889a(z);
            if (z2) {
                m24885n().m8892a(new AtomicReference<>());
            }
        } else {
            mo8789p().m9146w().m9142a("Lower precedence consent source ignored, proposed source", Integer.valueOf(i));
        }
    }

    /* renamed from: a */
    public final void m8987a(zzgw zzgwVar) {
        zzgw zzgwVar2;
        mo9085c();
        m24876t();
        if (!(zzgwVar == null || zzgwVar == (zzgwVar2 = this.f30057d))) {
            Preconditions.m17279b(zzgwVar2 == null, "EventInterceptor already set.");
        }
        this.f30057d = zzgwVar;
    }

    /* renamed from: a */
    public final void m8986a(zzgz zzgzVar) {
        m24876t();
        Preconditions.m17288a(zzgzVar);
        if (!this.f30058e.add(zzgzVar)) {
            mo8789p().m9149t().m9143a("OnEventListener already registered");
        }
    }

    /* renamed from: a */
    public final void m8981a(Boolean bool) {
        m24876t();
        mo8795j().m9093a(new RunnableC4712h5(this, bool));
    }

    /* renamed from: a */
    public final void m8980a(Boolean bool, boolean z) {
        mo9085c();
        m24876t();
        mo8789p().m9145x().m9142a("Setting app measurement enabled (FE)", bool);
        m24898g().m24926a(bool);
        if (zzml.m9520a() && m24897h().m9354a(zzas.f29831H0) && z) {
            m24898g().m24923b(bool);
        }
        if (!zzml.m9520a() || !m24897h().m9354a(zzas.f29831H0) || this.f17262a.m9056e() || !bool.booleanValue()) {
            m8995L();
        }
    }

    /* renamed from: a */
    public final void m8979a(String str) {
        this.f30060g.set(str);
    }

    /* renamed from: a */
    public final void m8977a(String str, String str2, long j, Bundle bundle) {
        mo9085c();
        m8976a(str, str2, j, bundle, true, this.f30057d == null || zzkv.m8680h(str2), false, null);
    }

    /* renamed from: a */
    public final void m8976a(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        boolean z4;
        Preconditions.m17281b(str);
        Preconditions.m17288a(bundle);
        mo9085c();
        m24876t();
        if (!this.f17262a.m9058c()) {
            mo8789p().m9145x().m9143a("Event not sent since app measurement is disabled");
            return;
        }
        List<String> G = m24886m().m9178G();
        if (G == null || G.contains(str2)) {
            int i = 0;
            int i2 = 0;
            if (!this.f30059f) {
                this.f30059f = true;
                try {
                    try {
                        (!this.f17262a.m9078A() ? Class.forName("com.google.android.gms.tagmanager.TagManagerService", true, mo8846B().getClassLoader()) : Class.forName("com.google.android.gms.tagmanager.TagManagerService")).getDeclaredMethod("initialize", Context.class).invoke(null, mo8846B());
                    } catch (Exception e) {
                        mo8789p().m9149t().m9142a("Failed to invoke Tag Manager's initialize() method", e);
                    }
                } catch (ClassNotFoundException e2) {
                    mo8789p().m9146w().m9143a("Tag Manager is not found and thus will not be used");
                }
            }
            if (m24897h().m9354a(zzas.f29866e0) && "_cmp".equals(str2) && bundle.containsKey("gclid")) {
                m8971a("auto", "_lgclid", bundle.getString("gclid"), mo8779z().mo17091b());
            }
            if (zznw.m9489a() && m24897h().m9354a(zzas.f29908z0) && z && zzkv.m8678i(str2)) {
                m24899f().m8732a(bundle, m24898g().f17208C.m9129a());
            }
            if (z3 && !"_iap".equals(str2)) {
                zzkv s = this.f17262a.m9044s();
                int i3 = !s.m8711a("event", str2) ? 2 : (!(zzlo.m9595a() && m24897h().m9354a(zzas.f29839L0)) ? s.m8701a("event", zzgv.f30041a, str2) : s.m8700a("event", zzgv.f30041a, zzgv.f30042b, str2)) ? !s.m8714a("event", 40, str2) ? 2 : 0 : 13;
                if (i3 != 0) {
                    mo8789p().m9150s().m9142a("Invalid public event name. Event will not be logged (FE)", m24900e().m9171a(str2));
                    this.f17262a.m9044s();
                    String a = zzkv.m8713a(str2, 40, true);
                    if (str2 != null) {
                        i2 = str2.length();
                    }
                    this.f17262a.m9044s().m8729a(this.f30069p, i3, "_ev", a, i2);
                    return;
                }
            }
            zzij a2 = m24884o().m8926a(false);
            if (a2 != null && !bundle.containsKey("_sc")) {
                a2.f30085d = true;
            }
            zzii.m8931a(a2, bundle, z && z3);
            boolean equals = "am".equals(str);
            boolean h = zzkv.m8680h(str2);
            if (z && this.f30057d != null && !h && !equals) {
                mo8789p().m9145x().m9141a("Passing event to registered event handler (FE)", m24900e().m9171a(str2), m24900e().m9173a(bundle));
                this.f30057d.mo9008a(str, str2, bundle, j);
            } else if (this.f17262a.m9053h()) {
                int a3 = m24899f().m8703a(str2, zzlo.m9595a() && m24897h().m9354a(zzas.f29839L0));
                if (a3 != 0) {
                    mo8789p().m9150s().m9142a("Invalid event name. Event will not be logged (FE)", m24900e().m9171a(str2));
                    m24899f();
                    String a4 = zzkv.m8713a(str2, 40, true);
                    if (str2 != null) {
                        i = str2.length();
                    }
                    this.f17262a.m9044s().m8728a(this.f30069p, str3, a3, "_ev", a4, i);
                    return;
                }
                Bundle a5 = m24899f().m8708a(str3, str2, bundle, CollectionUtils.m17098a((Object[]) new String[]{"_o", "_sn", "_sc", "_si"}), z3, true);
                if (a5 != null && a5.containsKey("_sc") && a5.containsKey("_si")) {
                    new zzij(a5.getString("_sn"), a5.getString("_sc"), Long.valueOf(a5.getLong("_si")).longValue());
                }
                if (m24897h().m9354a(zzas.f29850T) && m24884o().m8926a(false) != null && "_ae".equals(str2)) {
                    long b = m24882r().f30104e.m24944b();
                    if (b > 0) {
                        m24899f().m8733a(a5, b);
                    }
                }
                if (zzms.m9512a() && m24897h().m9354a(zzas.f29888p0)) {
                    if (!"auto".equals(str) && "_ssr".equals(str2)) {
                        zzkv f = m24899f();
                        String string = a5.getString("_ffr");
                        String trim = Strings.m17049a(string) ? null : string.trim();
                        if (zzkv.m8685c(trim, f.m24898g().f17232z.m9126a())) {
                            f.mo8789p().m9145x().m9143a("Not logging duplicate session_start_with_rollout event");
                            z4 = false;
                        } else {
                            f.m24898g().f17232z.m9125a(trim);
                            z4 = true;
                        }
                        if (!z4) {
                            return;
                        }
                    } else if ("_ae".equals(str2)) {
                        String a6 = m24899f().m24898g().f17232z.m9126a();
                        if (!TextUtils.isEmpty(a6)) {
                            a5.putString("_ffr", a6);
                        }
                    }
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(a5);
                m24899f().m8674r().nextLong();
                if (m24898g().f17227u.m9131a() > 0 && m24898g().m24928a(j) && m24898g().f17229w.m9133a()) {
                    mo8789p().m9144y().m9143a("Current session is expired, remove the session number, ID, and engagement time");
                    m8971a("auto", "_sid", (Object) null, mo8779z().mo17091b());
                    m8971a("auto", "_sno", (Object) null, mo8779z().mo17091b());
                    m8971a("auto", "_se", (Object) null, mo8779z().mo17091b());
                }
                if (a5.getLong("extend_session", 0L) == 1) {
                    mo8789p().m9144y().m9143a("EXTEND_SESSION param attached: initiate a new session or extend the current active session");
                    this.f17262a.m9048n().f30103d.m24933a(j, true);
                }
                String[] strArr = (String[]) a5.keySet().toArray(new String[a5.size()]);
                Arrays.sort(strArr);
                for (String str4 : strArr) {
                    m24899f();
                    Bundle[] b2 = zzkv.m8693b(a5.get(str4));
                    if (b2 != null) {
                        a5.putParcelableArray(str4, b2);
                    }
                }
                int i4 = 0;
                while (i4 < arrayList.size()) {
                    Bundle bundle2 = (Bundle) arrayList.get(i4);
                    String str5 = i4 != 0 ? "_ep" : str2;
                    bundle2.putString("_o", str);
                    Bundle bundle3 = bundle2;
                    if (z2) {
                        bundle3 = m24899f().m8736a(bundle2);
                    }
                    m24885n().m8902a(new zzaq(str5, new zzap(bundle3), str, j), str3);
                    if (!equals) {
                        for (zzgz zzgzVar : this.f30058e) {
                            zzgzVar.mo9006a(str, str2, new Bundle(bundle3), j);
                        }
                    }
                    i4++;
                }
                if (m24884o().m8926a(false) != null && "_ae".equals(str2)) {
                    m24882r().m8859a(true, true, mo8779z().mo17092a());
                }
            }
        } else {
            mo8789p().m9145x().m9141a("Dropping non-safelisted event. event name, origin", str2, str);
        }
    }

    /* renamed from: a */
    public final void m8975a(String str, String str2, long j, Object obj) {
        mo8795j().m9093a(new RunnableC4846w4(this, str, str2, obj, j));
    }

    /* renamed from: a */
    public final void m8974a(String str, String str2, Bundle bundle) {
        m8972a(str, str2, bundle, true, true, mo8779z().mo17091b());
    }

    /* renamed from: a */
    public final void m8973a(String str, String str2, Bundle bundle, String str3) {
        m24889i();
        throw null;
    }

    /* renamed from: a */
    public final void m8972a(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        if (str == null) {
            str = "app";
        }
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (!m24897h().m9354a(zzas.f29900v0) || !zzkv.m8685c(str2, "screen_view")) {
            m8964b(str, str2, j, bundle, z2, !z2 || this.f30057d == null || zzkv.m8680h(str2), !z, null);
        } else {
            m24884o().m8938a(bundle, j);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b2  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8971a(java.lang.String r9, java.lang.String r10, java.lang.Object r11, long r12) {
        /*
            Method dump skipped, instructions count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzhb.m8971a(java.lang.String, java.lang.String, java.lang.Object, long):void");
    }

    /* renamed from: a */
    public final void m8970a(String str, String str2, Object obj, boolean z) {
        m8969a(str, str2, obj, true, mo8779z().mo17091b());
    }

    /* renamed from: a */
    public final void m8969a(String str, String str2, Object obj, boolean z, long j) {
        int i;
        String str3 = str;
        if (str == null) {
            str3 = "app";
        }
        if (z) {
            i = m24899f().m8716a(str2);
        } else {
            zzkv f = m24899f();
            if (f.m8711a("user property", str2)) {
                if (!f.m8701a("user property", zzgx.f30045a, str2)) {
                    i = 15;
                } else if (f.m8714a("user property", 24, str2)) {
                    i = 0;
                }
            }
            i = 6;
        }
        if (i != 0) {
            m24899f();
            this.f17262a.m9044s().m8729a(this.f30069p, i, "_ev", zzkv.m8713a(str2, 24, true), str2 != null ? str2.length() : 0);
        } else if (obj != null) {
            int b = m24899f().m8691b(str2, obj);
            if (b != 0) {
                m24899f();
                this.f17262a.m9044s().m8729a(this.f30069p, b, "_ev", zzkv.m8713a(str2, 24, true), ((obj instanceof String) || (obj instanceof CharSequence)) ? String.valueOf(obj).length() : 0);
                return;
            }
            Object c = m24899f().m8686c(str2, obj);
            if (c != null) {
                m8975a(str3, str2, j, c);
            }
        } else {
            m8975a(str3, str2, j, (Object) null);
        }
    }

    /* renamed from: b */
    public final /* synthetic */ void m8967b(Bundle bundle) {
        if (zznw.m9489a() && m24897h().m9354a(zzas.f29908z0)) {
            if (bundle == null) {
                m24898g().f17208C.m9128a(new Bundle());
                return;
            }
            Bundle a = m24898g().f17208C.m9129a();
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                    m24899f();
                    if (zzkv.m8717a(obj)) {
                        m24899f().m8729a(this.f30069p, 27, (String) null, (String) null, 0);
                    }
                    mo8789p().m9147v().m9141a("Invalid default event parameter type. Name, value", str, obj);
                } else if (zzkv.m8680h(str)) {
                    mo8789p().m9147v().m9142a("Invalid default event parameter name. Name", str);
                } else if (obj == null) {
                    a.remove(str);
                } else if (m24899f().m8710a("param", str, 100, obj)) {
                    m24899f().m8731a(a, str, obj);
                }
            }
            m24899f();
            if (zzkv.m8735a(a, m24897h().m9338i())) {
                m24899f().m8729a(this.f30069p, 26, (String) null, (String) null, 0);
                mo8789p().m9147v().m9143a("Too many default event parameters set. Discarding beyond event parameter limit");
            }
            m24898g().f17208C.m9128a(a);
            m24885n().m8907a(a);
        }
    }

    /* renamed from: b */
    public final void m8966b(zzgz zzgzVar) {
        m24876t();
        Preconditions.m17288a(zzgzVar);
        if (!this.f30058e.remove(zzgzVar)) {
            mo8789p().m9149t().m9143a("OnEventListener had not been registered");
        }
    }

    /* renamed from: b */
    public final void m8964b(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        mo8795j().m9093a(new RunnableC4855x4(this, str, str2, j, zzkv.m8695b(bundle), z, z2, z3, str3));
    }

    /* renamed from: b */
    public final void m8963b(String str, String str2, Bundle bundle) {
        mo9085c();
        m8977a(str, str2, mo8779z().mo17091b(), bundle);
    }

    /* renamed from: c */
    public final void m8962c(Bundle bundle) {
        mo9085c();
        m24876t();
        Preconditions.m17288a(bundle);
        Preconditions.m17281b(bundle.getString("name"));
        Preconditions.m17281b(bundle.getString("origin"));
        Preconditions.m17288a(bundle.get("value"));
        if (!this.f17262a.m9058c()) {
            mo8789p().m9144y().m9143a("Conditional property not set since app measurement is disabled");
            return;
        }
        try {
            m24885n().m8894a(new zzz(bundle.getString("app_id"), bundle.getString("origin"), new zzku(bundle.getString("name"), bundle.getLong("triggered_timestamp"), bundle.get("value"), bundle.getString("origin")), bundle.getLong("creation_timestamp"), false, bundle.getString("trigger_event_name"), m24899f().m8709a(bundle.getString("app_id"), bundle.getString("timed_out_event_name"), bundle.getBundle("timed_out_event_params"), bundle.getString("origin"), 0L, true, false, zzlo.m9595a() && m24897h().m9354a(zzas.f29839L0)), bundle.getLong("trigger_timeout"), m24899f().m8709a(bundle.getString("app_id"), bundle.getString("triggered_event_name"), bundle.getBundle("triggered_event_params"), bundle.getString("origin"), 0L, true, false, zzlo.m9595a() && m24897h().m9354a(zzas.f29839L0)), bundle.getLong("time_to_live"), m24899f().m8709a(bundle.getString("app_id"), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), bundle.getString("origin"), 0L, true, false, zzlo.m9595a() && m24897h().m9354a(zzas.f29839L0))));
        } catch (IllegalArgumentException e) {
        }
    }

    /* renamed from: c */
    public final void m8961c(String str, String str2, Bundle bundle) {
        long b = mo8779z().mo17091b();
        Preconditions.m17281b(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str);
        bundle2.putLong("creation_timestamp", b);
        if (str2 != null) {
            bundle2.putString("expired_event_name", str2);
            bundle2.putBundle("expired_event_params", bundle);
        }
        mo8795j().m9093a(new RunnableC4663c5(this, bundle2));
    }

    /* renamed from: d */
    public final void m8960d(Bundle bundle) {
        mo9085c();
        m24876t();
        Preconditions.m17288a(bundle);
        Preconditions.m17281b(bundle.getString("name"));
        if (!this.f17262a.m9058c()) {
            mo8789p().m9144y().m9143a("Conditional property not cleared since app measurement is disabled");
            return;
        }
        try {
            m24885n().m8894a(new zzz(bundle.getString("app_id"), bundle.getString("origin"), new zzku(bundle.getString("name"), 0L, null, null), bundle.getLong("creation_timestamp"), bundle.getBoolean(AvidBridge.APP_STATE_ACTIVE), bundle.getString("trigger_event_name"), null, bundle.getLong("trigger_timeout"), null, bundle.getLong("time_to_live"), m24899f().m8709a(bundle.getString("app_id"), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), bundle.getString("origin"), bundle.getLong("creation_timestamp"), true, false, zzlo.m9595a() && m24897h().m9354a(zzas.f29839L0))));
        } catch (IllegalArgumentException e) {
        }
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4827u3
    /* renamed from: w */
    public final boolean mo8854w() {
        return false;
    }

    /* renamed from: y */
    public final void m8959y() {
        if (mo8846B().getApplicationContext() instanceof Application) {
            ((Application) mo8846B().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.f30056c);
        }
    }
}
