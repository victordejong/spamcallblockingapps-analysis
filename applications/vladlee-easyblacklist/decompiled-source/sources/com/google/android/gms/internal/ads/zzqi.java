package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.util.PlatformVersion;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzqi.class */
public final class zzqi extends Thread {

    /* renamed from: a */
    private boolean f15384a;

    /* renamed from: b */
    private boolean f15385b;

    /* renamed from: c */
    private boolean f15386c;

    /* renamed from: d */
    private final Object f15387d;

    /* renamed from: e */
    private final zzqf f15388e;

    /* renamed from: f */
    private final int f15389f;

    /* renamed from: g */
    private final int f15390g;

    /* renamed from: h */
    private final int f15391h;

    /* renamed from: i */
    private final int f15392i;

    /* renamed from: j */
    private final int f15393j;

    /* renamed from: k */
    private final int f15394k;

    /* renamed from: l */
    private final int f15395l;

    /* renamed from: m */
    private final int f15396m;

    /* renamed from: n */
    private final String f15397n;

    /* renamed from: o */
    private final boolean f15398o;

    /* renamed from: p */
    private final boolean f15399p;

    /* renamed from: q */
    private final boolean f15400q;

    public zzqi() {
        this(new zzqf());
    }

    private zzqi(zzqf zzqfVar) {
        this.f15384a = false;
        this.f15385b = false;
        this.f15386c = false;
        this.f15388e = zzqfVar;
        this.f15387d = new Object();
        this.f15390g = zzaaw.zzcta.get().intValue();
        this.f15391h = zzaaw.zzcsx.get().intValue();
        this.f15392i = zzaaw.zzctb.get().intValue();
        this.f15393j = zzaaw.zzcsz.get().intValue();
        this.f15394k = ((Integer) zzve.zzoy().zzd(zzzn.zzchr)).intValue();
        this.f15395l = ((Integer) zzve.zzoy().zzd(zzzn.zzchs)).intValue();
        this.f15396m = ((Integer) zzve.zzoy().zzd(zzzn.zzcht)).intValue();
        this.f15389f = zzaaw.zzctc.get().intValue();
        this.f15397n = (String) zzve.zzoy().zzd(zzzn.zzchv);
        this.f15398o = ((Boolean) zzve.zzoy().zzd(zzzn.zzchw)).booleanValue();
        this.f15399p = ((Boolean) zzve.zzoy().zzd(zzzn.zzchx)).booleanValue();
        this.f15400q = ((Boolean) zzve.zzoy().zzd(zzzn.zzchy)).booleanValue();
        setName("ContentFetchTask");
    }

