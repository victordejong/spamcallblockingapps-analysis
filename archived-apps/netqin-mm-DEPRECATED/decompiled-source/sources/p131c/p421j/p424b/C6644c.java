package p131c.p421j.p424b;

import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Views;
import java.lang.ref.WeakReference;
/* renamed from: c.j.b.c */
/* loaded from: classes2-dex2jar.jar:c/j/b/c.class */
public class C6644c {

    /* renamed from: c */
    public final View f20518c;

    /* renamed from: d */
    public final View f20519d;

    /* renamed from: e */
    public final C6646b f20520e;

    /* renamed from: f */
    public AbstractC6648d f20521f;

    /* renamed from: i */
    public boolean f20524i;

    /* renamed from: j */
    public boolean f20525j;

    /* renamed from: h */
    public final Handler f20523h = new Handler();

    /* renamed from: g */
    public final RunnableC6647c f20522g = new RunnableC6647c();
    @VisibleForTesting

    /* renamed from: a */
    public final ViewTreeObserver.OnPreDrawListener f20516a = new ViewTreeObserver$OnPreDrawListenerC6645a();
    @VisibleForTesting

    /* renamed from: b */
    public WeakReference<ViewTreeObserver> f20517b = new WeakReference<>(null);

    /* renamed from: c.j.b.c$a */
    /* loaded from: classes2-dex2jar.jar:c/j/b/c$a.class */
    public class ViewTreeObserver$OnPreDrawListenerC6645a implements ViewTreeObserver.OnPreDrawListener {
        public ViewTreeObserver$OnPreDrawListenerC6645a() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            C6644c.this.m20205b();
            return true;
        }
    }

    /* renamed from: c.j.b.c$b */
    /* loaded from: classes2-dex2jar.jar:c/j/b/c$b.class */
    public static class C6646b {

        /* renamed from: a */
        public int f20527a;

        /* renamed from: b */
        public int f20528b;

        /* renamed from: c */
        public long f20529c = Long.MIN_VALUE;

        /* renamed from: d */
        public final Rect f20530d = new Rect();

        public C6646b(int i, int i2) {
            this.f20527a = i;
            this.f20528b = i2;
        }

        /* renamed from: a */
        public boolean m20199a() {
            return this.f20529c != Long.MIN_VALUE;
        }

        /* renamed from: a */
        public boolean m20198a(View view, View view2) {
            boolean z = false;
            if (view2 != null) {
                z = false;
                if (view2.getVisibility() == 0) {
                    if (view.getParent() == null) {
                        z = false;
                    } else {
                        z = false;
                        if (view2.getWidth() > 0) {
                            if (view2.getHeight() <= 0) {
                                z = false;
                            } else if (!view2.getGlobalVisibleRect(this.f20530d)) {
                                return false;
                            } else {
                                z = false;
                                if (Dips.pixelsToIntDips(this.f20530d.width(), view2.getContext()) * Dips.pixelsToIntDips(this.f20530d.height(), view2.getContext()) >= this.f20527a) {
                                    z = true;
                                }
                            }
                        }
                    }
                }
            }
            return z;
        }

        /* renamed from: b */
        public boolean m20197b() {
            boolean z = false;
            if (!m20199a()) {
                return false;
            }
            if (SystemClock.uptimeMillis() - this.f20529c >= this.f20528b) {
                z = true;
            }
            return z;
        }

        /* renamed from: c */
        public void m20196c() {
            this.f20529c = SystemClock.uptimeMillis();
        }
    }

    /* renamed from: c.j.b.c$c */
    /* loaded from: classes2-dex2jar.jar:c/j/b/c$c.class */
    public class RunnableC6647c implements Runnable {
        public RunnableC6647c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!C6644c.this.f20525j) {
                C6644c.this.f20524i = false;
                if (C6644c.this.f20520e.m20198a(C6644c.this.f20519d, C6644c.this.f20518c)) {
                    if (!C6644c.this.f20520e.m20199a()) {
                        C6644c.this.f20520e.m20196c();
                    }
                    if (C6644c.this.f20520e.m20197b() && C6644c.this.f20521f != null) {
                        C6644c.this.f20521f.onVisibilityChanged();
                        C6644c.this.f20525j = true;
                    }
                }
                if (!C6644c.this.f20525j) {
                    C6644c.this.m20205b();
                }
            }
        }
    }

    /* renamed from: c.j.b.c$d */
    /* loaded from: classes2-dex2jar.jar:c/j/b/c$d.class */
    public interface AbstractC6648d {
        void onVisibilityChanged();
    }

    @VisibleForTesting
    public C6644c(Context context, View view, View view2, int i, int i2) {
        Preconditions.checkNotNull(view);
        Preconditions.checkNotNull(view2);
        this.f20519d = view;
        this.f20518c = view2;
        this.f20520e = new C6646b(i, i2);
        m20209a(context, this.f20518c);
    }

    /* renamed from: a */
    public void m20210a() {
        this.f20523h.removeMessages(0);
        this.f20524i = false;
        ViewTreeObserver viewTreeObserver = this.f20517b.get();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this.f20516a);
        }
        this.f20517b.clear();
        this.f20521f = null;
    }

    /* renamed from: a */
    public final void m20209a(Context context, View view) {
        ViewTreeObserver viewTreeObserver = this.f20517b.get();
        if (viewTreeObserver == null || !viewTreeObserver.isAlive()) {
            View topmostView = Views.getTopmostView(context, view);
            if (topmostView == null) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to set Visibility Tracker due to no available root view.");
                return;
            }
            ViewTreeObserver viewTreeObserver2 = topmostView.getViewTreeObserver();
            if (!viewTreeObserver2.isAlive()) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Visibility Tracker was unable to track views because the root view tree observer was not alive");
                return;
            }
            this.f20517b = new WeakReference<>(viewTreeObserver2);
            viewTreeObserver2.addOnPreDrawListener(this.f20516a);
        }
    }

    /* renamed from: a */
    public void m20208a(AbstractC6648d dVar) {
        this.f20521f = dVar;
    }

    /* renamed from: b */
    public void m20205b() {
        if (!this.f20524i) {
            this.f20524i = true;
            this.f20523h.postDelayed(this.f20522g, 100L);
        }
    }
}
