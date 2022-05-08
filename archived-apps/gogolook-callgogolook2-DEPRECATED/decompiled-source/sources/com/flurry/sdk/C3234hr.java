package com.flurry.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.widget.Toast;
import com.aotter.net.trek.ads.view.controller.AdViewController;
import com.flurry.sdk.C3242hs;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.flurry.sdk.hr */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/hr.class */
public class C3234hr {

    /* renamed from: a */
    public static final String f5410a = "hr";

    /* renamed from: b */
    public static int f5411b;

    /* renamed from: c */
    public static int f5412c;

    /* renamed from: d */
    public static AtomicInteger f5413d;

    /* renamed from: e */
    public static C3342jj<List<C3242hs>> f5414e;

    /* renamed from: f */
    public static C3234hr f5415f;

    /* renamed from: g */
    public static Map<Integer, C3242hs> f5416g;

    /* renamed from: i */
    public long f5418i;

    /* renamed from: j */
    public AbstractC3344jl<C3309iq> f5419j = new AbstractC3344jl<C3309iq>(this) { // from class: com.flurry.sdk.hr.1
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* synthetic */ void mo32302a(C3309iq iqVar) {
            C3309iq iqVar2 = iqVar;
            String str = C3234hr.f5410a;
            C3356jq.m32615a(4, str, "onNetworkStateChanged : isNetworkEnable = " + iqVar2.f5613a);
            if (iqVar2.f5613a) {
                C3331jb.m32681a().m32674b(new Runnable(this) { // from class: com.flurry.sdk.hr.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        C3246ht.m32807a().m32803b();
                    }
                });
            }
        }
    };

    /* renamed from: h */
    public final AtomicInteger f5417h = new AtomicInteger(0);

    public C3234hr() {
        f5416g = new HashMap();
        f5413d = new AtomicInteger(0);
        if (f5412c == 0) {
            f5412c = AdViewController.f1366b;
        }
        if (f5411b == 0) {
            f5411b = 15;
        }
        this.f5418i = C3331jb.m32681a().f5679a.getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).getLong("timeToSendNextPulseReport", 0L);
        if (f5414e == null) {
            m32833f();
        }
        C3345jm.m32636a().m32632a("com.flurry.android.sdk.NetworkStateEvent", this.f5419j);
    }

    /* renamed from: a */
    public static void m32848a(int i) {
        f5411b = i;
    }

    /* renamed from: b */
    public static List<C3242hs> m32843b() {
        return new ArrayList(f5416g.values());
    }

    /* renamed from: b */
    public static void m32842b(int i) {
        f5412c = i;
    }

    /* renamed from: c */
    public static C3234hr m32838c() {
        C3234hr hrVar;
        synchronized (C3234hr.class) {
            try {
                if (f5415f == null) {
                    f5415f = new C3234hr();
                }
                hrVar = f5415f;
            } catch (Throwable th) {
                throw th;
            }
        }
        return hrVar;
    }

    /* renamed from: d */
    public static List<C3242hs> m32835d() {
        if (f5414e == null) {
            m32833f();
        }
        return f5414e.m32641a();
    }

    /* renamed from: f */
    public static void m32833f() {
        f5414e = new C3342jj<>(C3331jb.m32681a().f5679a.getFileStreamPath(".yflurryanongoingpulsecallbackreporter"), ".yflurryanongoingpulsecallbackreporter", 2, new AbstractC3422ko<List<C3242hs>>() { // from class: com.flurry.sdk.hr.2
            @Override // com.flurry.sdk.AbstractC3422ko
            /* renamed from: a */
            public final AbstractC3417kl<List<C3242hs>> mo32339a(int i) {
                return new C3414kk(new C3242hs.C3243a());
            }
        });
    }

    /* renamed from: j */
    public static boolean m32829j() {
        return f5413d.intValue() >= f5411b;
    }

    /* renamed from: a */
    public final void m32849a() {
        C3331jb.m32681a().m32674b(new Runnable(this) { // from class: com.flurry.sdk.hr.6
            @Override // java.lang.Runnable
            public final void run() {
                C3234hr.m32838c();
                List<C3242hs> b = C3234hr.m32843b();
                if (C3234hr.f5414e == null) {
                    C3234hr.m32833f();
                }
                C3234hr.f5414e.m32640a(b);
            }
        });
    }

    /* renamed from: a */
    public final void m32847a(final C3229hp hpVar) {
        synchronized (this) {
            String str = f5410a;
            C3356jq.m32615a(3, str, hpVar.f5403l.f5384g.f5427d + " report sent successfully to " + hpVar.f5403l.f5389l);
            hpVar.f5397f = EnumC3233hq.COMPLETE;
            hpVar.f5398g = "";
            m32836c(hpVar);
            if (C3356jq.m32608c() <= 3 && C3356jq.m32605d()) {
                C3331jb.m32681a().m32678a(new Runnable(this) { // from class: com.flurry.sdk.hr.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        Context context = C3331jb.m32681a().f5679a;
                        Toast.makeText(context, "PulseCallbackReportInfo HTTP Response Code: " + hpVar.f5396e + " for url: " + hpVar.f5403l.f5800r, 1).show();
                    }
                });
            }
        }
    }

    /* renamed from: a */
    public final void m32844a(C3242hs hsVar) {
        synchronized (this) {
            if (hsVar == null) {
                C3356jq.m32615a(3, f5410a, "Must add valid PulseCallbackAsyncReportInfo");
                return;
            }
            String str = f5410a;
            C3356jq.m32615a(3, str, "Adding and sending " + hsVar.f5427d + " report to PulseCallbackManager.");
            if (hsVar.m32826a().size() != 0) {
                if (this.f5418i == 0) {
                    this.f5418i = System.currentTimeMillis() + f5412c;
                    C3331jb.m32681a().m32674b(new Runnable() { // from class: com.flurry.sdk.hr.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            C3234hr.this.m32832g();
                        }
                    });
                }
                int h = m32831h();
                hsVar.f5426c = h;
                f5416g.put(Integer.valueOf(h), hsVar);
                for (C3225ho hoVar : hsVar.m32826a()) {
                    C3180gq.m32933a().f5245c.m32561b((C3221hn) hoVar);
                }
            }
        }
    }

    /* renamed from: a */
    public final boolean m32846a(C3229hp hpVar, String str) {
        synchronized (this) {
            hpVar.f5399h++;
            hpVar.f5400i = System.currentTimeMillis();
            if (!(hpVar.f5399h > hpVar.f5403l.f5380c) && !TextUtils.isEmpty(str)) {
                C3356jq.m32615a(3, f5410a, "Report to " + hpVar.f5403l.f5389l + " redirecting to url: " + str);
                hpVar.f5403l.f5800r = str;
                m32849a();
                return true;
            }
            C3356jq.m32615a(3, f5410a, "Maximum number of redirects attempted. Aborting: " + hpVar.f5403l.f5384g.f5427d + " report to " + hpVar.f5403l.f5389l);
            hpVar.f5397f = EnumC3233hq.INVALID_RESPONSE;
            hpVar.f5398g = "";
            m32836c(hpVar);
            return false;
        }
    }

    /* renamed from: b */
    public final void m32841b(C3229hp hpVar) {
        synchronized (this) {
            String str = f5410a;
            C3356jq.m32615a(3, str, "Maximum number of attempts reached. Aborting: " + hpVar.f5403l.f5384g.f5427d);
            hpVar.f5397f = EnumC3233hq.TIMEOUT;
            hpVar.f5400i = System.currentTimeMillis();
            hpVar.f5398g = "";
            m32836c(hpVar);
        }
    }

    /* renamed from: b */
    public final void m32839b(C3242hs hsVar) {
        synchronized (this) {
            if (hsVar == null) {
                C3356jq.m32615a(3, f5410a, "Must add valid PulseCallbackAsyncReportInfo");
                return;
            }
            if (this.f5418i == 0) {
                this.f5418i = System.currentTimeMillis() + f5412c;
                C3331jb.m32681a().m32674b(new Runnable() { // from class: com.flurry.sdk.hr.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        C3234hr.this.m32832g();
                    }
                });
            }
            int h = m32831h();
            hsVar.f5426c = h;
            f5416g.put(Integer.valueOf(h), hsVar);
            for (C3225ho hoVar : hsVar.m32826a()) {
                Iterator<C3229hp> it = hoVar.f5383f.iterator();
                while (it.hasNext()) {
                    it.next();
                    f5413d.incrementAndGet();
                    if (m32829j()) {
                        C3356jq.m32615a(3, f5410a, "Max Callback Attempts threshold reached. Sending callback logging reports");
                        m32827l();
                    }
                }
            }
            if (m32828k()) {
                C3356jq.m32615a(3, f5410a, "Time threshold reached. Sending callback logging reports");
                m32827l();
            }
            String str = f5410a;
            C3356jq.m32615a(3, str, "Restoring " + hsVar.f5427d + " report to PulseCallbackManager. Number of stored completed callbacks: " + f5413d.get());
        }
    }

    /* renamed from: b */
    public final boolean m32840b(C3229hp hpVar, String str) {
        boolean z;
        synchronized (this) {
            hpVar.f5397f = EnumC3233hq.INVALID_RESPONSE;
            hpVar.f5400i = System.currentTimeMillis();
            String str2 = str;
            if (str == null) {
                str2 = "";
            }
            hpVar.f5398g = str2;
            C3225ho hoVar = hpVar.f5403l;
            z = false;
            if (hoVar.f5798p >= hoVar.f5379b) {
                String str3 = f5410a;
                C3356jq.m32615a(3, str3, "Maximum number of attempts reached. Aborting: " + hpVar.f5403l.f5384g.f5427d + " report to " + hpVar.f5403l.f5389l);
                m32836c(hpVar);
            } else if (!C3452lf.m32430g(hpVar.f5403l.f5800r)) {
                String str4 = f5410a;
                C3356jq.m32615a(3, str4, "Url: " + hpVar.f5403l.f5800r + " is invalid.");
                m32836c(hpVar);
            } else {
                String str5 = f5410a;
                C3356jq.m32615a(3, str5, "Retrying callback to " + hpVar.f5403l.f5384g.f5427d + " in: " + (hpVar.f5403l.f5385h / 1000) + " seconds.");
                hpVar.m32851a();
                f5413d.incrementAndGet();
                m32849a();
                m32830i();
                z = true;
            }
        }
        return z;
    }

    /* renamed from: c */
    public final void m32837c(int i) {
        synchronized (this) {
            String str = f5410a;
            C3356jq.m32615a(3, str, "Removing report " + i + " from PulseCallbackManager");
            f5416g.remove(Integer.valueOf(i));
        }
    }

    /* renamed from: c */
    public final void m32836c(C3229hp hpVar) {
        hpVar.f5395d = true;
        hpVar.m32851a();
        f5413d.incrementAndGet();
        hpVar.f5403l.m32862c();
        String str = f5410a;
        C3356jq.m32615a(3, str, hpVar.f5403l.f5384g.f5427d + " report to " + hpVar.f5403l.f5389l + " finalized.");
        m32849a();
        m32830i();
    }

    /* renamed from: g */
    public final void m32832g() {
        SharedPreferences.Editor edit = C3331jb.m32681a().f5679a.getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).edit();
        edit.putLong("timeToSendNextPulseReport", this.f5418i);
        edit.apply();
    }

    /* renamed from: h */
    public final int m32831h() {
        int incrementAndGet;
        synchronized (this) {
            incrementAndGet = this.f5417h.incrementAndGet();
        }
        return incrementAndGet;
    }

    /* renamed from: i */
    public final void m32830i() {
        if (m32829j() || m32828k()) {
            C3356jq.m32615a(3, f5410a, "Threshold reached. Sending callback logging reports");
            m32827l();
        }
    }

    /* renamed from: k */
    public final boolean m32828k() {
        return System.currentTimeMillis() > this.f5418i;
    }

    /* renamed from: l */
    public final void m32827l() {
        Iterator<C3242hs> it = m32843b().iterator();
        while (true) {
            boolean z = false;
            if (!it.hasNext()) {
                break;
            }
            C3242hs next = it.next();
            for (C3225ho hoVar : next.m32826a()) {
                Iterator<C3229hp> it2 = hoVar.f5383f.iterator();
                boolean z2 = z;
                while (true) {
                    z = z2;
                    if (it2.hasNext()) {
                        C3229hp next2 = it2.next();
                        if (next2.f5401j) {
                            it2.remove();
                        } else if (!next2.f5397f.equals(EnumC3233hq.PENDING_COMPLETION)) {
                            next2.f5401j = true;
                            z2 = true;
                        }
                    }
                }
            }
            if (z) {
                C3246ht.m32807a().m32806a(next);
            }
        }
        C3246ht.m32807a().m32803b();
        this.f5418i = System.currentTimeMillis() + f5412c;
        m32832g();
        for (C3242hs hsVar : m32843b()) {
            if (hsVar.m32820b()) {
                m32837c(hsVar.f5426c);
            } else {
                for (C3225ho hoVar2 : hsVar.m32826a()) {
                    if (hoVar2.f5390m) {
                        hsVar.f5428e.remove(Long.valueOf(hoVar2.f5378a));
                    } else {
                        Iterator<C3229hp> it3 = hoVar2.f5383f.iterator();
                        while (it3.hasNext()) {
                            if (it3.next().f5401j) {
                                it3.remove();
                            }
                        }
                    }
                }
            }
        }
        f5413d = new AtomicInteger(0);
        m32849a();
    }
}
