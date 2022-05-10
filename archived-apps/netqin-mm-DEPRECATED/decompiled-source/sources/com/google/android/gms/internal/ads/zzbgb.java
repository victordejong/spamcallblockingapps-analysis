package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.os.Message;
import android.view.View;
import android.view.WindowManager;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.WebChromeClient;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.PlatformVersion;
import p131c.p161d.p170b.p224d.p252g.p253a.C3574g9;
import p131c.p161d.p170b.p224d.p252g.p253a.DialogInterface$OnCancelListenerC3384b9;
import p131c.p161d.p170b.p224d.p252g.p253a.DialogInterface$OnCancelListenerC3537f9;
import p131c.p161d.p170b.p224d.p252g.p253a.DialogInterface$OnClickListenerC3426c9;
import p131c.p161d.p170b.p224d.p252g.p253a.DialogInterface$OnClickListenerC3463d9;
import p131c.p161d.p170b.p224d.p252g.p253a.DialogInterface$OnClickListenerC3500e9;
import p131c.p161d.p170b.p224d.p252g.p253a.DialogInterface$OnClickListenerC3611h9;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbgb.class */
public final class zzbgb extends WebChromeClient {

    /* renamed from: a */
    public final zzbgj f24953a;

    public zzbgb(zzbgj zzbgjVar) {
        this.f24953a = zzbgjVar;
    }

    /* renamed from: a */
    public static Context m15635a(WebView webView) {
        if (!(webView instanceof zzbgj)) {
            return webView.getContext();
        }
        zzbgj zzbgjVar = (zzbgj) webView;
        Activity b = zzbgjVar.mo15528b();
        return b != null ? b : zzbgjVar.getContext();
    }

