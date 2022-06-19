package p193e.p194a.p372b0.p373a.p374a;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.Window;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.C3656R;
import p1727n3.p1795i.p1802c.C26389d;
import p193e.p194a.p372b0.p430q.C8600l;
import s1.z.c.l;
/* renamed from: e.a.b0.a.a.f */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/a/f.class */
public final class DialogC8227f extends Dialog {

    /* renamed from: a */
    public final WebView f25379a;

    /* renamed from: b */
    public final View f25380b;

    /* renamed from: e.a.b0.a.a.f$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/a/f$a.class */
    public static final class View$OnClickListenerC8228a implements View.OnClickListener {
        public View$OnClickListenerC8228a() {
            DialogC8227f.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogC8227f.this.dismiss();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogC8227f(Context context) {
        super(context);
        l.e(context, AnalyticsConstants.CONTEXT);
        Window window = getWindow();
        if (window != null) {
            window.requestFeature(1);
        }
        Window window2 = getWindow();
        if (window2 != null) {
            window2.setBackgroundDrawable(new ColorDrawable(0));
        }
        setContentView(C3656R.layout.dialog_overlay_deeplink_web);
        View findViewById = findViewById(C3656R.C3658id.parent_view);
        l.d(findViewById, "findViewById(R.id.parent_view)");
        this.f25380b = findViewById;
        ((ImageView) findViewById.findViewById(C3656R.C3658id.close_layout)).setOnClickListener(new View$OnClickListenerC8228a());
        ProgressBar progressBar = (ProgressBar) findViewById.findViewById(C3656R.C3658id.progress_bar);
        View findViewById2 = findViewById.findViewById(C3656R.C3658id.web_view);
        l.d(findViewById2, "parentView.findViewById(R.id.web_view)");
        WebView webView = (WebView) findViewById2;
        this.f25379a = webView;
        l.d(progressBar, "progressBar");
        webView.setWebViewClient(new C8600l(progressBar, false, 2));
        WebSettings settings = webView.getSettings();
        l.d(settings, "webView.settings");
        settings.setJavaScriptEnabled(true);
        WebSettings settings2 = webView.getSettings();
        l.d(settings2, "webView.settings");
        settings2.setDomStorageEnabled(true);
    }

    /* renamed from: a */
    public final void m28766a() {
        ConstraintLayout constraintLayout = (ConstraintLayout) this.f25380b.findViewById(C3656R.C3658id.constraint_layout);
        C26389d c26389d = new C26389d();
        c26389d.m1966e(constraintLayout);
        View childAt = constraintLayout.getChildAt(0);
        l.d(childAt, "constraintLayout.getChildAt(0)");
        c26389d.m1961j(childAt.getId()).f73891d.f73953w = "2:3";
        c26389d.m1968c(constraintLayout, true);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
        show();
    }
}
