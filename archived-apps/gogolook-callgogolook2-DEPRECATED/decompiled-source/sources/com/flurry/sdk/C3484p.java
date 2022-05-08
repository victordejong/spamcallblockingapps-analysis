package com.flurry.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.flurry.android.FlurryFullscreenTakeoverActivity;
import com.flurry.sdk.C2812aj;
import com.flurry.sdk.C2877bl;
import com.flurry.sdk.C3334je;
import java.io.File;
import java.util.List;
import java.util.Map;
/* renamed from: com.flurry.sdk.p */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/p.class */
public class C3484p implements AbstractC3360ju {

    /* renamed from: j */
    public static final String f5998j = "p";

    /* renamed from: a */
    public C2796ad f5999a;

    /* renamed from: b */
    public C3516v f6000b;

    /* renamed from: c */
    public C3491q f6001c;

    /* renamed from: d */
    public C2944dd f6002d;

    /* renamed from: e */
    public C2939dc f6003e;

    /* renamed from: f */
    public C3497s f6004f;

    /* renamed from: g */
    public C2883bm f6005g;

    /* renamed from: h */
    public C2806af f6006h;

    /* renamed from: i */
    public C2913cj f6007i;

    /* renamed from: l */
    public File f6009l;

    /* renamed from: m */
    public File f6010m;

    /* renamed from: n */
    public C3342jj<List<C2877bl>> f6011n;

    /* renamed from: o */
    public C3342jj<List<C2812aj>> f6012o;

    /* renamed from: k */
    public final AbstractC3344jl<C3334je> f6008k = new AbstractC3344jl<C3334je>() { // from class: com.flurry.sdk.p.1
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* synthetic */ void mo32302a(C3334je jeVar) {
            C3334je jeVar2 = jeVar;
            Activity activity = jeVar2.f5689a.get();
            if (activity == null) {
                C3356jq.m32613a(C3484p.f5998j, "Activity has been destroyed, can't pass ActivityLifecycleEvent to adobject.");
            } else if (C3334je.EnumC3335a.kPaused.equals(jeVar2.f5690b)) {
                C3484p.this.f6000b.m32297a(activity);
            } else if (C3334je.EnumC3335a.kResumed.equals(jeVar2.f5690b)) {
                C3484p.this.f6000b.m32294b(activity);
            } else if (C3334je.EnumC3335a.kDestroyed.equals(jeVar2.f5690b)) {
                C3484p.this.f6000b.m32292c(activity);
            }
        }
    };

