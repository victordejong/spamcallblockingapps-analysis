package p131c.p161d.p170b.p224d.p252g.p253a;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzrb;
import java.lang.ref.WeakReference;
/* renamed from: c.d.b.d.g.a.nf0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/nf0.class */
public final class nf0 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    public final Application f14243a;

    /* renamed from: b */
    public final WeakReference<Application.ActivityLifecycleCallbacks> f14244b;

    /* renamed from: c */
    public boolean f14245c = false;

    public nf0(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.f14244b = new WeakReference<>(activityLifecycleCallbacks);
        this.f14243a = application;
    }

    /* renamed from: a */
    public final void m26616a(zzrb zzrbVar) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.f14244b.get();
            if (activityLifecycleCallbacks != null) {
                zzrbVar.mo11533a(activityLifecycleCallbacks);
            } else if (!this.f14245c) {
                this.f14243a.unregisterActivityLifecycleCallbacks(this);
                this.f14245c = true;
            }
        } catch (Exception e) {
            zzbbq.m15855b("Error while dispatching lifecycle callback.", e);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m26616a(new pf0(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        m26616a(new uf0(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m26616a(new qf0(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m26616a(new rf0(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m26616a(new sf0(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m26616a(new of0(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        m26616a(new tf0(this, activity));
    }
}
