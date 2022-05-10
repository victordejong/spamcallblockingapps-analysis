package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.VisibleForTesting;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p252g.p253a.ag0;
import p131c.p161d.p170b.p224d.p252g.p253a.xf0;
import p131c.p161d.p170b.p224d.p252g.p253a.zf0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzrk.class */
public final class zzrk extends Thread {

    /* renamed from: a */
    public boolean f28914a;

    /* renamed from: b */
    public boolean f28915b;

    /* renamed from: c */
    public final Object f28916c;

    /* renamed from: d */
    public final zzrd f28917d;

    /* renamed from: e */
    public final int f28918e;

    /* renamed from: f */
    public final int f28919f;

    /* renamed from: g */
    public final int f28920g;

    /* renamed from: h */
    public final int f28921h;

    /* renamed from: i */
    public final int f28922i;

    /* renamed from: j */
    public final int f28923j;

    /* renamed from: k */
    public final int f28924k;

    /* renamed from: l */
    public final int f28925l;

    /* renamed from: m */
    public final String f28926m;

    /* renamed from: n */
    public final boolean f28927n;

    /* renamed from: o */
    public final boolean f28928o;

    /* renamed from: p */
    public final boolean f28929p;

    public zzrk() {
        this(new zzrd());
    }

    @VisibleForTesting
    public zzrk(zzrd zzrdVar) {
        this.f28914a = false;
        this.f28915b = false;
        this.f28917d = zzrdVar;
        this.f28916c = new Object();
        this.f28919f = zzacq.f23972d.mo16862a().intValue();
        this.f28920g = zzacq.f23969a.mo16862a().intValue();
        this.f28921h = zzacq.f23973e.mo16862a().intValue();
        this.f28922i = zzacq.f23971c.mo16862a().intValue();
        this.f28923j = ((Integer) zzwm.m11166e().m16921a(zzabb.f23693J)).intValue();
        this.f28924k = ((Integer) zzwm.m11166e().m16921a(zzabb.f23698K)).intValue();
        this.f28925l = ((Integer) zzwm.m11166e().m16921a(zzabb.f23703L)).intValue();
        this.f28918e = zzacq.f23974f.mo16862a().intValue();
        this.f28926m = (String) zzwm.m11166e().m16921a(zzabb.f23713N);
        this.f28927n = ((Boolean) zzwm.m11166e().m16921a(zzabb.f23718O)).booleanValue();
        this.f28928o = ((Boolean) zzwm.m11166e().m16921a(zzabb.f23723P)).booleanValue();
        this.f28929p = ((Boolean) zzwm.m11166e().m16921a(zzabb.f23728Q)).booleanValue();
        setName("ContentFetchTask");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0069, code lost:
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0072, code lost:
        if (r0.importance != 100) goto L_0x00a4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0076, code lost:
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007c, code lost:
        if (r0.inKeyguardRestrictedInputMode() != false) goto L_0x00a4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x007f, code lost:
        r0 = (android.os.PowerManager) r0.getSystemService("power");
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x008a, code lost:
        if (r0 != null) goto L_0x0093;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x008d, code lost:
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0093, code lost:
        r10 = r0.isScreenOn();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x009a, code lost:
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x009e, code lost:
        if (r10 == false) goto L_0x00a4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a1, code lost:
        r8 = true;
     */
    @com.google.android.gms.common.util.VisibleForTesting
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m11497f() {
        /*
            r0 = 0
            r4 = r0
            com.google.android.gms.internal.ads.zzrg r0 = com.google.android.gms.ads.internal.zzp.m17966f()     // Catch: all -> 0x00a7
            android.content.Context r0 = r0.m11508b()     // Catch: all -> 0x00a7
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L_0x000f
            r0 = 0
            return r0
        L_0x000f:
            r0 = r5
            java.lang.String r1 = "activity"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: all -> 0x00a7
            android.app.ActivityManager r0 = (android.app.ActivityManager) r0     // Catch: all -> 0x00a7
            r6 = r0
            r0 = r5
            java.lang.String r1 = "keyguard"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: all -> 0x00a7
            android.app.KeyguardManager r0 = (android.app.KeyguardManager) r0     // Catch: all -> 0x00a7
            r7 = r0
            r0 = r4
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L_0x00a4
            r0 = r7
            if (r0 != 0) goto L_0x0034
            r0 = r4
            r8 = r0
            goto L_0x00a4
        L_0x0034:
            r0 = r6
            java.util.List r0 = r0.getRunningAppProcesses()     // Catch: all -> 0x00a7
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x003f
            r0 = 0
            return r0
        L_0x003f:
            r0 = r6
            java.util.Iterator r0 = r0.iterator()     // Catch: all -> 0x00a7
            r6 = r0
        L_0x0046:
            r0 = r4
            r8 = r0
            r0 = r6
            boolean r0 = r0.hasNext()     // Catch: all -> 0x00a7
            if (r0 == 0) goto L_0x00a4
            r0 = r6
            java.lang.Object r0 = r0.next()     // Catch: all -> 0x00a7
            android.app.ActivityManager$RunningAppProcessInfo r0 = (android.app.ActivityManager.RunningAppProcessInfo) r0     // Catch: all -> 0x00a7
            r9 = r0
            int r0 = android.os.Process.myPid()     // Catch: all -> 0x00a7
            r1 = r9
            int r1 = r1.pid     // Catch: all -> 0x00a7
            if (r0 != r1) goto L_0x0046
            r0 = r4
            r8 = r0
            r0 = r9
            int r0 = r0.importance     // Catch: all -> 0x00a7
            r1 = 100
            if (r0 != r1) goto L_0x00a4
            r0 = r4
            r8 = r0
            r0 = r7
            boolean r0 = r0.inKeyguardRestrictedInputMode()     // Catch: all -> 0x00a7
            if (r0 != 0) goto L_0x00a4
            r0 = r5
            java.lang.String r1 = "power"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: all -> 0x00a7
            android.os.PowerManager r0 = (android.os.PowerManager) r0     // Catch: all -> 0x00a7
            r7 = r0
            r0 = r7
            if (r0 != 0) goto L_0x0093
            r0 = 0
            r10 = r0
            goto L_0x0099
        L_0x0093:
            r0 = r7
            boolean r0 = r0.isScreenOn()     // Catch: all -> 0x00a7
            r10 = r0
        L_0x0099:
            r0 = r4
            r8 = r0
            r0 = r10
            if (r0 == 0) goto L_0x00a4
            r0 = 1
            r8 = r0
        L_0x00a4:
            r0 = r8
            return r0
        L_0x00a7:
            r7 = move-exception
            com.google.android.gms.internal.ads.zzayb r0 = com.google.android.gms.ads.internal.zzp.m17965g()
            r1 = r7
            java.lang.String r2 = "ContentFetchTask.isInForeground"
            r0.m16188a(r1, r2)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzrk.m11497f():boolean");
    }

    @VisibleForTesting
    /* renamed from: a */
    public final ag0 m11503a(View view, zzre zzreVar) {
        boolean z;
        if (view == null) {
            return new ag0(this, 0, 0);
        }
        boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
        if ((view instanceof TextView) && !(view instanceof EditText)) {
            CharSequence text = ((TextView) view).getText();
            if (TextUtils.isEmpty(text)) {
                return new ag0(this, 0, 0);
            }
            zzreVar.m11522b(text.toString(), globalVisibleRect, view.getX(), view.getY(), view.getWidth(), view.getHeight());
            return new ag0(this, 1, 0);
        } else if ((view instanceof WebView) && !(view instanceof zzbgj)) {
            WebView webView = (WebView) view;
            if (!PlatformVersion.m17062f()) {
                z = false;
            } else {
                zzreVar.m11515h();
                webView.post(new zf0(this, zzreVar, webView, globalVisibleRect));
                z = true;
            }
            return z ? new ag0(this, 0, 1) : new ag0(this, 0, 0);
        } else if (!(view instanceof ViewGroup)) {
            return new ag0(this, 0, 0);
        } else {
            ViewGroup viewGroup = (ViewGroup) view;
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                ag0 a = m11503a(viewGroup.getChildAt(i3), zzreVar);
                i += a.f12289a;
                i2 += a.f12290b;
            }
            return new ag0(this, i, i2);
        }
    }

    /* renamed from: a */
    public final void m11505a() {
        synchronized (this.f28916c) {
            this.f28915b = false;
            this.f28916c.notifyAll();
            zzbbq.m15858a("ContentFetchThread: wakeup");
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public final void m11504a(View view) {
        try {
            zzre zzreVar = new zzre(this.f28919f, this.f28920g, this.f28921h, this.f28922i, this.f28923j, this.f28924k, this.f28925l, this.f28928o);
            Context b = zzp.m17966f().m11508b();
            if (b != null && !TextUtils.isEmpty(this.f28926m)) {
                String str = (String) view.getTag(b.getResources().getIdentifier((String) zzwm.m11166e().m16921a(zzabb.f23708M), "id", b.getPackageName()));
                if (str != null && str.equals(this.f28926m)) {
                    return;
                }
            }
            ag0 a = m11503a(view, zzreVar);
            zzreVar.m11513j();
            if (a.f12289a != 0 || a.f12290b != 0) {
                if (a.f12290b != 0 || zzreVar.m11512k() != 0) {
                    if (a.f12290b != 0 || !this.f28917d.m11532a(zzreVar)) {
                        this.f28917d.m11529c(zzreVar);
                    }
                }
            }
        } catch (Exception e) {
            zzbbq.m15855b("Exception in fetchContentOnUIThread", e);
            zzp.m17965g().m16188a(e, "ContentFetchTask.fetchContent");
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public final void m11502a(zzre zzreVar, WebView webView, String str, boolean z) {
        zzreVar.m11516g();
        try {
            if (!TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString("text");
                if (this.f28927n || TextUtils.isEmpty(webView.getTitle())) {
                    zzreVar.m11525a(optString, z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                } else {
                    String title = webView.getTitle();
                    StringBuilder sb = new StringBuilder(String.valueOf(title).length() + 1 + String.valueOf(optString).length());
                    sb.append(title);
                    sb.append("\n");
                    sb.append(optString);
                    zzreVar.m11525a(sb.toString(), z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                }
            }
            if (zzreVar.m11523b()) {
                this.f28917d.m11530b(zzreVar);
            }
        } catch (JSONException e) {
            zzbbq.m15858a("Json string may be malformed.");
        } catch (Throwable th) {
            zzbbq.m15857a("Failed to get webview content.", th);
            zzp.m17965g().m16188a(th, "ContentFetchTask.processWebViewContent");
        }
    }

    /* renamed from: b */
    public final void m11501b() {
        synchronized (this.f28916c) {
            if (this.f28914a) {
                zzbbq.m15858a("Content hash thread already started, quiting...");
                return;
            }
            this.f28914a = true;
            start();
        }
    }

    /* renamed from: c */
    public final zzre m11500c() {
        return this.f28917d.m11531a(this.f28929p);
    }

    /* renamed from: d */
    public final void m11499d() {
        synchronized (this.f28916c) {
            this.f28915b = true;
            StringBuilder sb = new StringBuilder(42);
            sb.append("ContentFetchThread: paused, mPause = ");
            sb.append(true);
            zzbbq.m15858a(sb.toString());
        }
    }

    /* renamed from: e */
    public final boolean m11498e() {
        return this.f28915b;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        while (true) {
            try {
                if (m11497f()) {
                    Activity a = zzp.m17966f().m11511a();
                    if (a == null) {
                        zzbbq.m15858a("ContentFetchThread: no activity. Sleeping.");
                        m11499d();
                    } else if (a != null) {
                        View view = null;
                        try {
                            if (a.getWindow() != null) {
                                view = null;
                                if (a.getWindow().getDecorView() != null) {
                                    view = a.getWindow().getDecorView().findViewById(16908290);
                                }
                            }
                        } catch (Exception e) {
                            zzp.m17965g().m16188a(e, "ContentFetchTask.extractContent");
                            zzbbq.m15858a("Failed getting root view of activity. Content not extracted.");
                            view = null;
                        }
                        if (!(view == null || view == null)) {
                            view.post(new xf0(this, view));
                        }
                    }
                } else {
                    zzbbq.m15858a("ContentFetchTask: sleeping");
                    m11499d();
                }
                Thread.sleep(this.f28918e * 1000);
            } catch (InterruptedException e2) {
                zzbbq.m15855b("Error in ContentFetchTask", e2);
            } catch (Exception e3) {
                zzbbq.m15855b("Error in ContentFetchTask", e3);
                zzp.m17965g().m16188a(e3, "ContentFetchTask.run");
            }
            synchronized (this.f28916c) {
                while (this.f28915b) {
                    try {
                        try {
                            zzbbq.m15858a("ContentFetchTask: waiting");
                            this.f28916c.wait();
                        } catch (InterruptedException e4) {
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }
}
