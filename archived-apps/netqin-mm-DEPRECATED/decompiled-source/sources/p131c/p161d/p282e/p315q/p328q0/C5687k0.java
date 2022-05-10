package p131c.p161d.p282e.p315q.p328q0;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Handler;
import io.reactivex.BackpressureStrategy;
import p530d.p541c.p563h0.C9830a;
import p530d.p541c.p570z.AbstractC9864a;
/* renamed from: c.d.e.q.q0.k0 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/k0.class */
public class C5687k0 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: d */
    public Runnable f18824d;

    /* renamed from: a */
    public final Handler f18821a = new Handler();

    /* renamed from: b */
    public boolean f18822b = false;

    /* renamed from: c */
    public boolean f18823c = true;

    /* renamed from: e */
    public final C9830a<String> f18825e = C9830a.m1910c();

    /* renamed from: a */
    public AbstractC9864a<String> m23227a() {
        return this.f18825e.m1863a(BackpressureStrategy.BUFFER).m1948e();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        this.f18823c = true;
        Runnable runnable = this.f18824d;
        if (runnable != null) {
            this.f18821a.removeCallbacks(runnable);
        }
        Handler handler = this.f18821a;
        Runnable a = RunnableC5682j0.m23240a(this);
        this.f18824d = a;
        handler.postDelayed(a, 1000L);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        this.f18823c = false;
        boolean z = this.f18822b;
        this.f18822b = true;
        Runnable runnable = this.f18824d;
        if (runnable != null) {
            this.f18821a.removeCallbacks(runnable);
        }
        if (!z) {
            C5694l2.m23214c("went foreground");
            this.f18825e.onNext("ON_FOREGROUND");
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }
}
