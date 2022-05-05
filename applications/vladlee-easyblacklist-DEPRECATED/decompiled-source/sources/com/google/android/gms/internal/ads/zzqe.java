package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzqe.class */
public final class zzqe {

    /* renamed from: a */
    private final Object f15378a = new Object();

    /* renamed from: b */
    private apw f15379b = null;

    /* renamed from: c */
    private boolean f15380c = false;

    public final Activity getActivity() {
        synchronized (this.f15378a) {
            if (this.f15379b == null) {
                return null;
            }
            return this.f15379b.m4768a();
        }
    }

    public final Context getContext() {
        synchronized (this.f15378a) {
            if (this.f15379b == null) {
                return null;
            }
            return this.f15379b.m4763b();
        }
    }

    public final void initialize(Context context) {
        synchronized (this.f15378a) {
            if (!this.f15380c) {
                Application application = null;
                Context applicationContext = context.getApplicationContext();
                Context context2 = applicationContext;
                if (applicationContext == null) {
                    context2 = context;
                }
                if (context2 instanceof Application) {
                    application = (Application) context2;
                }
                if (application == null) {
                    zzavs.zzez("Can not cast Context to Application");
                    return;
                }
                if (this.f15379b == null) {
                    this.f15379b = new apw();
                }
                this.f15379b.m4766a(application, context);
                this.f15380c = true;
            }
        }
    }

    public final void zza(zzqj zzqjVar) {
        synchronized (this.f15378a) {
            if (this.f15379b == null) {
                this.f15379b = new apw();
            }
            this.f15379b.m4764a(zzqjVar);
        }
    }

    public final void zzb(zzqj zzqjVar) {
        synchronized (this.f15378a) {
            if (this.f15379b != null) {
                this.f15379b.m4761b(zzqjVar);
            }
        }
    }
}
