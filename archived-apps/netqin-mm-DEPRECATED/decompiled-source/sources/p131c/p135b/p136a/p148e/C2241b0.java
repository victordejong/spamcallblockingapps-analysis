package p131c.p135b.p136a.p148e;

import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import com.applovin.mediation.ads.MaxAdView;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
import p131c.p135b.p136a.p143d.C2135c;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
/* renamed from: c.b.a.e.b0 */
/* loaded from: classes-dex2jar.jar:c/b/a/e/b0.class */
public class C2241b0 {

    /* renamed from: a */
    public final C2341l f8418a;

    /* renamed from: e */
    public final Runnable f8422e;

    /* renamed from: i */
    public int f8426i;

    /* renamed from: j */
    public long f8427j;

    /* renamed from: b */
    public final Object f8419b = new Object();

    /* renamed from: c */
    public final Rect f8420c = new Rect();

    /* renamed from: g */
    public WeakReference<ViewTreeObserver> f8424g = new WeakReference<>(null);

    /* renamed from: h */
    public WeakReference<View> f8425h = new WeakReference<>(null);

    /* renamed from: k */
    public long f8428k = Long.MIN_VALUE;

    /* renamed from: d */
    public final Handler f8421d = new Handler(Looper.getMainLooper());

    /* renamed from: f */
    public final ViewTreeObserver.OnPreDrawListener f8423f = new ViewTreeObserver$OnPreDrawListenerC2243b();

    /* renamed from: c.b.a.e.b0$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/b0$a.class */
    public class RunnableC2242a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ WeakReference f8429a;

        /* renamed from: b */
        public final /* synthetic */ WeakReference f8430b;

        public RunnableC2242a(WeakReference weakReference, WeakReference weakReference2) {
            this.f8429a = weakReference;
            this.f8430b = weakReference2;
        }

        @Override // java.lang.Runnable
        public void run() {
            MaxAdView maxAdView = (MaxAdView) this.f8429a.get();
            View view = (View) C2241b0.this.f8425h.get();
            if (maxAdView != null && view != null) {
                if (C2241b0.this.m30665b(maxAdView, view)) {
                    C2241b0.this.m30672a();
                    AbstractC2244c cVar = (AbstractC2244c) this.f8430b.get();
                    if (cVar != null) {
                        cVar.onLogVisibilityImpression();
                        return;
                    }
                    return;
                }
                C2241b0.this.m30666b();
            }
        }
    }

    /* renamed from: c.b.a.e.b0$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/b0$b.class */
    public class ViewTreeObserver$OnPreDrawListenerC2243b implements ViewTreeObserver.OnPreDrawListener {
        public ViewTreeObserver$OnPreDrawListenerC2243b() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            C2241b0.this.m30666b();
            C2241b0.this.m30663c();
            return true;
        }
    }

    /* renamed from: c.b.a.e.b0$c */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/b0$c.class */
    public interface AbstractC2244c {
        void onLogVisibilityImpression();
    }

    public C2241b0(MaxAdView maxAdView, C2341l lVar, AbstractC2244c cVar) {
        this.f8418a = lVar;
        this.f8422e = new RunnableC2242a(new WeakReference(maxAdView), new WeakReference(cVar));
    }

    /* renamed from: a */
    public void m30672a() {
        synchronized (this.f8419b) {
            this.f8421d.removeMessages(0);
            m30663c();
            this.f8428k = Long.MIN_VALUE;
            this.f8425h.clear();
        }
    }

    /* renamed from: a */
    public final void m30671a(Context context, View view) {
        View a = AbstractC2426r.m29822a(context, view);
        if (a == null) {
            this.f8418a.m30262d0().m30044b("VisibilityTracker", "Unable to set view tree observer due to no root view.");
            return;
        }
        ViewTreeObserver viewTreeObserver = a.getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            this.f8418a.m30262d0().m30040d("VisibilityTracker", "Unable to set view tree observer since the view tree observer is not alive.");
            return;
        }
        this.f8424g = new WeakReference<>(viewTreeObserver);
        viewTreeObserver.addOnPreDrawListener(this.f8423f);
    }

    /* renamed from: a */
    public void m30670a(Context context, C2135c.C2138c cVar) {
        synchronized (this.f8419b) {
            m30672a();
            this.f8425h = new WeakReference<>(cVar.m30950y());
            this.f8426i = cVar.m30958D();
            this.f8427j = cVar.m30956F();
            m30671a(context, this.f8425h.get());
        }
    }

    /* renamed from: a */
    public final boolean m30669a(View view, View view2) {
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
                        } else if (!view2.getGlobalVisibleRect(this.f8420c)) {
                            return false;
                        } else {
                            z = false;
                            if (AppLovinSdkUtils.pxToDp(view2.getContext(), this.f8420c.width()) * AppLovinSdkUtils.pxToDp(view2.getContext(), this.f8420c.height()) >= this.f8426i) {
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
    public final void m30666b() {
        this.f8421d.postDelayed(this.f8422e, ((Long) this.f8418a.m30291a(C2251d.C2256e.f8695k1)).longValue());
    }

    /* renamed from: b */
    public final boolean m30665b(View view, View view2) {
        boolean z = false;
        if (m30669a(view, view2)) {
            if (this.f8428k == Long.MIN_VALUE) {
                this.f8428k = SystemClock.uptimeMillis();
            }
            z = false;
            if (SystemClock.uptimeMillis() - this.f8428k >= this.f8427j) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: c */
    public final void m30663c() {
        ViewTreeObserver viewTreeObserver = this.f8424g.get();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this.f8423f);
        }
        this.f8424g.clear();
    }
}
