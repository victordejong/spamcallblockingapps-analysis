package com.moat.analytics.mobile.mpub;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import com.moat.analytics.mobile.mpub.C8636j;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.moat.analytics.mobile.mpub.b */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/b.class */
public abstract class AbstractC8618b {

    /* renamed from: a */
    public C8643m f33433a = null;

    /* renamed from: b */
    public WeakReference<WebView> f33434b;

    /* renamed from: c */
    public C8636j f33435c;

    /* renamed from: d */
    public TrackerListener f33436d;

    /* renamed from: e */
    public final String f33437e;

    /* renamed from: f */
    public final boolean f33438f;

    /* renamed from: g */
    public WeakReference<View> f33439g;

    /* renamed from: h */
    public final C8682z f33440h;

    /* renamed from: i */
    public final boolean f33441i;

    /* renamed from: j */
    public boolean f33442j;

    /* renamed from: k */
    public boolean f33443k;

    public AbstractC8618b(View view, boolean z, boolean z2) {
        String str;
        C8652p.m4848a(3, "BaseTracker", this, "Initializing.");
        if (z) {
            str = "m" + hashCode();
        } else {
            str = "";
        }
        this.f33437e = str;
        this.f33439g = new WeakReference<>(view);
        this.f33441i = z;
        this.f33438f = z2;
        this.f33442j = false;
        this.f33443k = false;
        this.f33440h = new C8682z();
    }

    /* renamed from: i */
    private void m4970i() {
        String str;
        C8652p.m4848a(3, "BaseTracker", this, "Attempting bridge installation.");
        if (this.f33434b.get() != null) {
            this.f33435c = new C8636j(this.f33434b.get(), C8636j.EnumC8640a.WEBVIEW);
            str = "Bridge installed.";
        } else {
            this.f33435c = null;
            str = "Bridge not installed, WebView is null.";
        }
        C8652p.m4848a(3, "BaseTracker", this, str);
    }

    /* renamed from: j */
    private void m4969j() {
        if (this.f33442j) {
            throw new C8643m("Tracker already started");
        }
    }

    /* renamed from: k */
    private void m4968k() {
        if (this.f33443k) {
            throw new C8643m("Tracker already stopped");
        }
    }

    /* renamed from: l */
    private boolean m4967l() {
        return this.f33441i || this.f33438f;
    }

    /* renamed from: a */
    public abstract String mo4781a();

    /* renamed from: a */
    public void m4979a(WebView webView) {
        if (webView != null) {
            this.f33434b = new WeakReference<>(webView);
            if (this.f33435c == null && !m4967l()) {
                m4970i();
            }
            C8636j jVar = this.f33435c;
            if (jVar != null) {
                jVar.m4925a(this);
            }
        }
    }

    /* renamed from: a */
    public void m4978a(C8636j jVar) {
        this.f33435c = jVar;
    }

    /* renamed from: a */
    public void m4977a(String str, Exception exc) {
        try {
            C8643m.m4879a(exc);
            String a = C8643m.m4878a(str, exc);
            if (this.f33436d != null) {
                this.f33436d.onTrackingFailedToStart(a);
            }
            C8652p.m4848a(3, "BaseTracker", this, a);
            C8652p.m4843a("[ERROR] ", mo4781a() + " " + a);
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public void mo4779a(List<String> list) {
        if (m4973f() == null && !this.f33438f) {
            list.add("Tracker's target view is null");
        }
        if (!list.isEmpty()) {
            throw new C8643m(TextUtils.join(" and ", list));
        }
    }

    /* renamed from: b */
    public void mo4962b() {
        C8652p.m4848a(3, "BaseTracker", this, "Attempting to start impression.");
        m4976c();
        m4975d();
        mo4779a(new ArrayList());
        C8636j jVar = this.f33435c;
        if (jVar != null) {
            jVar.m4918b(this);
            this.f33442j = true;
            C8652p.m4848a(3, "BaseTracker", this, "Impression started.");
            return;
        }
        C8652p.m4848a(3, "BaseTracker", this, "Bridge is null, won't start tracking");
        throw new C8643m("Bridge is null");
    }

    /* renamed from: c */
    public void m4976c() {
        if (this.f33433a != null) {
            throw new C8643m("Tracker initialization failed: " + this.f33433a.getMessage());
        }
    }

    public void changeTargetView(View view) {
        C8652p.m4848a(3, "BaseTracker", this, "changing view to " + C8652p.m4847a(view));
        this.f33439g = new WeakReference<>(view);
    }

    /* renamed from: d */
    public void m4975d() {
        m4969j();
        m4968k();
    }

    /* renamed from: e */
    public boolean m4974e() {
        return this.f33442j && !this.f33443k;
    }

    /* renamed from: f */
    public View m4973f() {
        return this.f33439g.get();
    }

    /* renamed from: g */
    public String m4972g() {
        return C8652p.m4847a(m4973f());
    }

    /* renamed from: h */
    public String m4971h() {
        this.f33440h.m4765a(this.f33437e, m4973f());
        return this.f33440h.f33613a;
    }

    public void removeListener() {
        this.f33436d = null;
    }

    @Deprecated
    public void setActivity(Activity activity) {
    }

    public void setListener(TrackerListener trackerListener) {
        this.f33436d = trackerListener;
    }

    public void startTracking() {
        try {
            C8652p.m4848a(3, "BaseTracker", this, "In startTracking method.");
            mo4962b();
            if (this.f33436d != null) {
                this.f33436d.onTrackingStarted("Tracking started on " + m4972g());
            }
            String str = "startTracking succeeded for " + m4972g();
            C8652p.m4848a(3, "BaseTracker", this, str);
            C8652p.m4843a("[SUCCESS] ", mo4781a() + " " + str);
        } catch (Exception e) {
            m4977a("startTracking", e);
        }
    }

    public void stopTracking() {
        boolean z;
        try {
            C8652p.m4848a(3, "BaseTracker", this, "In stopTracking method.");
            this.f33443k = true;
            z = false;
            if (this.f33435c != null) {
                this.f33435c.m4913c(this);
                z = true;
            }
        } catch (Exception e) {
            C8643m.m4879a(e);
            z = false;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Attempt to stop tracking ad impression was ");
        sb.append(z ? "" : "un");
        sb.append("successful.");
        C8652p.m4848a(3, "BaseTracker", this, sb.toString());
        String str = z ? "[SUCCESS] " : "[ERROR] ";
        StringBuilder sb2 = new StringBuilder();
        sb2.append(mo4781a());
        sb2.append(" stopTracking ");
        sb2.append(z ? "succeeded" : "failed");
        sb2.append(" for ");
        sb2.append(m4972g());
        C8652p.m4843a(str, sb2.toString());
        TrackerListener trackerListener = this.f33436d;
        if (trackerListener != null) {
            trackerListener.onTrackingStopped("");
            this.f33436d = null;
        }
    }
}
