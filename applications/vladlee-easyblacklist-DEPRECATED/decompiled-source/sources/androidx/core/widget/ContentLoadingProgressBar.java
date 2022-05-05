package androidx.core.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/ContentLoadingProgressBar.class */
public class ContentLoadingProgressBar extends ProgressBar {

    /* renamed from: a */
    long f3177a = -1;

    /* renamed from: b */
    boolean f3178b = false;

    /* renamed from: c */
    boolean f3179c = false;

    /* renamed from: d */
    boolean f3180d = false;

    /* renamed from: e */
    private final Runnable f3181e = new RunnableC0779d(this);

    /* renamed from: f */
    private final Runnable f3182f = new RunnableC0780e(this);

    public ContentLoadingProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    /* renamed from: a */
    private void m8203a() {
        removeCallbacks(this.f3181e);
        removeCallbacks(this.f3182f);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m8203a();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m8203a();
    }
}
