package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import com.google.android.gms.common.util.C0971m;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.gms.common.api.internal.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/c.class */
public final class ComponentCallbacks2C0828c implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* renamed from: j */
    private static final ComponentCallbacks2C0828c f3374j = new ComponentCallbacks2C0828c();

    /* renamed from: f */
    private final AtomicBoolean f3375f = new AtomicBoolean();

    /* renamed from: g */
    private final AtomicBoolean f3376g = new AtomicBoolean();

    /* renamed from: h */
    private final ArrayList<AbstractC0829a> f3377h = new ArrayList<>();

    /* renamed from: i */
    private boolean f3378i = false;

    /* renamed from: com.google.android.gms.common.api.internal.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/c$a.class */
    public interface AbstractC0829a {
        /* renamed from: a */
        void m3618a(boolean z);
    }

    private ComponentCallbacks2C0828c() {
    }

    /* renamed from: b */
    public static ComponentCallbacks2C0828c m3623b() {
        return f3374j;
    }

    /* renamed from: c */
    public static void m3622c(Application application) {
        ComponentCallbacks2C0828c componentCallbacks2C0828c = f3374j;
        synchronized (componentCallbacks2C0828c) {
            if (!componentCallbacks2C0828c.f3378i) {
                application.registerActivityLifecycleCallbacks(componentCallbacks2C0828c);
                application.registerComponentCallbacks(componentCallbacks2C0828c);
                componentCallbacks2C0828c.f3378i = true;
            }
        }
    }

    /* renamed from: f */
    private final void m3619f(boolean z) {
        synchronized (f3374j) {
            ArrayList<AbstractC0829a> arrayList = this.f3377h;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                AbstractC0829a abstractC0829a = arrayList.get(i);
                i++;
                abstractC0829a.m3618a(z);
            }
        }
    }

    /* renamed from: a */
    public final void m3624a(AbstractC0829a abstractC0829a) {
        synchronized (f3374j) {
            this.f3377h.add(abstractC0829a);
        }
    }

    /* renamed from: d */
    public final boolean m3621d() {
        return this.f3375f.get();
    }

    /* renamed from: e */
    public final boolean m3620e(boolean z) {
        if (!this.f3376g.get()) {
            if (!C0971m.m3146b()) {
                return z;
            }
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (!this.f3376g.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                this.f3375f.set(true);
            }
        }
        return m3621d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        boolean compareAndSet = this.f3375f.compareAndSet(true, false);
        this.f3376g.set(true);
        if (compareAndSet) {
            m3619f(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        boolean compareAndSet = this.f3375f.compareAndSet(true, false);
        this.f3376g.set(true);
        if (compareAndSet) {
            m3619f(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        if (i != 20 || !this.f3375f.compareAndSet(false, true)) {
            return;
        }
        this.f3376g.set(true);
        m3619f(true);
    }
}