    /* renamed from: a */
    private final apz m3103a(View view, zzqc zzqcVar) {
        boolean z;
        if (view == null) {
            return new apz(0, 0);
        }
        boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
        if ((view instanceof TextView) && !(view instanceof EditText)) {
            CharSequence text = ((TextView) view).getText();
            if (TextUtils.isEmpty(text)) {
                return new apz(0, 0);
            }
            zzqcVar.zzb(text.toString(), globalVisibleRect, view.getX(), view.getY(), view.getWidth(), view.getHeight());
            return new apz(1, 0);
        } else if ((view instanceof WebView) && !(view instanceof zzbdi)) {
            WebView webView = (WebView) view;
            if (!PlatformVersion.isAtLeastKitKat()) {
                z = false;
            } else {
                zzqcVar.zzlx();
                webView.post(new apx(this, zzqcVar, webView, globalVisibleRect));
                z = true;
            }
            return z ? new apz(0, 1) : new apz(0, 0);
        } else if (!(view instanceof ViewGroup)) {
            return new apz(0, 0);
        } else {
            ViewGroup viewGroup = (ViewGroup) view;
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                apz a = m3103a(viewGroup.getChildAt(i3), zzqcVar);
                i += a.f8155a;
                i2 += a.f8156b;
            }
            return new apz(i, i2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x006c, code lost:
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0074, code lost:
        if (r0.importance != 100) goto L_0x00a7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0078, code lost:
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007e, code lost:
        if (r0.inKeyguardRestrictedInputMode() != false) goto L_0x00a7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0081, code lost:
        r0 = (android.os.PowerManager) r0.getSystemService("power");
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x008d, code lost:
        if (r0 != null) goto L_0x0096;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0090, code lost:
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0096, code lost:
        r10 = r0.isScreenOn();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x009d, code lost:
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a1, code lost:
        if (r10 == false) goto L_0x00a7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a4, code lost:
        r8 = true;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m3105a() {
        /*
            r0 = 0
            r4 = r0
            com.google.android.gms.internal.ads.zzqe r0 = com.google.android.gms.ads.internal.zzq.zzkt()     // Catch: all -> 0x00aa
            android.content.Context r0 = r0.getContext()     // Catch: all -> 0x00aa
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L_0x000f
            r0 = 0
            return r0
        L_0x000f:
            r0 = r5
            java.lang.String r1 = "activity"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: all -> 0x00aa
            android.app.ActivityManager r0 = (android.app.ActivityManager) r0     // Catch: all -> 0x00aa
            r6 = r0
            r0 = r5
            java.lang.String r1 = "keyguard"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: all -> 0x00aa
            android.app.KeyguardManager r0 = (android.app.KeyguardManager) r0     // Catch: all -> 0x00aa
            r7 = r0
            r0 = r4
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L_0x00a7
            r0 = r7
            if (r0 != 0) goto L_0x0036
            r0 = r4
            r8 = r0
            goto L_0x00a7
        L_0x0036:
            r0 = r6
            java.util.List r0 = r0.getRunningAppProcesses()     // Catch: all -> 0x00aa
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0041
            r0 = 0
            return r0
        L_0x0041:
            r0 = r6
            java.util.Iterator r0 = r0.iterator()     // Catch: all -> 0x00aa
            r9 = r0
        L_0x0049:
            r0 = r4
            r8 = r0
            r0 = r9
            boolean r0 = r0.hasNext()     // Catch: all -> 0x00aa
            if (r0 == 0) goto L_0x00a7
            r0 = r9
            java.lang.Object r0 = r0.next()     // Catch: all -> 0x00aa
            android.app.ActivityManager$RunningAppProcessInfo r0 = (android.app.ActivityManager.RunningAppProcessInfo) r0     // Catch: all -> 0x00aa
            r6 = r0
            int r0 = android.os.Process.myPid()     // Catch: all -> 0x00aa
            r1 = r6
            int r1 = r1.pid     // Catch: all -> 0x00aa
            if (r0 != r1) goto L_0x0049
            r0 = r4
            r8 = r0
            r0 = r6
            int r0 = r0.importance     // Catch: all -> 0x00aa
            r1 = 100
            if (r0 != r1) goto L_0x00a7
            r0 = r4
            r8 = r0
            r0 = r7
            boolean r0 = r0.inKeyguardRestrictedInputMode()     // Catch: all -> 0x00aa
            if (r0 != 0) goto L_0x00a7
            r0 = r5
            java.lang.String r1 = "power"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: all -> 0x00aa
            android.os.PowerManager r0 = (android.os.PowerManager) r0     // Catch: all -> 0x00aa
            r7 = r0
            r0 = r7
            if (r0 != 0) goto L_0x0096
            r0 = 0
            r10 = r0
            goto L_0x009c
        L_0x0096:
            r0 = r7
            boolean r0 = r0.isScreenOn()     // Catch: all -> 0x00aa
            r10 = r0
        L_0x009c:
            r0 = r4
            r8 = r0
            r0 = r10
            if (r0 == 0) goto L_0x00a7
            r0 = 1
            r8 = r0
        L_0x00a7:
            r0 = r8
            return r0
        L_0x00aa:
            r7 = move-exception
            com.google.android.gms.internal.ads.zzave r0 = com.google.android.gms.ads.internal.zzq.zzku()
            r1 = r7
            java.lang.String r2 = "ContentFetchTask.isInForeground"
            r0.zza(r1, r2)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqi.m3105a():boolean");
    }

    /* renamed from: b */
    private final void m3101b() {
        synchronized (this.f15387d) {
            this.f15385b = true;
            boolean z = this.f15385b;
            StringBuilder sb = new StringBuilder(42);
            sb.append("ContentFetchThread: paused, mPause = ");
            sb.append(z);
            zzavs.zzea(sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m3104a(View view) {
        try {
            zzqc zzqcVar = new zzqc(this.f15390g, this.f15391h, this.f15392i, this.f15393j, this.f15394k, this.f15395l, this.f15396m, this.f15399p);
            Context context = zzq.zzkt().getContext();
            if (context != null && !TextUtils.isEmpty(this.f15397n)) {
                String str = (String) view.getTag(context.getResources().getIdentifier((String) zzve.zzoy().zzd(zzzn.zzchu), "id", context.getPackageName()));
                if (str != null && str.equals(this.f15397n)) {
                    return;
                }
            }
            apz a = m3103a(view, zzqcVar);
            zzqcVar.zzlz();
            if (a.f8155a != 0 || a.f8156b != 0) {
                if (a.f8156b != 0 || zzqcVar.m3109a() != 0) {
                    if (a.f8156b != 0 || !this.f15388e.zza(zzqcVar)) {
                        this.f15388e.zzc(zzqcVar);
                    }
                }
            }
        } catch (Exception e) {
            zzavs.zzc("Exception in fetchContentOnUIThread", e);
            zzq.zzku().zza(e, "ContentFetchTask.fetchContent");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m3102a(zzqc zzqcVar, WebView webView, String str, boolean z) {
        zzqcVar.zzlw();
        try {
            if (!TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString("text");
                if (this.f15398o || TextUtils.isEmpty(webView.getTitle())) {
                    zzqcVar.zza(optString, z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                } else {
                    String title = webView.getTitle();
                    StringBuilder sb = new StringBuilder(String.valueOf(title).length() + 1 + String.valueOf(optString).length());
                    sb.append(title);
                    sb.append("\n");
                    sb.append(optString);
                    zzqcVar.zza(sb.toString(), z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                }
            }
            if (zzqcVar.zzlr()) {
                this.f15388e.zzb(zzqcVar);
            }
        } catch (JSONException e) {
            zzavs.zzea("Json string may be malformed.");
        } catch (Throwable th) {
            zzavs.zzb("Failed to get webview content.", th);
            zzq.zzku().zza(th, "ContentFetchTask.processWebViewContent");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00b4 A[EXC_TOP_SPLITTER, LOOP:0: B:47:0x00b4->B:56:0x00b4, LOOP_START, SYNTHETIC] */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqi.run():void");
    }

    public final void wakeup() {
        synchronized (this.f15387d) {
            this.f15385b = false;
            this.f15387d.notifyAll();
            zzavs.zzea("ContentFetchThread: wakeup");
        }
    }

    public final void zzmb() {
        synchronized (this.f15387d) {
            if (this.f15384a) {
                zzavs.zzea("Content hash thread already started, quiting...");
                return;
            }
            this.f15384a = true;
            start();
        }
    }

    public final zzqc zzmd() {
        return this.f15388e.zzo(this.f15400q);
    }

    public final boolean zzmf() {
        return this.f15385b;
    }
}
