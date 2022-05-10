package com.moat.analytics.mobile.inm;

import android.app.Application;
import android.content.Context;
import com.moat.analytics.mobile.inm.C8543g;
import com.moat.analytics.mobile.inm.C8586w;
import java.lang.ref.WeakReference;
/* renamed from: com.moat.analytics.mobile.inm.k */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/k.class */
public class C8560k extends MoatAnalytics implements C8586w.AbstractC8592b {

    /* renamed from: d */
    public C8543g f33304d;

    /* renamed from: e */
    public WeakReference<Context> f33305e;

    /* renamed from: g */
    public String f33307g;

    /* renamed from: h */
    public MoatOptions f33308h;

    /* renamed from: a */
    public boolean f33301a = false;

    /* renamed from: b */
    public boolean f33302b = false;

    /* renamed from: c */
    public boolean f33303c = false;

    /* renamed from: f */
    public boolean f33306f = false;

    /* renamed from: a */
    private void m5148a(MoatOptions moatOptions, Application application) {
        if (this.f33306f) {
            C8571p.m5104a(3, "Analytics", this, "Moat SDK has already been started.");
            return;
        }
        this.f33308h = moatOptions;
        C8586w.m5069a().m5064b();
        this.f33303c = moatOptions.disableLocationServices;
        if (application != null) {
            if (moatOptions.loggingEnabled && C8574s.m5090b(application.getApplicationContext())) {
                this.f33301a = true;
            }
            this.f33305e = new WeakReference<>(application.getApplicationContext());
            this.f33306f = true;
            this.f33302b = moatOptions.autoTrackGMAInterstitials;
            C8531a.m5250a(application);
            C8586w.m5069a().m5067a(this);
            if (!moatOptions.disableAdIdCollection) {
                C8574s.m5093a(application);
            }
            C8571p.m5099a("[SUCCESS] ", "Moat Analytics SDK Version 2.5.0 started");
            return;
        }
        throw new C8562m("Moat Analytics SDK didn't start, application was null");
    }

    /* renamed from: e */
    private void m5146e() {
        if (this.f33304d == null) {
            C8543g gVar = new C8543g(C8531a.m5253a(), C8543g.EnumC8548a.DISPLAY);
            this.f33304d = gVar;
            gVar.m5205a(this.f33307g);
            C8571p.m5104a(3, "Analytics", this, "Preparing native display tracking with partner code " + this.f33307g);
            C8571p.m5099a("[SUCCESS] ", "Prepared for native display tracking with partner code " + this.f33307g);
        }
    }

    /* renamed from: a */
    public boolean m5149a() {
        return this.f33306f;
    }

    /* renamed from: b */
    public boolean m5147b() {
        MoatOptions moatOptions = this.f33308h;
        return moatOptions != null && moatOptions.disableLocationServices;
    }

    @Override // com.moat.analytics.mobile.inm.C8586w.AbstractC8592b
    /* renamed from: c */
    public void mo5042c() {
        C8562m.m5136a();
        C8568o.m5126a();
        if (this.f33307g != null) {
            try {
                m5146e();
            } catch (Exception e) {
                C8562m.m5135a(e);
            }
        }
    }

    @Override // com.moat.analytics.mobile.inm.C8586w.AbstractC8592b
    /* renamed from: d */
    public void mo5041d() {
    }

    @Override // com.moat.analytics.mobile.inm.MoatAnalytics
    public void prepareNativeDisplayTracking(String str) {
        this.f33307g = str;
        if (C8586w.m5069a().f33356a != C8586w.EnumC8594d.OFF) {
            try {
                m5146e();
            } catch (Exception e) {
                C8562m.m5135a(e);
            }
        }
    }

    @Override // com.moat.analytics.mobile.inm.MoatAnalytics
    public void start(Application application) {
        start(new MoatOptions(), application);
    }

    @Override // com.moat.analytics.mobile.inm.MoatAnalytics
    public void start(MoatOptions moatOptions, Application application) {
        try {
            m5148a(moatOptions, application);
        } catch (Exception e) {
            C8562m.m5135a(e);
        }
    }
}
