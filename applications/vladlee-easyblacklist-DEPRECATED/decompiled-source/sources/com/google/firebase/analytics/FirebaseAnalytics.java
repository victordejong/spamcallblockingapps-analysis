package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzx;
import com.google.android.gms.measurement.internal.zzga;
import com.google.android.gms.measurement.internal.zzia;
import com.google.android.gms.measurement.internal.zzw;
import com.google.firebase.iid.FirebaseInstanceId;
/* loaded from: classes-dex2jar.jar:com/google/firebase/analytics/FirebaseAnalytics.class */
public final class FirebaseAnalytics {

    /* renamed from: a */
    private static volatile FirebaseAnalytics f18956a;

    /* renamed from: b */
    private final zzga f18957b;

    /* renamed from: c */
    private final zzx f18958c;

    /* renamed from: d */
    private final boolean f18959d;

    /* renamed from: e */
    private final Object f18960e;

    private FirebaseAnalytics(zzx zzxVar) {
        Preconditions.checkNotNull(zzxVar);
        this.f18957b = null;
        this.f18958c = zzxVar;
        this.f18959d = true;
        this.f18960e = new Object();
    }

    private FirebaseAnalytics(zzga zzgaVar) {
        Preconditions.checkNotNull(zzgaVar);
        this.f18957b = zzgaVar;
        this.f18958c = null;
        this.f18959d = false;
        this.f18960e = new Object();
    }

    public static FirebaseAnalytics getInstance(Context context) {
        if (f18956a == null) {
            synchronized (FirebaseAnalytics.class) {
                try {
                    if (f18956a == null) {
                        f18956a = zzx.zzb(context) ? new FirebaseAnalytics(zzx.zza(context)) : new FirebaseAnalytics(zzga.zza(context, null));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f18956a;
    }

    public static zzia getScionFrontendApiImplementation(Context context, Bundle bundle) {
        zzx zza;
        if (zzx.zzb(context) && (zza = zzx.zza(context, (String) null, (String) null, (String) null, bundle)) != null) {
            return new C3139a(zza);
        }
        return null;
    }

    /* renamed from: a */
    public final void m646a(String str, Bundle bundle) {
        if (this.f18959d) {
            this.f18958c.zza(str, bundle);
        } else {
            this.f18957b.zzh().zza("app", str, bundle, true);
        }
    }

    public final String getFirebaseInstanceId() {
        return FirebaseInstanceId.m567a().m552c();
    }

    public final void setCurrentScreen(Activity activity, String str, String str2) {
        if (this.f18959d) {
            this.f18958c.zza(activity, str, str2);
            return;
        }
        boolean zza = zzw.zza();
        zzga zzgaVar = this.f18957b;
        if (!zza) {
            zzgaVar.zzr().zzi().zza("setCurrentScreen must be called from the main thread");
        } else {
            zzgaVar.zzv().zza(activity, str, str2);
        }
    }
}
