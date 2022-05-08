package com.flurry.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import android.os.Build;
import android.text.TextUtils;
import com.flurry.sdk.C3202hj;
import com.flurry.sdk.C3242hs;
import com.flurry.sdk.C3438kv;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.flurry.sdk.hl */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/hl.class */
public class C3207hl implements C3438kv.AbstractC3439a {

    /* renamed from: a */
    public static final String f5331a = "hl";

    /* renamed from: g */
    public C3342jj<C3202hj> f5337g;

    /* renamed from: h */
    public C3342jj<List<C3242hs>> f5338h;

    /* renamed from: i */
    public boolean f5339i;

    /* renamed from: j */
    public String f5340j;

    /* renamed from: k */
    public boolean f5341k;

    /* renamed from: l */
    public boolean f5342l;

    /* renamed from: n */
    public long f5344n;

    /* renamed from: o */
    public boolean f5345o;

    /* renamed from: p */
    public C3190gy f5346p;

    /* renamed from: q */
    public boolean f5347q;

    /* renamed from: b */
    public final C3361jv<C3189gx> f5332b = new C3361jv<>("proton config request", new C3255hx());

    /* renamed from: c */
    public final C3361jv<C3190gy> f5333c = new C3361jv<>("proton config response", new C3257hy());

    /* renamed from: d */
    public final C3206hk f5334d = new C3206hk();

    /* renamed from: e */
    public final C3338jg<String, C3194hb> f5335e = new C3338jg<>();

    /* renamed from: f */
    public final List<C3242hs> f5336f = new ArrayList();

    /* renamed from: m */
    public long f5343m = 10000;