    /* renamed from: p */
    public final AbstractC3344jl<C2951dh> f6013p = new AbstractC3344jl<C2951dh>() { // from class: com.flurry.sdk.p.2
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* synthetic */ void mo32302a(C2951dh dhVar) {
            C2951dh dhVar2 = dhVar;
            synchronized (C3484p.this) {
                if (C3484p.this.f6007i == null) {
                    C3484p.this.f6007i = dhVar2.f4577a;
                    C3484p pVar = C3484p.this;
                    pVar.m32357a(pVar.f6007i.f4477b * 1024 * 1204, C3484p.this.f6007i.f4478c * 1024);
                    C3023ei.m33267a(C3484p.this.f6007i.f4479d);
                    C3491q qVar = C3484p.this.f6001c;
                    String str = C3484p.this.f6007i.f4476a;
                    if (!TextUtils.isEmpty(str)) {
                        qVar.f6020b = str;
                    }
                    final C3491q qVar2 = C3484p.this.f6001c;
                    qVar2.f6021c = 0;
                    C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.q.2
                        @Override // com.flurry.sdk.AbstractRunnableC3447lc
                        /* renamed from: a */
                        public final void mo32300a() {
                            qVar2.m32336b();
                        }
                    });
                }
            }
        }
    };

    /* renamed from: a */
    public static C3484p m32358a() {
        C3484p pVar;
        synchronized (C3484p.class) {
            try {
                pVar = (C3484p) C3331jb.m32681a().m32679a(C3484p.class);
            } catch (Throwable th) {
                throw th;
            }
        }
        return pVar;
    }

    /* renamed from: a */
    public static void m32352a(String str, EnumC2874bi biVar, boolean z, Map<String, String> map) {
        C2988dp d = m32347d();
        if (d != null) {
            d.m33343a(str, biVar, z, map);
        }
    }

    /* renamed from: c */
    public static C2885bo m32349c() {
        C2988dp d = m32347d();
        if (d != null) {
            return d.f4665b;
        }
        return null;
    }

    /* renamed from: d */
    public static C2988dp m32347d() {
        C3423kp e = C3427kr.m32517a().m32505e();
        if (e == null) {
            return null;
        }
        return (C2988dp) e.m32520b(C2988dp.class);
    }

    /* renamed from: e */
    public static C3475m m32345e() {
        C2988dp d = m32347d();
        if (d != null) {
            return d.f4667d;
        }
        return null;
    }

    /* renamed from: a */
    public final void m32357a(long j, long j2) {
        synchronized (this) {
            if (!this.f6006h.m33657a()) {
                C3356jq.m32615a(3, f5998j, "Precaching: initing from FlurryAdModule");
                this.f6006h.m33655a(j, j2);
                this.f6006h.m33643b();
                C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.p.6
                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                    /* renamed from: a */
                    public final void mo32300a() {
                        C3484p.this.m32340i();
                    }
                });
            }
        }
    }

    @Override // com.flurry.sdk.AbstractC3360ju
    /* renamed from: a */
    public final void mo32356a(Context context) {
        C3423kp.m32522a(C2988dp.class);
        this.f5999a = new C2796ad();
        this.f6000b = new C3516v();
        this.f6001c = new C3491q();
        this.f6002d = new C2944dd();
        this.f6003e = new C2939dc();
        this.f6004f = new C3497s();
        this.f6005g = new C2883bm();
        this.f6006h = new C2806af();
        this.f6007i = null;
        C3345jm.m32636a().m32632a("com.flurry.android.sdk.ActivityLifecycleEvent", this.f6008k);
        C3345jm.m32636a().m32632a("com.flurry.android.sdk.AdConfigurationEvent", this.f6013p);
        Context context2 = C3331jb.m32681a().f5679a;
        this.f6009l = context2.getFileStreamPath(".flurryfreqcap." + Integer.toString(C3331jb.m32681a().f5682d.hashCode(), 16));
        Context context3 = C3331jb.m32681a().f5679a;
        this.f6010m = context3.getFileStreamPath(".flurrycachedasset." + Integer.toString(C3331jb.m32681a().f5682d.hashCode(), 16));
        Context context4 = C3331jb.m32681a().f5679a;
        this.f6011n = new C3342jj<>(context4.getFileStreamPath(".yflurryfreqcap." + Long.toString(C3445la.m32449i(C3331jb.m32681a().f5682d), 16)), ".yflurryfreqcap.", 2, new AbstractC3422ko<List<C2877bl>>(this) { // from class: com.flurry.sdk.p.3
            @Override // com.flurry.sdk.AbstractC3422ko
            /* renamed from: a */
            public final AbstractC3417kl<List<C2877bl>> mo32339a(int i) {
                return new C3414kk(new C2877bl.C2878a());
            }
        });
        Context context5 = C3331jb.m32681a().f5679a;
        this.f6012o = new C3342jj<>(context5.getFileStreamPath(".yflurrycachedasset" + Long.toString(C3445la.m32449i(C3331jb.m32681a().f5682d), 16)), ".yflurrycachedasset", 1, new AbstractC3422ko<List<C2812aj>>(this) { // from class: com.flurry.sdk.p.4
            @Override // com.flurry.sdk.AbstractC3422ko
            /* renamed from: a */
            public final AbstractC3417kl<List<C2812aj>> mo32339a(int i) {
                return new C3414kk(new C2812aj.C2813a());
            }
        });
        C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.p.5
            @Override // com.flurry.sdk.AbstractRunnableC3447lc
            /* renamed from: a */
            public final void mo32300a() {
                C3484p.this.m32341h();
            }
        });
        Context context6 = C3331jb.m32681a().f5679a;
        if (context6.getPackageManager().resolveActivity(new Intent(context6, FlurryFullscreenTakeoverActivity.class), 0) == null) {
            C3356jq.m32609b(f5998j, "com.flurry.android.FlurryFullscreenTakeoverActivity must be declared in manifest.");
        }
    }

    /* renamed from: b */
    public final void m32351b() {
        synchronized (this) {
            C3356jq.m32615a(4, f5998j, "Saving FreqCap data.");
            this.f6005g.m33477a();
            this.f6011n.m32640a(this.f6005g.m33472b());
        }
    }

    /* renamed from: f */
    public final void m32343f() {
        synchronized (this) {
            if (this.f6006h.m33657a()) {
                C3356jq.m32615a(4, f5998j, "Saving CachedAsset data.");
                C3342jj<List<C2812aj>> jjVar = this.f6012o;
                C2806af afVar = this.f6006h;
                jjVar.m32640a(!afVar.m33657a() ? null : afVar.f3966b.m33679a());
            }
        }
    }

    /* renamed from: h */
    public final void m32341h() {
        synchronized (this) {
            C3356jq.m32615a(4, f5998j, "Loading FreqCap data.");
            List<C2877bl> a = this.f6011n.m32641a();
            if (a != null) {
                for (C2877bl blVar : a) {
                    this.f6005g.m33475a(blVar);
                }
            } else if (this.f6009l.exists()) {
                C3356jq.m32615a(4, f5998j, "Legacy FreqCap data found, converting.");
                List<C2877bl> a2 = C3496r.m32330a(this.f6009l);
                if (a2 != null) {
                    for (C2877bl blVar2 : a2) {
                        this.f6005g.m33475a(blVar2);
                    }
                }
                this.f6005g.m33477a();
                this.f6009l.delete();
                m32351b();
                return;
            }
            this.f6005g.m33477a();
        }
    }

    /* renamed from: i */
    public final void m32340i() {
        synchronized (this) {
            if (this.f6006h.m33657a()) {
                C3356jq.m32615a(4, f5998j, "Loading CachedAsset data.");
                List<C2812aj> a = this.f6012o.m32641a();
                if (a != null) {
                    for (C2812aj ajVar : a) {
                        C2806af afVar = this.f6006h;
                        if (afVar.m33657a() && ajVar != null && !EnumC2828ap.QUEUED.equals(ajVar.m33624a()) && !EnumC2828ap.IN_PROGRESS.equals(ajVar.m33624a())) {
                            afVar.f3966b.m33676a(ajVar);
                        }
                    }
                    return;
                }
                if (this.f6010m.exists()) {
                    C3356jq.m32615a(4, f5998j, "Legacy CachedAsset data found, deleting.");
                    this.f6010m.delete();
                }
            }
        }
    }
}