    /* renamed from: a */
    public final boolean m15636a(Context context, String str, String str2, String str3, String str4, JsResult jsResult, JsPromptResult jsPromptResult, boolean z) {
        zza g;
        try {
            if (this.f24953a == null || this.f24953a.mo15543z() == null || this.f24953a.mo15543z().mo15472g() == null || (g = this.f24953a.mo15543z().mo15472g()) == null || g.m17995c()) {
                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                builder.setTitle(str2);
                if (z) {
                    LinearLayout linearLayout = new LinearLayout(context);
                    linearLayout.setOrientation(1);
                    TextView textView = new TextView(context);
                    textView.setText(str3);
                    EditText editText = new EditText(context);
                    editText.setText(str4);
                    linearLayout.addView(textView);
                    linearLayout.addView(editText);
                    builder.setView(linearLayout).setPositiveButton(17039370, new DialogInterface$OnClickListenerC3611h9(jsPromptResult, editText)).setNegativeButton(17039360, new DialogInterface$OnClickListenerC3500e9(jsPromptResult)).setOnCancelListener(new DialogInterface$OnCancelListenerC3537f9(jsPromptResult)).create().show();
                    return true;
                }
                builder.setMessage(str3).setPositiveButton(17039370, new DialogInterface$OnClickListenerC3426c9(jsResult)).setNegativeButton(17039360, new DialogInterface$OnClickListenerC3463d9(jsResult)).setOnCancelListener(new DialogInterface$OnCancelListenerC3384b9(jsResult)).create().show();
                return true;
            }
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 11 + String.valueOf(str3).length());
            sb.append("window.");
            sb.append(str);
            sb.append("('");
            sb.append(str3);
            sb.append("')");
            g.m17997a(sb.toString());
            return false;
        } catch (WindowManager.BadTokenException e) {
            zzbbq.m15853c("Fail to display Dialog.", e);
            return true;
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onCloseWindow(WebView webView) {
        if (!(webView instanceof zzbgj)) {
            zzbbq.m15852d("Tried to close a WebView that wasn't an AdWebView.");
            return;
        }
        zze O = ((zzbgj) webView).mo15595O();
        if (O == null) {
            zzbbq.m15852d("Tried to close an AdWebView not associated with an overlay.");
        } else {
            O.m18018Q1();
        }
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String message = consoleMessage.message();
        String sourceId = consoleMessage.sourceId();
        int lineNumber = consoleMessage.lineNumber();
        StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 19 + String.valueOf(sourceId).length());
        sb.append("JS: ");
        sb.append(message);
        sb.append(" (");
        sb.append(sourceId);
        sb.append(":");
        sb.append(lineNumber);
        sb.append(")");
        String sb2 = sb.toString();
        if (sb2.contains("Application Cache")) {
            return super.onConsoleMessage(consoleMessage);
        }
        int i = C3574g9.f13023a[consoleMessage.messageLevel().ordinal()];
        if (i == 1) {
            zzbbq.m15856b(sb2);
        } else if (i == 2) {
            zzbbq.m15852d(sb2);
        } else if (i == 3 || i == 4) {
            zzbbq.m15854c(sb2);
        } else if (i != 5) {
            zzbbq.m15854c(sb2);
        } else {
            zzbbq.m15858a(sb2);
        }
        return super.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        WebView.WebViewTransport webViewTransport = (WebView.WebViewTransport) message.obj;
        WebView webView2 = new WebView(webView.getContext());
        if (this.f24953a.mo15605D() != null) {
            webView2.setWebViewClient(this.f24953a.mo15605D());
        }
        webViewTransport.setWebView(webView2);
        message.sendToTarget();
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002c, code lost:
        if (r0 <= 0) goto L_0x0071;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // android.webkit.WebChromeClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onExceededDatabaseQuota(java.lang.String r8, java.lang.String r9, long r10, long r12, long r14, android.webkit.WebStorage.QuotaUpdater r16) {
        /*
            r7 = this;
            r0 = 5242880(0x500000, double:2.590327E-317)
            r1 = r14
            long r0 = r0 - r1
            r17 = r0
            r0 = r17
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0018
            r0 = r16
            r1 = r10
            r0.updateQuota(r1)
            return
        L_0x0018:
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0038
            r0 = r12
            r1 = r17
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0032
            r0 = r12
            r1 = 1048576(0x100000, double:5.180654E-318)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0032
            goto L_0x0071
        L_0x0032:
            r0 = 0
            r12 = r0
            goto L_0x0071
        L_0x0038:
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0054
            r0 = r10
            r1 = 131072(0x20000, double:6.47582E-319)
            r2 = r17
            long r1 = java.lang.Math.min(r1, r2)
            long r0 = r0 + r1
            r1 = 1048576(0x100000, double:5.180654E-318)
            long r0 = java.lang.Math.min(r0, r1)
            r14 = r0
            goto L_0x006d
        L_0x0054:
            r0 = r10
            r14 = r0
            r0 = r12
            r1 = 1048576(0x100000, double:5.180654E-318)
            r2 = r10
            long r1 = r1 - r2
            r2 = r17
            long r1 = java.lang.Math.min(r1, r2)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x006d
            r0 = r10
            r1 = r12
            long r0 = r0 + r1
            r14 = r0
        L_0x006d:
            r0 = r14
            r12 = r0
        L_0x0071:
            r0 = r16
            r1 = r12
            r0.updateQuota(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbgb.onExceededDatabaseQuota(java.lang.String, java.lang.String, long, long, long, android.webkit.WebStorage$QuotaUpdater):void");
    }

    @Override // android.webkit.WebChromeClient
    public final void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        boolean z;
        if (callback != null) {
            zzp.m17969c();
            if (!zzayu.m16111b(this.f24953a.getContext(), "android.permission.ACCESS_FINE_LOCATION")) {
                zzp.m17969c();
                if (!zzayu.m16111b(this.f24953a.getContext(), "android.permission.ACCESS_COARSE_LOCATION")) {
                    z = false;
                    callback.invoke(str, z, true);
                }
            }
            z = true;
            callback.invoke(str, z, true);
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onHideCustomView() {
        zze O = this.f24953a.mo15595O();
        if (O == null) {
            zzbbq.m15852d("Could not get ad overlay when hiding custom view.");
        } else {
            O.m18017T1();
        }
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return m15636a(m15635a(webView), "alert", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        return m15636a(m15635a(webView), "onBeforeUnload", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        return m15636a(m15635a(webView), "confirm", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        return m15636a(m15635a(webView), "prompt", str, str2, str3, null, jsPromptResult, true);
    }

    @Override // android.webkit.WebChromeClient
    public final void onPermissionRequest(PermissionRequest permissionRequest) {
        if (!PlatformVersion.m17060h() || zzadh.f24015a.mo16862a().booleanValue()) {
            super.onPermissionRequest(permissionRequest);
            return;
        }
        zzbgj zzbgjVar = this.f24953a;
        if (zzbgjVar == null || zzbgjVar.mo15543z() == null || this.f24953a.mo15543z().mo15479c() == null) {
            super.onPermissionRequest(permissionRequest);
            return;
        }
        String[] a = this.f24953a.mo15543z().mo15479c().mo16262a(permissionRequest.getResources());
        if (a.length > 0) {
            permissionRequest.grant(a);
        } else {
            permissionRequest.deny();
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onReachedMaxAppCacheSize(long j, long j2, WebStorage.QuotaUpdater quotaUpdater) {
        long j3 = j + 131072;
        if (5242880 - j2 < j3) {
            quotaUpdater.updateQuota(0L);
        } else {
            quotaUpdater.updateQuota(j3);
        }
    }

    @Override // android.webkit.WebChromeClient
    @Deprecated
    public final void onShowCustomView(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
        zze O = this.f24953a.mo15595O();
        if (O == null) {
            zzbbq.m15852d("Could not get ad overlay when showing custom view.");
            customViewCallback.onCustomViewHidden();
            return;
        }
        O.m18015a(view, customViewCallback);
        O.m18009f(i);
    }

    @Override // android.webkit.WebChromeClient
    public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        onShowCustomView(view, -1, customViewCallback);
    }
}
