package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.concurrent.GuardedBy;
import p081h.p203i.p204a.p224e.p235d.p249s.C7083o;
/* renamed from: h.i.a.e.d.k.q.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/b.class */
public final class ComponentCallbacks2C6845b implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* renamed from: e */
    public static final ComponentCallbacks2C6845b f16744e = new ComponentCallbacks2C6845b();

    /* renamed from: a */
    public final AtomicBoolean f16745a = new AtomicBoolean();

    /* renamed from: b */
    public final AtomicBoolean f16746b = new AtomicBoolean();
    @GuardedBy("sInstance")

    /* renamed from: c */
    public final ArrayList<AbstractC6846a> f16747c = new ArrayList<>();
    @GuardedBy("sInstance")

    /* renamed from: d */
    public boolean f16748d = false;

    /* renamed from: h.i.a.e.d.k.q.b$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/b$a.class */
    public interface AbstractC6846a {
        /* renamed from: a */
        void mo15160a(boolean z);
    }

    /* renamed from: a */
    public static void m21808a(Application application) {
        synchronized (f16744e) {
            if (!f16744e.f16748d) {
                application.registerActivityLifecycleCallbacks(f16744e);
                application.registerComponentCallbacks(f16744e);
                f16744e.f16748d = true;
            }
        }
    }

    /* renamed from: b */
    public static ComponentCallbacks2C6845b m21805b() {
        return f16744e;
    }

    /* renamed from: a */
    public final void m21807a(AbstractC6846a aVar) {
        synchronized (f16744e) {
            this.f16747c.add(aVar);
        }
    }

    /* renamed from: a */
    public final void m21806a(boolean z) {
        synchronized (f16744e) {
            ArrayList<AbstractC6846a> arrayList = this.f16747c;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                AbstractC6846a aVar = arrayList.get(i);
                i++;
                aVar.mo15160a(z);
            }
        }
    }

    /* renamed from: a */
    public final boolean m21809a() {
        return this.f16745a.get();
    }

    @TargetApi(16)
    /* renamed from: b */
    public final boolean m21804b(boolean z) {
        if (!this.f16746b.get()) {
            if (!C7083o.m21129c()) {
                return z;
            }
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (!this.f16746b.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                this.f16745a.set(true);
            }
        }
        return m21809a();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        boolean compareAndSet = this.f16745a.compareAndSet(true, false);
        this.f16746b.set(true);
        if (compareAndSet) {
            m21806a(false);
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
        boolean compareAndSet = this.f16745a.compareAndSet(true, false);
        this.f16746b.set(true);
        if (compareAndSet) {
            m21806a(false);
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
        if (i == 20 && this.f16745a.compareAndSet(false, true)) {
            this.f16746b.set(true);
            m21806a(true);
        }
    }
}
