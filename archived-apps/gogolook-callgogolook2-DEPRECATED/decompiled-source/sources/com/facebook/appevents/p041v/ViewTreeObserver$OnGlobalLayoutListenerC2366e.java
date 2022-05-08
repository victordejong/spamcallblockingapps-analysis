package com.facebook.appevents.p041v;

import android.app.Activity;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import androidx.annotation.Nullable;
import com.facebook.appevents.p036r.p037g.C2324d;
import com.facebook.appevents.p036r.p037g.C2326f;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.appevents.v.e */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/v/e.class */
public final class ViewTreeObserver$OnGlobalLayoutListenerC2366e implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: d */
    public static final Map<Integer, ViewTreeObserver$OnGlobalLayoutListenerC2366e> f2919d = new HashMap();

    /* renamed from: a */
    public WeakReference<Activity> f2920a;

    /* renamed from: b */
    public final Handler f2921b = new Handler(Looper.getMainLooper());

    /* renamed from: c */
    public AtomicBoolean f2922c = new AtomicBoolean(false);

    /* renamed from: com.facebook.appevents.v.e$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/v/e$a.class */
    public class RunnableC2367a implements Runnable {
        public RunnableC2367a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                View a = ViewTreeObserver$OnGlobalLayoutListenerC2366e.this.m35001a();
                Activity activity = (Activity) ViewTreeObserver$OnGlobalLayoutListenerC2366e.this.f2920a.get();
                if (!(a == null || activity == null)) {
                    for (View view : C2364c.m35009a(a)) {
                        if (!C2324d.m35180a(view)) {
                            String j = C2326f.m35157j(view);
                            if (!j.isEmpty() && j.length() <= 300) {
                                View$OnClickListenerC2368f.m34992a(view, a, activity.getLocalClassName());
                            }
                        }
                    }
                }
            } catch (Exception e) {
            }
        }
    }

    public ViewTreeObserver$OnGlobalLayoutListenerC2366e(Activity activity) {
        this.f2920a = new WeakReference<>(activity);
    }

    /* renamed from: a */
    public static void m35000a(Activity activity) {
        int hashCode = activity.hashCode();
        if (!f2919d.containsKey(Integer.valueOf(hashCode))) {
            ViewTreeObserver$OnGlobalLayoutListenerC2366e eVar = new ViewTreeObserver$OnGlobalLayoutListenerC2366e(activity);
            f2919d.put(Integer.valueOf(hashCode), eVar);
            eVar.m34995c();
        }
    }

    /* renamed from: b */
    public static void m34997b(Activity activity) {
        int hashCode = activity.hashCode();
        if (f2919d.containsKey(Integer.valueOf(hashCode))) {
            ViewTreeObserver$OnGlobalLayoutListenerC2366e eVar = f2919d.get(Integer.valueOf(hashCode));
            f2919d.remove(Integer.valueOf(hashCode));
            eVar.m34994d();
        }
    }

    @Nullable
    /* renamed from: a */
    public final View m35001a() {
        Window window;
        Activity activity = this.f2920a.get();
        if (activity == null || (window = activity.getWindow()) == null) {
            return null;
        }
        return window.getDecorView().getRootView();
    }

    /* renamed from: b */
    public final void m34998b() {
        RunnableC2367a aVar = new RunnableC2367a();
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            aVar.run();
        } else {
            this.f2921b.post(aVar);
        }
    }

    /* renamed from: c */
    public final void m34995c() {
        View a;
        if (!this.f2922c.getAndSet(true) && (a = m35001a()) != null) {
            ViewTreeObserver viewTreeObserver = a.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.addOnGlobalLayoutListener(this);
                m34998b();
            }
        }
    }

    /* renamed from: d */
    public final void m34994d() {
        View a;
        if (this.f2922c.getAndSet(false) && (a = m35001a()) != null) {
            ViewTreeObserver viewTreeObserver = a.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                if (Build.VERSION.SDK_INT < 16) {
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                } else {
                    viewTreeObserver.removeOnGlobalLayoutListener(this);
                }
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        m34998b();
    }
}
