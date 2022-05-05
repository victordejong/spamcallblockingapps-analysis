package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.zzq;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/apw.class */
public final class apw implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    private Activity f8138a;

    /* renamed from: b */
    private Context f8139b;

    /* renamed from: h */
    private Runnable f8145h;

    /* renamed from: j */
    private long f8147j;

    /* renamed from: c */
    private final Object f8140c = new Object();

    /* renamed from: d */
    private boolean f8141d = true;

    /* renamed from: e */
    private boolean f8142e = false;

    /* renamed from: f */
    private final List<zzqj> f8143f = new ArrayList();

    /* renamed from: g */
    private final List<zzqu> f8144g = new ArrayList();

    /* renamed from: i */
    private boolean f8146i = false;

    /* renamed from: a */
    private final void m4767a(Activity activity) {
        synchronized (this.f8140c) {
            if (!activity.getClass().getName().startsWith("com.google.android.gms.ads")) {
                this.f8138a = activity;
            }
        }
    }

    /* renamed from: a */
    public final Activity m4768a() {
        return this.f8138a;
    }

    /* renamed from: a */
    public final void m4766a(Application application, Context context) {
        if (!this.f8146i) {
            application.registerActivityLifecycleCallbacks(this);
            if (context instanceof Activity) {
                m4767a((Activity) context);
            }
            this.f8139b = application;
            this.f8147j = ((Long) zzve.zzoy().zzd(zzzn.zzcjb)).longValue();
            this.f8146i = true;
        }
    }

    /* renamed from: a */
    public final void m4764a(zzqj zzqjVar) {
        synchronized (this.f8140c) {
            this.f8143f.add(zzqjVar);
        }
    }

    /* renamed from: b */
    public final Context m4763b() {
        return this.f8139b;
    }

    /* renamed from: b */
    public final void m4761b(zzqj zzqjVar) {
        synchronized (this.f8140c) {
            this.f8143f.remove(zzqjVar);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        synchronized (this.f8140c) {
            if (this.f8138a != null) {
                if (this.f8138a.equals(activity)) {
                    this.f8138a = null;
                }
                Iterator<zzqu> it = this.f8144g.iterator();
                while (it.hasNext()) {
                    try {
                        if (it.next().zza(activity)) {
                            it.remove();
                        }
                    } catch (Exception e) {
                        zzq.zzku().zza(e, "AppActivityTracker.ActivityListener.onActivityDestroyed");
                        zzayu.zzc("", e);
                    }
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m4767a(activity);
        synchronized (this.f8140c) {
            for (zzqu zzquVar : this.f8144g) {
                try {
                    zzquVar.onActivityPaused(activity);
                } catch (Exception e) {
                    zzq.zzku().zza(e, "AppActivityTracker.ActivityListener.onActivityPaused");
                    zzayu.zzc("", e);
                }
            }
        }
        this.f8142e = true;
        if (this.f8145h != null) {
            zzawb.zzdsr.removeCallbacks(this.f8145h);
        }
        zzddu zzdduVar = zzawb.zzdsr;
        apv apvVar = new apv(this);
        this.f8145h = apvVar;
        zzdduVar.postDelayed(apvVar, this.f8147j);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m4767a(activity);
        this.f8142e = false;
        boolean z = this.f8141d;
        this.f8141d = true;
        if (this.f8145h != null) {
            zzawb.zzdsr.removeCallbacks(this.f8145h);
        }
        synchronized (this.f8140c) {
            for (zzqu zzquVar : this.f8144g) {
                try {
                    zzquVar.onActivityResumed(activity);
                } catch (Exception e) {
                    zzq.zzku().zza(e, "AppActivityTracker.ActivityListener.onActivityResumed");
                    zzayu.zzc("", e);
                }
            }
            if (!z) {
                for (zzqj zzqjVar : this.f8143f) {
                    try {
                        zzqjVar.zzp(true);
                    } catch (Exception e2) {
                        zzayu.zzc("", e2);
                    }
                }
            } else {
                zzavs.zzea("App is still foreground.");
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m4767a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
