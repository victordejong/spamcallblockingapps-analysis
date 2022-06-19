package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* renamed from: com.google.android.gms.internal.measurement.g0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/g0.class */
public final class C1317g0 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: f */
    final /* synthetic */ C1323h0 f3902f;

    public C1317g0(C1323h0 c1323h0) {
        this.f3902f = c1323h0;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        this.f3902f.m2100p(new z(this, bundle, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.f3902f.m2100p(new f0(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        this.f3902f.m2100p(new c0(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        this.f3902f.m2100p(new b0(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        ta taVar = new ta();
        this.f3902f.m2100p(new e0(this, activity, taVar));
        Bundle B = taVar.B(50L);
        if (B != null) {
            bundle.putAll(B);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        this.f3902f.m2100p(new a0(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        this.f3902f.m2100p(new d0(this, activity));
    }
}
