package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzer.class */
public final class zzer implements Application.ActivityLifecycleCallbacks, View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {

    /* renamed from: a */
    private static final Handler f14747a = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    private final Context f14748b;

    /* renamed from: c */
    private Application f14749c;

    /* renamed from: d */
    private final PowerManager f14750d;

    /* renamed from: e */
    private final KeyguardManager f14751e;

    /* renamed from: f */
    private final zzei f14752f;

    /* renamed from: g */
    private BroadcastReceiver f14753g;

    /* renamed from: h */
    private WeakReference<ViewTreeObserver> f14754h;

    /* renamed from: i */
    private WeakReference<View> f14755i;

    /* renamed from: j */
    private alj f14756j;

    /* renamed from: k */
    private byte f14757k = (byte) (-1);

    /* renamed from: l */
    private int f14758l = -1;

    /* renamed from: m */
    private long f14759m = -3;

    public zzer(zzei zzeiVar, View view) {
        this.f14752f = zzeiVar;
        this.f14748b = zzeiVar.f14727a;
        this.f14750d = (PowerManager) this.f14748b.getSystemService("power");
        this.f14751e = (KeyguardManager) this.f14748b.getSystemService("keyguard");
        Context context = this.f14748b;
        if (context instanceof Application) {
            this.f14749c = (Application) context;
            this.f14756j = new alj((Application) context, this);
        }
        m3280a(view);
    }

    /* renamed from: a */
    private final void m3282a() {
        f14747a.post(new aly(this));
    }

    /* renamed from: a */
    private final void m3281a(Activity activity, int i) {
        Window window;
        if (this.f14755i != null && (window = activity.getWindow()) != null) {
            View peekDecorView = window.peekDecorView();
            View view = this.f14755i.get();
            if (view != null && peekDecorView != null && view.getRootView() == peekDecorView.getRootView()) {
                this.f14758l = i;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b9  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3278b() {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzer.m3278b():void");
    }

    /* renamed from: b */
    private final void m3277b(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.f14754h = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.f14753g == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.f14753g = new alx(this);
            this.f14748b.registerReceiver(this.f14753g, intentFilter);
        }
        Application application = this.f14749c;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.f14756j);
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: c */
    private final void m3276c(View view) {
        try {
            if (this.f14754h != null) {
                ViewTreeObserver viewTreeObserver = this.f14754h.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.f14754h = null;
            }
        } catch (Exception e) {
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception e2) {
        }
        BroadcastReceiver broadcastReceiver = this.f14753g;
        if (broadcastReceiver != null) {
            try {
                this.f14748b.unregisterReceiver(broadcastReceiver);
            } catch (Exception e3) {
            }
            this.f14753g = null;
        }
        Application application = this.f14749c;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.f14756j);
            } catch (Exception e4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m3280a(View view) {
        long j;
        WeakReference<View> weakReference = this.f14755i;
        View view2 = weakReference != null ? weakReference.get() : null;
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            m3276c(view2);
        }
        this.f14755i = new WeakReference<>(view);
        if (view != null) {
            if ((view.getWindowToken() == null && view.getWindowVisibility() == 8) ? false : true) {
                m3277b(view);
            }
            view.addOnAttachStateChangeListener(this);
            j = -2;
        } else {
            j = -3;
        }
        this.f14759m = j;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m3281a(activity, 0);
        m3278b();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        m3278b();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m3281a(activity, 4);
        m3278b();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m3281a(activity, 0);
        m3278b();
        m3282a();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m3278b();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m3281a(activity, 0);
        m3278b();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        m3278b();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        m3278b();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        m3278b();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f14758l = -1;
        m3277b(view);
        m3278b();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f14758l = -1;
        m3278b();
        m3282a();
        m3276c(view);
    }

    public final long zzcl() {
        if (this.f14759m <= -2 && this.f14755i.get() == null) {
            this.f14759m = -3L;
        }
        return this.f14759m;
    }
}
