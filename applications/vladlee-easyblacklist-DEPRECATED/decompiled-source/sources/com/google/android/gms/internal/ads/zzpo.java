package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ListView;
import android.widget.ScrollView;
import com.google.android.gms.ads.internal.zzq;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpo.class */
public final class zzpo implements Application.ActivityLifecycleCallbacks, View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {

    /* renamed from: a */
    private static final long f15321a = ((Long) zzve.zzoy().zzd(zzzn.zzckh)).longValue();

    /* renamed from: b */
    private final Context f15322b;

    /* renamed from: c */
    private Application f15323c;

    /* renamed from: d */
    private final WindowManager f15324d;

    /* renamed from: e */
    private final PowerManager f15325e;

    /* renamed from: f */
    private final KeyguardManager f15326f;

    /* renamed from: g */
    private BroadcastReceiver f15327g;

    /* renamed from: h */
    private WeakReference<ViewTreeObserver> f15328h;

    /* renamed from: i */
    private WeakReference<View> f15329i;

    /* renamed from: j */
    private apo f15330j;

    /* renamed from: k */
    private zzaya f15331k = new zzaya(f15321a);

    /* renamed from: l */
    private boolean f15332l = false;

    /* renamed from: m */
    private int f15333m = -1;

    /* renamed from: n */
    private final HashSet<zzps> f15334n = new HashSet<>();

    /* renamed from: o */
    private final DisplayMetrics f15335o;

    /* renamed from: p */
    private final Rect f15336p;

