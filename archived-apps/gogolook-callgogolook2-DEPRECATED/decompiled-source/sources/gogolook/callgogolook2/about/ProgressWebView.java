package gogolook.callgogolook2.about;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.util.AttributeSet;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.AbsoluteLayout;
import android.widget.ProgressBar;
import p459j.p460a.p582w0.C14190u4;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/about/ProgressWebView.class */
public class ProgressWebView extends WebView {

    /* renamed from: a */
    public ProgressBar f10644a;

    /* renamed from: gogolook.callgogolook2.about.ProgressWebView$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/about/ProgressWebView$a.class */
    public class C4392a extends WebChromeClient {
        public C4392a() {
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            if (i == 100) {
                ProgressWebView.this.f10644a.setVisibility(8);
            } else {
                if (ProgressWebView.this.f10644a.getVisibility() == 8) {
                    ProgressWebView.this.f10644a.setVisibility(0);
                }
                ProgressWebView.this.f10644a.setProgress(i * 2);
            }
            super.onProgressChanged(webView, i);
        }
    }

    public ProgressWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10644a = new ProgressBar(context, null, 16842872);
        this.f10644a.setLayoutParams(new AbsoluteLayout.LayoutParams(-1, 15, 0, 0));
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
        shapeDrawable.getPaint().setColor(Color.parseColor("#d3d3d3"));
        this.f10644a.setProgressDrawable(new ClipDrawable(shapeDrawable, 3, 1));
        this.f10644a.setBackgroundDrawable(getResources().getDrawable(17301612));
        addView(this.f10644a);
        setWebViewClient(new WebViewClient());
        setWebChromeClient(new C4392a());
        C14190u4.m2263a(this);
    }

    @Override // android.webkit.WebView, android.view.View
    public void onScrollChanged(int i, int i2, int i3, int i4) {
        AbsoluteLayout.LayoutParams layoutParams = (AbsoluteLayout.LayoutParams) this.f10644a.getLayoutParams();
        layoutParams.x = i * 2;
        layoutParams.y = i2 * 2;
        this.f10644a.setLayoutParams(layoutParams);
        super.onScrollChanged(i, i2, i3, i4);
    }
}
