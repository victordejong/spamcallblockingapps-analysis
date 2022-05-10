package com.moat.analytics.mobile.inm;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import com.moat.analytics.mobile.inm.C8555j;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.moat.analytics.mobile.inm.b */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/b.class */
public abstract class AbstractC8537b {

    /* renamed from: a */
    public C8562m f33216a = null;

    /* renamed from: b */
    public WeakReference<WebView> f33217b;

    /* renamed from: c */
    public C8555j f33218c;

    /* renamed from: d */
    public TrackerListener f33219d;

    /* renamed from: e */
    public final String f33220e;

    /* renamed from: f */
    public final boolean f33221f;

    /* renamed from: g */
    public WeakReference<View> f33222g;

    /* renamed from: h */
    public final C8601z f33223h;

    /* renamed from: i */
    public final boolean f33224i;

    /* renamed from: j */
    public boolean f33225j;

    /* renamed from: k */
    public boolean f33226k;

    public AbstractC8537b(View view, boolean z, boolean z2) {
        String str;
        C8571p.m5104a(3, "BaseTracker", this, "Initializing.");
        if (z) {
            str = "m" + hashCode();
        } else {
            str = "";
        }
        this.f33220e = str;
        this.f33222g = new WeakReference<>(view);
        this.f33224i = z;
        this.f33221f = z2;
        this.f33225j = false;
        this.f33226k = false;
        this.f33223h = new C8601z();
    }

    /* renamed from: i */
    private void m5226i() {
        String str;
        C8571p.m5104a(3, "BaseTracker", this, "Attempting bridge installation.");
        if (this.f33217b.get() != null) {
            this.f33218c = new C8555j(this.f33217b.get(), C8555j.EnumC8559a.WEBVIEW);
            str = "Bridge installed.";
        } else {
            this.f33218c = null;
            str = "Bridge not installed, WebView is null.";
        }
        C8571p.m5104a(3, "BaseTracker", this, str);
    }

    /* renamed from: j */
    private void m5225j() {
        if (this.f33225j) {
            throw new C8562m("Tracker already started");
        }
    }

    /* renamed from: k */
    private void m5224k() {
        if (this.f33226k) {
            throw new C8562m("Tracker already stopped");
        }
    }

    /* renamed from: l */
    private boolean m5223l() {
        return this.f33224i || this.f33221f;
    }

    /* renamed from: a */
    public abstract String mo5037a();

    /* renamed from: a */
    public void m5235a(WebView webView) {
        if (webView != null) {
            this.f33217b = new WeakReference<>(webView);
            if (this.f33218c == null && !m5223l()) {
                m5226i();
            }
            C8555j jVar = this.f33218c;
            if (jVar != null) {
                jVar.m5181a(this);
            }
        }
    }

    /* renamed from: a */
    public void m5234a(C8555j jVar) {
        this.f33218c = jVar;
    }

    /* renamed from: a */
    public void m5233a(String str, Exception exc) {
        try {
            C8562m.m5135a(exc);
            String a = C8562m.m5134a(str, exc);
            if (this.f33219d != null) {
                this.f33219d.onTrackingFailedToStart(a);
            }
            C8571p.m5104a(3, "BaseTracker", this, a);
            C8571p.m5099a("[ERROR] ", mo5037a() + " " + a);
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public void mo5035a(List<String> list) {
        if (m5229f() == null && !this.f33221f) {
            list.add("Tracker's target view is null");
        }
        if (!list.isEmpty()) {
            throw new C8562m(TextUtils.join(" and ", list));
        }
    }

    /* renamed from: b */
    public void mo5218b() {
        C8571p.m5104a(3, "BaseTracker", this, "Attempting to start impression.");
        m5232c();
        m5231d();
        mo5035a(new ArrayList());
        C8555j jVar = this.f33218c;
        if (jVar != null) {
            jVar.m5174b(this);
            this.f33225j = true;
            C8571p.m5104a(3, "BaseTracker", this, "Impression started.");
            return;
        }
        C8571p.m5104a(3, "BaseTracker", this, "Bridge is null, won't start tracking");
        throw new C8562m("Bridge is null");
    }

    /* renamed from: c */
    public void m5232c() {
        if (this.f33216a != null) {
            throw new C8562m("Tracker initialization failed: " + this.f33216a.getMessage());
        }
    }

    public void changeTargetView(View view) {
        C8571p.m5104a(3, "BaseTracker", this, "changing view to " + C8571p.m5103a(view));
        this.f33222g = new WeakReference<>(view);
    }

    /* renamed from: d */
    public void m5231d() {
        m5225j();
        m5224k();
    }

    /* renamed from: e */
    public boolean m5230e() {
        return this.f33225j && !this.f33226k;
    }

    /* renamed from: f */
    public View m5229f() {
        return this.f33222g.get();
    }

    /* renamed from: g */
    public String m5228g() {
        return C8571p.m5103a(m5229f());
    }

    /* renamed from: h */
    public String m5227h() {
        this.f33223h.m5021a(this.f33220e, m5229f());
        return this.f33223h.f33396a;
    }

    public void removeListener() {
        this.f33219d = null;
    }

    @Deprecated
    public void setActivity(Activity activity) {
    }

    public void setListener(TrackerListener trackerListener) {
        this.f33219d = trackerListener;
    }

    public void startTracking() {
        try {
            C8571p.m5104a(3, "BaseTracker", this, "In startTracking method.");
            mo5218b();
            if (this.f33219d != null) {
                this.f33219d.onTrackingStarted("Tracking started on " + m5228g());
            }
            String str = "startTracking succeeded for " + m5228g();
            C8571p.m5104a(3, "BaseTracker", this, str);
            C8571p.m5099a("[SUCCESS] ", mo5037a() + " " + str);
        } catch (Exception e) {
            m5233a("startTracking", e);
        }
    }

    public void stopTracking() {
        boolean z;
        try {
            C8571p.m5104a(3, "BaseTracker", this, "In stopTracking method.");
            this.f33226k = true;
            z = false;
            if (this.f33218c != null) {
                this.f33218c.m5169c(this);
                z = true;
            }
        } catch (Exception e) {
            C8562m.m5135a(e);
            z = false;
        }
        StringBuilder sb = new StringBuilder("Attempt to stop tracking ad impression was ");
        sb.append(z ? "" : "un");
        sb.append("successful.");
        C8571p.m5104a(3, "BaseTracker", this, sb.toString());
        String str = z ? "[SUCCESS] " : "[ERROR] ";
        StringBuilder sb2 = new StringBuilder();
        sb2.append(mo5037a());
        sb2.append(" stopTracking ");
        sb2.append(z ? "succeeded" : "failed");
        sb2.append(" for ");
        sb2.append(m5228g());
        C8571p.m5099a(str, sb2.toString());
        TrackerListener trackerListener = this.f33219d;
        if (trackerListener != null) {
            trackerListener.onTrackingStopped("");
            this.f33219d = null;
        }
    }
}
