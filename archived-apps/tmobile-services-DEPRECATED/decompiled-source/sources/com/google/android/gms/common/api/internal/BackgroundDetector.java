package com.google.android.gms.common.api.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.concurrent.GuardedBy;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/BackgroundDetector.class */
public final class BackgroundDetector implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* renamed from: j */
    private static final BackgroundDetector f7037j = new BackgroundDetector();

    /* renamed from: f */
    private final AtomicBoolean f7038f = new AtomicBoolean();

    /* renamed from: g */
    private final AtomicBoolean f7039g = new AtomicBoolean();
    @GuardedBy

    /* renamed from: h */
    private final ArrayList<BackgroundStateChangeListener> f7040h = new ArrayList<>();
    @GuardedBy

    /* renamed from: i */
    private boolean f7041i = false;

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener.class */
    public interface BackgroundStateChangeListener {
        @KeepForSdk
        void onBackgroundStateChanged(boolean z);
    }

    @KeepForSdk
    private BackgroundDetector() {
    }

    @KeepForSdk
    /* renamed from: b */
    public static BackgroundDetector m14989b() {
        return f7037j;
    }

    @KeepForSdk
    /* renamed from: c */
    public static void m14988c(Application application) {
        synchronized (f7037j) {
            if (!f7037j.f7041i) {
                application.registerActivityLifecycleCallbacks(f7037j);
                application.registerComponentCallbacks(f7037j);
                f7037j.f7041i = true;
            }
        }
    }

    /* renamed from: e */
    private final void m14986e(boolean z) {
        synchronized (f7037j) {
            ArrayList<BackgroundStateChangeListener> arrayList = this.f7040h;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                BackgroundStateChangeListener backgroundStateChangeListener = arrayList.get(i);
                i++;
                backgroundStateChangeListener.onBackgroundStateChanged(z);
            }
        }
    }

    @KeepForSdk
    /* renamed from: a */
    public final void m14990a(BackgroundStateChangeListener backgroundStateChangeListener) {
        synchronized (f7037j) {
            this.f7040h.add(backgroundStateChangeListener);
        }
    }

    @KeepForSdk
    /* renamed from: d */
    public final boolean m14987d() {
        return this.f7038f.get();
    }

    @KeepForSdk
    @TargetApi(16)
    /* renamed from: f */
    public final boolean m14985f(boolean z) {
        if (!this.f7039g.get()) {
            if (!PlatformVersion.m14320c()) {
                return z;
            }
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (!this.f7039g.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                this.f7038f.set(true);
            }
        }
        return m14987d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        boolean compareAndSet = this.f7038f.compareAndSet(true, false);
        this.f7039g.set(true);
        if (compareAndSet) {
            m14986e(false);
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
        boolean compareAndSet = this.f7038f.compareAndSet(true, false);
        this.f7039g.set(true);
        if (compareAndSet) {
            m14986e(false);
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
        if (i == 20 && this.f7038f.compareAndSet(false, true)) {
            this.f7039g.set(true);
            m14986e(true);
        }
    }
}
