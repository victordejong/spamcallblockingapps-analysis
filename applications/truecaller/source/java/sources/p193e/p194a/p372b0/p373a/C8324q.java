package p193e.p194a.p372b0.p373a;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.view.View;
import android.view.ViewParent;
import android.view.Window;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.truecaller.common.C3656R;
import com.truecaller.common.p156ui.constant.WebViewContainerType;
import java.lang.ref.WeakReference;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1443e.p1444x.AbstractC22212i;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p373a.p374a.DialogC8227f;
import p193e.p194a.p372b0.p373a.p384f0.C8310a;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p430q.C8600l;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
/* renamed from: e.a.b0.a.q */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/q.class */
public final class C8324q implements AbstractC8323p {

    /* renamed from: a */
    public WeakReference<Dialog> f25620a;

    /* renamed from: b */
    public final f f25621b;

    /* renamed from: c */
    public final f f25622c;

    /* renamed from: d */
    public final AbstractC8432l f25623d;

    @e(c = "com.truecaller.common.ui.WebViewContainerHelperImpl$displayWebViewInContainer$2", f = "WebViewContainerHelper.kt", l = {75}, m = "invokeSuspend")
    /* renamed from: e.a.b0.a.q$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/q$a.class */
    public static final class C8325a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f25624e;

        /* renamed from: g */
        public final /* synthetic */ String f25626g;

        /* renamed from: h */
        public final /* synthetic */ Context f25627h;

        /* renamed from: i */
        public final /* synthetic */ WebViewContainerType f25628i;

        /* renamed from: j */
        public final /* synthetic */ String f25629j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8325a(String str, Context context, WebViewContainerType webViewContainerType, String str2, d dVar) {
            super(2, dVar);
            C8324q.this = r5;
            this.f25626g = str;
            this.f25627h = context;
            this.f25628i = webViewContainerType;
            this.f25629j = str2;
        }

