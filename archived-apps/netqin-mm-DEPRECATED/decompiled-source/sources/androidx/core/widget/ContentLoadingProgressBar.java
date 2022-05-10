package androidx.core.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/ContentLoadingProgressBar.class */
public class ContentLoadingProgressBar extends ProgressBar {

    /* renamed from: a */
    public long f1148a;

    /* renamed from: b */
    public boolean f1149b;

    /* renamed from: c */
    public boolean f1150c;

    /* renamed from: d */
    public boolean f1151d = false;

    /* renamed from: e */
    public final Runnable f1152e = new RunnableC0204a();

    /* renamed from: f */
    public final Runnable f1153f = new RunnableC0205b();

    /* renamed from: androidx.core.widget.ContentLoadingProgressBar$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/ContentLoadingProgressBar$a.class */
    public class RunnableC0204a implements Runnable {
        public RunnableC0204a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ContentLoadingProgressBar contentLoadingProgressBar = ContentLoadingProgressBar.this;
            contentLoadingProgressBar.f1149b = false;
            contentLoadingProgressBar.f1148a = -1L;
            contentLoadingProgressBar.setVisibility(8);
        }
    }

    /* renamed from: androidx.core.widget.ContentLoadingProgressBar$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/ContentLoadingProgressBar$b.class */
    public class RunnableC0205b implements Runnable {
        public RunnableC0205b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ContentLoadingProgressBar contentLoadingProgressBar = ContentLoadingProgressBar.this;
            contentLoadingProgressBar.f1150c = false;
            if (!contentLoadingProgressBar.f1151d) {
                contentLoadingProgressBar.f1148a = System.currentTimeMillis();
                ContentLoadingProgressBar.this.setVisibility(0);
            }
        }
    }

    public ContentLoadingProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    /* renamed from: a */
    public final void m38555a() {
        removeCallbacks(this.f1152e);
        removeCallbacks(this.f1153f);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m38555a();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m38555a();
    }
}
