package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/apo.class */
final class apo implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    private final Application f8127a;

    /* renamed from: b */
    private final WeakReference<Application.ActivityLifecycleCallbacks> f8128b;

    /* renamed from: c */
    private boolean f8129c = false;

    public apo(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.f8128b = new WeakReference<>(activityLifecycleCallbacks);
        this.f8127a = application;
    }

    /* renamed from: a */
    private final void m4769a(zzqd zzqdVar) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.f8128b.get();
            if (activityLifecycleCallbacks != null) {
                zzqdVar.zza(activityLifecycleCallbacks);
            } else if (!this.f8129c) {
                this.f8127a.unregisterActivityLifecycleCallbacks(this);
                this.f8129c = true;
            }
        } catch (Exception e) {
            zzavs.zzc("Error while dispatching lifecycle callback.", e);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m4769a(new apn(activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        m4769a(new apt(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m4769a(new aps(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m4769a(new C1743app(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m4769a(new apu(activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m4769a(new apq(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        m4769a(new apr(activity));
    }
}
