package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/BackgroundDetector.class */
public final class BackgroundDetector implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* renamed from: a */
    private static final BackgroundDetector f6237a = new BackgroundDetector();

    /* renamed from: b */
    private final AtomicBoolean f6238b = new AtomicBoolean();

    /* renamed from: c */
    private final AtomicBoolean f6239c = new AtomicBoolean();

    /* renamed from: d */
    private final ArrayList<BackgroundStateChangeListener> f6240d = new ArrayList<>();

    /* renamed from: e */
    private boolean f6241e = false;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener.class */
    public interface BackgroundStateChangeListener {
        void onBackgroundStateChanged(boolean z);
    }

    private BackgroundDetector() {
    }

    /* renamed from: a */
    private final void m5970a(boolean z) {
        synchronized (f6237a) {
            ArrayList<BackgroundStateChangeListener> arrayList = this.f6240d;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                BackgroundStateChangeListener backgroundStateChangeListener = arrayList.get(i);
                i++;
                backgroundStateChangeListener.onBackgroundStateChanged(z);
            }
        }
    }

    public static BackgroundDetector getInstance() {
        return f6237a;
    }

    public static void initialize(Application application) {
        synchronized (f6237a) {
            if (!f6237a.f6241e) {
                application.registerActivityLifecycleCallbacks(f6237a);
                application.registerComponentCallbacks(f6237a);
                f6237a.f6241e = true;
            }
        }
    }

    public final void addListener(BackgroundStateChangeListener backgroundStateChangeListener) {
        synchronized (f6237a) {
            this.f6240d.add(backgroundStateChangeListener);
        }
    }

    public final boolean isInBackground() {
        return this.f6238b.get();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        boolean compareAndSet = this.f6238b.compareAndSet(true, false);
        this.f6239c.set(true);
        if (compareAndSet) {
            m5970a(false);
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
        boolean compareAndSet = this.f6238b.compareAndSet(true, false);
        this.f6239c.set(true);
        if (compareAndSet) {
            m5970a(false);
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
        if (i == 20 && this.f6238b.compareAndSet(false, true)) {
            this.f6239c.set(true);
            m5970a(true);
        }
    }

    public final boolean readCurrentStateIfPossible(boolean z) {
        if (!this.f6239c.get()) {
            if (!PlatformVersion.isAtLeastJellyBean()) {
                return z;
            }
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (!this.f6239c.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                this.f6238b.set(true);
            }
        }
        return isInBackground();
    }
}