        /* renamed from: i */
        public final d<s> m28674i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8325a(this.f25626g, this.f25627h, this.f25628i, this.f25629j, dVar);
        }

        /* renamed from: k */
        public final Object m28673k(Object obj, Object obj2) {
            return m28674i(obj, (d) obj2).m28672s(s.a);
        }

        /* renamed from: s */
        public final Object m28672s(Object obj) {
            e.m.a.g.e.d dVar;
            Resources system;
            a aVar = a.a;
            int i = this.f25624e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C8324q c8324q = C8324q.this;
                String str = this.f25626g;
                this.f25624e = 1;
                Object m28675c = c8324q.m28675c(str, this);
                obj = m28675c;
                if (m28675c == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            String str2 = (String) obj;
            C8324q c8324q2 = C8324q.this;
            C8324q c8324q3 = C8324q.this;
            Context context = this.f25627h;
            WebViewContainerType webViewContainerType = this.f25628i;
            String str3 = this.f25629j;
            Objects.requireNonNull(c8324q3);
            int ordinal = webViewContainerType.ordinal();
            if (ordinal == 0) {
                e.m.a.g.e.d c8310a = new C8310a(context);
                l.e(str2, "url");
                c8310a.setContentView(C3656R.layout.view_bottom_sheet_deeplink_web);
                View findViewById = c8310a.findViewById(C3656R.C3658id.parent_view);
                dVar = c8310a;
                if (findViewById != null) {
                    l.d(findViewById, "findViewById<View>(R.id.parent_view) ?: return");
                    ProgressBar progressBar = (ProgressBar) findViewById.findViewById(C3656R.C3658id.progress_bar);
                    WebView webView = (WebView) findViewById.findViewById(C3656R.C3658id.web_view);
                    l.d(webView, "webView");
                    l.d(progressBar, "progressBar");
                    webView.setWebViewClient(new C8600l(progressBar, false, 2));
                    WebSettings settings = webView.getSettings();
                    l.d(settings, "webView.settings");
                    settings.setJavaScriptEnabled(true);
                    WebSettings settings2 = webView.getSettings();
                    l.d(settings2, "webView.settings");
                    settings2.setDomStorageEnabled(true);
                    webView.loadUrl(str2);
                    ViewParent parent = findViewById.getParent();
                    Objects.requireNonNull(parent, "null cannot be cast to non-null type android.view.View");
                    BottomSheetBehavior H = BottomSheetBehavior.H((View) parent);
                    l.d(H, "BottomSheetBehavior.from…arentView.parent as View)");
                    l.d(Resources.getSystem(), "Resources.getSystem()");
                    H.L((int) (system.getDisplayMetrics().heightPixels * 0.4d));
                    c8310a.show();
                    dVar = c8310a;
                }
            } else if (ordinal == 1) {
                dVar = new DialogC8227f(context);
                l.e(str2, "url");
                dVar.f25379a.getLayoutParams().height = -1;
                dVar.f25379a.loadUrl(str2);
                Window window = dVar.getWindow();
                if (window != null) {
                    window.setLayout(-1, -1);
                }
                dVar.show();
            } else if (ordinal != 2) {
                throw new s1.i();
            } else {
                dVar = new DialogC8227f(context);
                boolean z = true;
                if (str3 != null) {
                    z = str3.length() == 0;
                }
                if (!z) {
                    l.e(str3, "content");
                    dVar.f25379a.loadData(str3, "text/html", AbstractC22212i.PROTOCOL_CHARSET);
                    dVar.m28766a();
                } else {
                    l.e(str2, "url");
                    dVar.f25379a.loadUrl(str2);
                    dVar.m28766a();
                }
            }
            c8324q2.f25620a = new WeakReference<>(dVar);
            return s.a;
        }
    }

    @e(c = "com.truecaller.common.ui.WebViewContainerHelperImpl", f = "WebViewContainerHelper.kt", l = {83}, m = "getAuthorisedUrl")
    /* renamed from: e.a.b0.a.q$b */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/q$b.class */
    public static final class C8326b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f25630d;

        /* renamed from: e */
        public int f25631e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8326b(d dVar) {
            super(dVar);
            C8324q.this = r4;
        }

        /* renamed from: s */
        public final Object m28671s(Object obj) {
            this.f25630d = obj;
            this.f25631e |= Integer.MIN_VALUE;
            return C8324q.this.m28675c(null, this);
        }
    }

    @e(c = "com.truecaller.common.ui.WebViewContainerHelperImpl$getAuthorisedUrl$2", f = "WebViewContainerHelper.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.b0.a.q$c */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/q$c.class */
    public static final class C8327c extends i implements p<i0, d<? super String>, Object> {

        /* renamed from: f */
        public final /* synthetic */ c0 f25634f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8327c(c0 c0Var, d dVar) {
            super(2, dVar);
            C8324q.this = r5;
            this.f25634f = c0Var;
        }

        /* renamed from: i */
        public final d<s> m28670i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8327c(this.f25634f, dVar);
        }

        /* renamed from: k */
        public final Object m28669k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C8324q c8324q = C8324q.this;
            c0 c0Var = this.f25634f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return ((Uri) c0Var.a).buildUpon().appendQueryParameter("at", c8324q.f25623d.mo28569o()).build().toString();
        }

        /* renamed from: s */
        public final Object m28668s(Object obj) {
            C25225a.m3932a3(obj);
            return ((Uri) this.f25634f.a).buildUpon().appendQueryParameter("at", C8324q.this.f25623d.mo28569o()).build().toString();
        }
    }

    @Inject
    public C8324q(@Named("UI") f fVar, @Named("IO") f fVar2, AbstractC8432l abstractC8432l) {
        l.e(fVar, "contextUI");
        l.e(fVar2, "asyncContextIO");
        l.e(abstractC8432l, "accountManager");
        this.f25621b = fVar;
        this.f25622c = fVar2;
        this.f25623d = abstractC8432l;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00af, code lost:
        if (r15 != null) goto L27;
     */
    @Override // p193e.p194a.p372b0.p373a.AbstractC8323p
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo28677a(android.content.Context r13, p1727n3.p1868v.AbstractC26992b0 r14, android.content.Intent r15) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p373a.C8324q.mo28677a(android.content.Context, n3.v.b0, android.content.Intent):void");
    }

    @Override // p193e.p194a.p372b0.p373a.AbstractC8323p
    /* renamed from: b */
    public Intent mo28676b(String str, WebViewContainerType webViewContainerType) {
        l.e(str, "url");
        l.e(webViewContainerType, "type");
        Intent intent = new Intent();
        intent.putExtra("extra_btm_dlg_url", str);
        intent.putExtra("extra_btm_dlg_type", webViewContainerType.getId());
        return intent;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m28675c(java.lang.String r7, s1.w.d<? super java.lang.String> r8) {
        /*
            Method dump skipped, instructions count: 185
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p373a.C8324q.m28675c(java.lang.String, s1.w.d):java.lang.Object");
    }
}