    /* renamed from: r */
    public final Runnable f5348r = new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.hl.1
        @Override // com.flurry.sdk.AbstractRunnableC3447lc
        /* renamed from: a */
        public final void mo32300a() {
            C3207hl.this.m32890e();
        }
    };

    /* renamed from: s */
    public final AbstractC3344jl<C3303im> f5349s = new AbstractC3344jl<C3303im>() { // from class: com.flurry.sdk.hl.4
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo32302a(C3303im imVar) {
            C3207hl.this.m32890e();
        }
    };

    /* renamed from: t */
    public final AbstractC3344jl<C3304in> f5350t = new AbstractC3344jl<C3304in>() { // from class: com.flurry.sdk.hl.5
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo32302a(C3304in inVar) {
            C3207hl.this.m32890e();
        }
    };

    /* renamed from: u */
    public final AbstractC3344jl<C3309iq> f5351u = new AbstractC3344jl<C3309iq>() { // from class: com.flurry.sdk.hl.6
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo32302a(C3309iq iqVar) {
            if (iqVar.f5613a) {
                C3207hl.this.m32890e();
            }
        }
    };

    public C3207hl() {
        this.f5341k = true;
        C3437ku a = C3437ku.m32494a();
        this.f5339i = ((Boolean) a.m32493a("ProtonEnabled")).booleanValue();
        a.m32492a("ProtonEnabled", (C3438kv.AbstractC3439a) this);
        String str = f5331a;
        C3356jq.m32615a(4, str, "initSettings, protonEnabled = " + this.f5339i);
        this.f5340j = (String) a.m32493a("ProtonConfigUrl");
        a.m32492a("ProtonConfigUrl", (C3438kv.AbstractC3439a) this);
        String str2 = f5331a;
        C3356jq.m32615a(4, str2, "initSettings, protonConfigUrl = " + this.f5340j);
        this.f5341k = ((Boolean) a.m32493a("analyticsEnabled")).booleanValue();
        a.m32492a("analyticsEnabled", (C3438kv.AbstractC3439a) this);
        String str3 = f5331a;
        C3356jq.m32615a(4, str3, "initSettings, AnalyticsEnabled = " + this.f5341k);
        C3345jm.m32636a().m32632a("com.flurry.android.sdk.IdProviderFinishedEvent", this.f5349s);
        C3345jm.m32636a().m32632a("com.flurry.android.sdk.IdProviderUpdatedAdvertisingId", this.f5350t);
        C3345jm.m32636a().m32632a("com.flurry.android.sdk.NetworkStateEvent", this.f5351u);
        Context context = C3331jb.m32681a().f5679a;
        this.f5337g = new C3342jj<>(context.getFileStreamPath(".yflurryprotonconfig." + Long.toString(C3445la.m32449i(C3331jb.m32681a().f5682d), 16)), ".yflurryprotonconfig.", 1, new AbstractC3422ko<C3202hj>(this) { // from class: com.flurry.sdk.hl.7
            @Override // com.flurry.sdk.AbstractC3422ko
            /* renamed from: a */
            public final AbstractC3417kl<C3202hj> mo32339a(int i) {
                return new C3202hj.C3203a();
            }
        });
        this.f5338h = new C3342jj<>(context.getFileStreamPath(".yflurryprotonreport." + Long.toString(C3445la.m32449i(C3331jb.m32681a().f5682d), 16)), ".yflurryprotonreport.", 1, new AbstractC3422ko<List<C3242hs>>(this) { // from class: com.flurry.sdk.hl.8
            @Override // com.flurry.sdk.AbstractC3422ko
            /* renamed from: a */
            public final AbstractC3417kl<List<C3242hs>> mo32339a(int i) {
                return new C3414kk(new C3242hs.C3243a());
            }
        });
        C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.hl.9
            @Override // com.flurry.sdk.AbstractRunnableC3447lc
            /* renamed from: a */
            public final void mo32300a() {
                C3207hl.this.m32876l();
            }
        });
        C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.hl.10
            @Override // com.flurry.sdk.AbstractRunnableC3447lc
            /* renamed from: a */
            public final void mo32300a() {
                C3207hl.this.m32875m();
            }
        });
    }

    /* renamed from: b */
    public static boolean m32898b(C3190gy gyVar) {
        boolean z;
        C3188gw gwVar;
        String str;
        boolean z2;
        if (gyVar == null) {
            return false;
        }
        C3188gw gwVar2 = gyVar.f5296e;
        if (!(gwVar2 == null || gwVar2.f5277a == null)) {
            for (int i = 0; i < gwVar2.f5277a.size(); i++) {
                C3187gv gvVar = gwVar2.f5277a.get(i);
                if (gvVar != null) {
                    if (!gvVar.f5268b.equals("") && gvVar.f5267a != -1 && !gvVar.f5271e.equals("")) {
                        List<C3194hb> list = gvVar.f5269c;
                        if (list != null) {
                            for (C3194hb hbVar : list) {
                                if (hbVar.f5306a.equals("")) {
                                    C3356jq.m32615a(3, f5331a, "An event is missing a name");
                                } else if ((hbVar instanceof C3195hc) && ((C3195hc) hbVar).f5308c.equals("")) {
                                    C3356jq.m32615a(3, f5331a, "An event trigger is missing a param name");
                                }
                                z2 = false;
                            }
                        }
                        z2 = true;
                        if (!z2) {
                        }
                    }
                    C3356jq.m32615a(3, f5331a, "A callback template is missing required values");
                    z = false;
                    break;
                }
            }
        }
        z = true;
        if (z && ((gwVar = gyVar.f5296e) == null || (str = gwVar.f5281e) == null || !str.equals(""))) {
            return true;
        }
        C3356jq.m32615a(3, f5331a, "Config response is missing required values.");
        return false;
    }

    /* renamed from: a */
    public final void m32911a() {
        synchronized (this) {
            if (this.f5339i) {
                C3445la.m32460b();
                C3294ij.m32755a();
                C3221hn.f5372a = C3294ij.m32752d();
                this.f5347q = false;
                m32890e();
            }
        }
    }

    /* renamed from: a */
    public final void m32910a(long j) {
        synchronized (this) {
            if (this.f5339i) {
                C3445la.m32460b();
                m32899b(j);
                m32895b("flurry.session_end", (Map<String, String>) null);
                C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.hl.2
                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                    /* renamed from: a */
                    public final void mo32300a() {
                        C3207hl.this.m32878k();
                    }
                });
            }
        }
    }

    /* renamed from: a */
    public final void m32909a(long j, boolean z, byte[] bArr) {
        synchronized (this) {
            if (bArr != null) {
                C3356jq.m32615a(4, f5331a, "Saving proton config response");
                C3202hj hjVar = new C3202hj();
                hjVar.f5327a = j;
                hjVar.f5328b = z;
                hjVar.f5329c = bArr;
                this.f5337g.m32640a(hjVar);
            }
        }
    }

    @Override // com.flurry.sdk.C3438kv.AbstractC3439a
    /* renamed from: a */
    public final void mo32423a(String str, Object obj) {
        char c;
        int hashCode = str.hashCode();
        if (hashCode == -1720015653) {
            if (str.equals("analyticsEnabled")) {
                c = 2;
            }
            c = 65535;
        } else if (hashCode != 640941243) {
            if (hashCode == 1591403975 && str.equals("ProtonConfigUrl")) {
                c = 1;
            }
            c = 65535;
        } else {
            if (str.equals("ProtonEnabled")) {
                c = 0;
            }
            c = 65535;
        }
        if (c == 0) {
            this.f5339i = ((Boolean) obj).booleanValue();
            String str2 = f5331a;
            C3356jq.m32615a(4, str2, "onSettingUpdate, protonEnabled = " + this.f5339i);
        } else if (c == 1) {
            this.f5340j = (String) obj;
            String str3 = f5331a;
            C3356jq.m32615a(4, str3, "onSettingUpdate, protonConfigUrl = " + this.f5340j);
        } else if (c != 2) {
            C3356jq.m32615a(6, f5331a, "onSettingUpdate internal error!");
        } else {
            this.f5341k = ((Boolean) obj).booleanValue();
            String str4 = f5331a;
            C3356jq.m32615a(4, str4, "onSettingUpdate, AnalyticsEnabled = " + this.f5341k);
        }
    }

    /* renamed from: a */
    public final void m32901a(String str, Map<String, String> map) {
        synchronized (this) {
            if (this.f5339i) {
                C3445la.m32460b();
                m32895b(str, map);
            }
        }
    }

    /* renamed from: b */
    public final void m32900b() {
        synchronized (this) {
            if (this.f5339i) {
                C3445la.m32460b();
                C3294ij.m32755a();
                m32899b(C3294ij.m32752d());
                m32882i();
            }
        }
    }

    /* renamed from: b */
    public final void m32899b(long j) {
        synchronized (this) {
            Iterator<C3242hs> it = this.f5336f.iterator();
            while (it.hasNext()) {
                if (j == it.next().f5424a) {
                    it.remove();
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:131:0x01ca A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01bd A[SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m32895b(java.lang.String r16, java.util.Map<java.lang.String, java.lang.String> r17) {
        /*
            Method dump skipped, instructions count: 913
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C3207hl.m32895b(java.lang.String, java.util.Map):void");
    }

    /* renamed from: c */
    public final void m32894c() {
        synchronized (this) {
            if (this.f5339i) {
                C3445la.m32460b();
                m32882i();
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v20, types: [byte[], RequestObjectType] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m32890e() {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C3207hl.m32890e():void");
    }

    /* renamed from: f */
    public final byte[] m32888f() {
        try {
            C3189gx gxVar = new C3189gx();
            gxVar.f5282a = C3331jb.m32681a().f5682d;
            gxVar.f5283b = C3441kx.m32489a(C3331jb.m32681a().f5679a);
            gxVar.f5284c = C3441kx.m32488b(C3331jb.m32681a().f5679a);
            gxVar.f5285d = C3332jc.m32672b();
            gxVar.f5286e = 3;
            C3314iu.m32707a();
            gxVar.f5287f = C3314iu.m32705b();
            gxVar.f5288g = !C3296il.m32745a().m32740c();
            gxVar.f5289h = new C3193ha();
            gxVar.f5289h.f5305a = new C3186gu();
            gxVar.f5289h.f5305a.f5261a = Build.MODEL;
            gxVar.f5289h.f5305a.f5262b = Build.BRAND;
            gxVar.f5289h.f5305a.f5263c = Build.ID;
            gxVar.f5289h.f5305a.f5264d = Build.DEVICE;
            gxVar.f5289h.f5305a.f5265e = Build.PRODUCT;
            gxVar.f5289h.f5305a.f5266f = Build.VERSION.RELEASE;
            gxVar.f5290i = new ArrayList();
            for (Map.Entry entry : Collections.unmodifiableMap(C3296il.m32745a().f5577a).entrySet()) {
                C3191gz gzVar = new C3191gz();
                gzVar.f5298a = ((EnumC3313it) entry.getKey()).f5627d;
                if (((EnumC3313it) entry.getKey()).f5628e) {
                    gzVar.f5299b = new String((byte[]) entry.getValue());
                } else {
                    gzVar.f5299b = C3445la.m32457b((byte[]) entry.getValue());
                }
                gxVar.f5290i.add(gzVar);
            }
            Location g = C3306ip.m32731a().m32718g();
            if (g != null) {
                int d = C3306ip.m32721d();
                gxVar.f5291j = new C3197he();
                gxVar.f5291j.f5313a = new C3196hd();
                gxVar.f5291j.f5313a.f5310a = C3445la.m32469a(g.getLatitude(), d);
                gxVar.f5291j.f5313a.f5311b = C3445la.m32469a(g.getLongitude(), d);
                gxVar.f5291j.f5313a.f5312c = (float) C3445la.m32469a(g.getAccuracy(), d);
            }
            String str = (String) C3437ku.m32494a().m32493a("UserId");
            if (!str.equals("")) {
                gxVar.f5292k = new C3200hh();
                gxVar.f5292k.f5324a = str;
            }
            return this.f5332b.m32598a((C3361jv<C3189gx>) gxVar);
        } catch (Exception e) {
            String str2 = f5331a;
            C3356jq.m32615a(5, str2, "Proton config request failed with exception: " + e);
            return null;
        }
    }

    /* renamed from: g */
    public final void m32886g() {
        List<C3187gv> list;
        List<C3194hb> list2;
        if (this.f5346p != null) {
            C3356jq.m32615a(5, f5331a, "Processing config response");
            C3234hr.m32848a(this.f5346p.f5296e.f5279c);
            C3234hr.m32842b(this.f5346p.f5296e.f5280d * 1000);
            C3246ht a = C3246ht.m32807a();
            String str = this.f5346p.f5296e.f5281e;
            if (str != null && !str.endsWith(".do")) {
                C3356jq.m32615a(5, C3246ht.f5435a, "overriding analytics agent report URL without an endpoint, are you sure?");
            }
            a.f5437b = str;
            if (this.f5339i) {
                C3437ku.m32494a().m32491a("analyticsEnabled", Boolean.valueOf(this.f5346p.f5297f.f5326b));
            }
            this.f5335e.m32657a();
            C3188gw gwVar = this.f5346p.f5296e;
            if (!(gwVar == null || (list = gwVar.f5277a) == null)) {
                for (C3187gv gvVar : list) {
                    if (!(gvVar == null || (list2 = gvVar.f5269c) == null)) {
                        for (C3194hb hbVar : list2) {
                            if (hbVar != null && !TextUtils.isEmpty(hbVar.f5306a)) {
                                hbVar.f5307b = gvVar;
                                this.f5335e.m32654a((C3338jg<String, C3194hb>) hbVar.f5306a, (String) hbVar);
                            }
                        }
                    }
                }
            }
        }
    }

    /* renamed from: h */
    public final void m32884h() {
        synchronized (this) {
            if (this.f5339i) {
                C3445la.m32460b();
                SharedPreferences sharedPreferences = C3331jb.m32681a().f5679a.getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0);
                if (sharedPreferences.getBoolean("com.flurry.android.flurryAppInstall", true)) {
                    m32895b("flurry.app_install", (Map<String, String>) null);
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    edit.putBoolean("com.flurry.android.flurryAppInstall", false);
                    edit.apply();
                }
            }
        }
    }

    /* renamed from: i */
    public final void m32882i() {
        synchronized (this) {
            if (!this.f5341k) {
                C3356jq.m32602e(f5331a, "Analytics disabled, not sending pulse reports.");
                return;
            }
            String str = f5331a;
            C3356jq.m32615a(4, str, "Sending " + this.f5336f.size() + " queued reports.");
            for (C3242hs hsVar : this.f5336f) {
                String str2 = f5331a;
                C3356jq.m32615a(3, str2, "Firing Pulse callbacks for event: " + hsVar.f5427d);
                C3234hr.m32838c().m32844a(hsVar);
            }
            m32880j();
        }
    }

    /* renamed from: j */
    public final void m32880j() {
        synchronized (this) {
            this.f5336f.clear();
            this.f5338h.m32639b();
        }
    }

    /* renamed from: k */
    public final void m32878k() {
        synchronized (this) {
            C3356jq.m32615a(4, f5331a, "Saving queued report data.");
            this.f5338h.m32640a(this.f5336f);
        }
    }

    /* renamed from: l */
    public final void m32876l() {
        synchronized (this) {
            C3202hj a = this.f5337g.m32641a();
            if (a != null) {
                C3190gy gyVar = null;
                try {
                    gyVar = this.f5333c.m32596b(a.f5329c);
                } catch (Exception e) {
                    String str = f5331a;
                    C3356jq.m32615a(5, str, "Failed to decode saved proton config response: " + e);
                    this.f5337g.m32639b();
                    gyVar = null;
                }
                if (!m32898b(gyVar)) {
                }
                if (gyVar != null) {
                    C3356jq.m32615a(4, f5331a, "Loaded saved proton config response");
                    this.f5343m = 10000L;
                    this.f5344n = a.f5327a;
                    this.f5345o = a.f5328b;
                    this.f5346p = gyVar;
                    m32886g();
                }
            }
            this.f5342l = true;
            C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.hl.3
                @Override // com.flurry.sdk.AbstractRunnableC3447lc
                /* renamed from: a */
                public final void mo32300a() {
                    C3207hl.this.m32890e();
                }
            });
        }
    }

    /* renamed from: m */
    public final void m32875m() {
        synchronized (this) {
            C3356jq.m32615a(4, f5331a, "Loading queued report data.");
            List<C3242hs> a = this.f5338h.m32641a();
            if (a != null) {
                this.f5336f.addAll(a);
            }
        }
    }
}