    public zzpo(Context context, View view) {
        this.f15322b = context.getApplicationContext();
        this.f15324d = (WindowManager) context.getSystemService("window");
        this.f15325e = (PowerManager) this.f15322b.getSystemService("power");
        this.f15326f = (KeyguardManager) context.getSystemService("keyguard");
        Context context2 = this.f15322b;
        if (context2 instanceof Application) {
            this.f15323c = (Application) context2;
            this.f15330j = new apo((Application) context2, this);
        }
        this.f15335o = context.getResources().getDisplayMetrics();
        this.f15336p = new Rect();
        this.f15336p.right = this.f15324d.getDefaultDisplay().getWidth();
        this.f15336p.bottom = this.f15324d.getDefaultDisplay().getHeight();
        WeakReference<View> weakReference = this.f15329i;
        View view2 = weakReference != null ? weakReference.get() : null;
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            m3118c(view2);
        }
        this.f15329i = new WeakReference<>(view);
        if (view != null) {
            if (zzq.zzks().isAttachedToWindow(view)) {
                m3119b(view);
            }
            view.addOnAttachStateChangeListener(this);
        }
    }

    /* renamed from: a */
    private final Rect m3124a(Rect rect) {
        return new Rect(m3120b(rect.left), m3120b(rect.top), m3120b(rect.right), m3120b(rect.bottom));
    }

    /* renamed from: a */
    private final List<Rect> m3123a(View view) {
        boolean z;
        try {
            ArrayList arrayList = new ArrayList();
            for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                View view2 = (View) parent;
                Rect rect = new Rect();
                if (Build.VERSION.SDK_INT >= 16) {
                    z = view2.isScrollContainer();
                } else {
                    if (!(view2 instanceof ScrollView) && !(view2 instanceof ListView)) {
                        z = false;
                    }
                    z = true;
                }
                if (z && view2.getGlobalVisibleRect(rect)) {
                    arrayList.add(m3124a(rect));
                }
            }
            return arrayList;
        } catch (Exception e) {
            zzq.zzku().zza(e, "PositionWatcher.getParentScrollViewRects");
            return Collections.emptyList();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final void m3126a(int i) {
        WeakReference<View> weakReference;
        boolean z;
        boolean z2;
        if (this.f15334n.size() != 0 && (weakReference = this.f15329i) != null) {
            View view = weakReference.get();
            boolean z3 = i == 1;
            boolean z4 = view == null;
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            Rect rect3 = new Rect();
            Rect rect4 = new Rect();
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            if (view != null) {
                z2 = view.getGlobalVisibleRect(rect2);
                z = view.getLocalVisibleRect(rect3);
                view.getHitRect(rect4);
                try {
                    view.getLocationOnScreen(iArr);
                    view.getLocationInWindow(iArr2);
                } catch (Exception e) {
                    zzavs.zzc("Failure getting view location.", e);
                }
                rect.left = iArr[0];
                rect.top = iArr[1];
                rect.right = rect.left + view.getWidth();
                rect.bottom = rect.top + view.getHeight();
            } else {
                z2 = false;
                z = false;
            }
            List<Rect> emptyList = (!((Boolean) zzve.zzoy().zzd(zzzn.zzckk)).booleanValue() || view == null) ? Collections.emptyList() : m3123a(view);
            int i2 = 8;
            int windowVisibility = view != null ? view.getWindowVisibility() : 8;
            int i3 = this.f15333m;
            if (i3 != -1) {
                windowVisibility = i3;
            }
            boolean z5 = !z4 && zzq.zzkq().zza(view, this.f15325e, this.f15326f) && z2 && z && windowVisibility == 0;
            if (z3 && !this.f15331k.tryAcquire() && z5 == this.f15332l) {
                return;
            }
            if (z5 || this.f15332l || i != 1) {
                long elapsedRealtime = zzq.zzkx().elapsedRealtime();
                boolean isScreenOn = this.f15325e.isScreenOn();
                boolean z6 = view != null && zzq.zzks().isAttachedToWindow(view);
                if (view != null) {
                    i2 = view.getWindowVisibility();
                }
                zzpt zzptVar = new zzpt(elapsedRealtime, isScreenOn, z6, i2, m3124a(this.f15336p), m3124a(rect), m3124a(rect2), z2, m3124a(rect3), z, m3124a(rect4), this.f15335o.density, z5, emptyList);
                Iterator<zzps> it = this.f15334n.iterator();
                while (it.hasNext()) {
                    it.next().zza(zzptVar);
                }
                this.f15332l = z5;
            }
        }
    }

    /* renamed from: a */
    private final void m3125a(Activity activity, int i) {
        Window window;
        if (this.f15329i != null && (window = activity.getWindow()) != null) {
            View peekDecorView = window.peekDecorView();
            View view = this.f15329i.get();
            if (view != null && peekDecorView != null && view.getRootView() == peekDecorView.getRootView()) {
                this.f15333m = i;
            }
        }
    }

    /* renamed from: b */
    private final int m3120b(int i) {
        return (int) (i / this.f15335o.density);
    }

    /* renamed from: b */
    private final void m3121b() {
        zzawb.zzdsr.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.apm

            /* renamed from: a */
            private final zzpo f8124a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8124a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f8124a.m3127a();
            }
        });
    }

    /* renamed from: b */
    private final void m3119b(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.f15328h = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.f15327g == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.f15327g = new apl(this);
            zzq.zzll().zza(this.f15322b, this.f15327g, intentFilter);
        }
        Application application = this.f15323c;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.f15330j);
            } catch (Exception e) {
                zzavs.zzc("Error registering activity lifecycle callbacks.", e);
            }
        }
    }

    /* renamed from: c */
    private final void m3118c(View view) {
        try {
            if (this.f15328h != null) {
                ViewTreeObserver viewTreeObserver = this.f15328h.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.f15328h = null;
            }
        } catch (Exception e) {
            zzavs.zzc("Error while unregistering listeners from the last ViewTreeObserver.", e);
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception e2) {
            zzavs.zzc("Error while unregistering listeners from the ViewTreeObserver.", e2);
        }
        if (this.f15327g != null) {
            try {
                zzq.zzll().zza(this.f15322b, this.f15327g);
            } catch (IllegalStateException e3) {
                zzavs.zzc("Failed trying to unregister the receiver", e3);
            } catch (Exception e4) {
                zzq.zzku().zza(e4, "ActiveViewUnit.stopScreenStatusMonitoring");
            }
            this.f15327g = null;
        }
        Application application = this.f15323c;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.f15330j);
            } catch (Exception e5) {
                zzavs.zzc("Error registering activity lifecycle callbacks.", e5);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3127a() {
        m3126a(3);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m3125a(activity, 0);
        m3126a(3);
        m3121b();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        m3126a(3);
        m3121b();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m3125a(activity, 4);
        m3126a(3);
        m3121b();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m3125a(activity, 0);
        m3126a(3);
        m3121b();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m3126a(3);
        m3121b();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m3125a(activity, 0);
        m3126a(3);
        m3121b();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        m3126a(3);
        m3121b();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        m3126a(2);
        m3121b();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        m3126a(1);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f15333m = -1;
        m3119b(view);
        m3126a(3);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f15333m = -1;
        m3126a(3);
        m3121b();
        m3118c(view);
    }

    public final void zza(zzps zzpsVar) {
        this.f15334n.add(zzpsVar);
        m3126a(3);
    }

    public final void zzb(zzps zzpsVar) {
        this.f15334n.remove(zzpsVar);
    }

    public final void zzen(long j) {
        this.f15331k.zzfb(j);
    }

    public final void zzlp() {
        this.f15331k.zzfb(f15321a);
    }
}
