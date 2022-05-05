package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaku.class */
public final class zzaku {

    /* renamed from: a */
    private static zzaku f10979a;

    /* renamed from: b */
    private AtomicBoolean f10980b = new AtomicBoolean(false);

    zzaku() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m4370a(Context context) {
        zzzn.initialize(context);
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcil)).booleanValue() && m4367b(context)) {
            m4369a(context, AppMeasurementSdk.getInstance(context));
        }
    }

    /* renamed from: a */
    private static void m4369a(Context context, AppMeasurementSdk appMeasurementSdk) {
        try {
            ((zzbfs) zzayx.zza(context, "com.google.android.gms.ads.measurement.DynamiteMeasurementManager", C1776bv.f8316a)).zza(ObjectWrapper.wrap(context), new zzakr(appMeasurementSdk));
        } catch (RemoteException | zzayz | NullPointerException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m4368a(Context context, String str) {
        boolean z;
        zzzn.initialize(context);
        if (!((Boolean) zzve.zzoy().zzd(zzzn.zzcih)).booleanValue()) {
            if (!((Boolean) zzve.zzoy().zzd(zzzn.zzcig)).booleanValue()) {
                z = false;
                Bundle bundle = new Bundle();
                bundle.putBoolean("measurementEnabled", z);
                m4369a(context, AppMeasurementSdk.getInstance(context, "FA-Ads", "am", str, bundle));
            }
        }
        z = true;
        Bundle bundle2 = new Bundle();
        bundle2.putBoolean("measurementEnabled", z);
        m4369a(context, AppMeasurementSdk.getInstance(context, "FA-Ads", "am", str, bundle2));
    }

    /* renamed from: b */
    private static boolean m4367b(Context context) {
        try {
            context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    public static zzaku zzsj() {
        if (f10979a == null) {
            f10979a = new zzaku();
        }
        return f10979a;
    }

    public final Thread zzc(final Context context, final String str) {
        if (!this.f10980b.compareAndSet(false, true)) {
            return null;
        }
        Thread thread = new Thread(new Runnable(this, context, str) { // from class: com.google.android.gms.internal.ads.bu

            /* renamed from: a */
            private final zzaku f8313a;

            /* renamed from: b */
            private final Context f8314b;

            /* renamed from: c */
            private final String f8315c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8313a = this;
                this.f8314b = context;
                this.f8315c = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzaku.m4368a(this.f8314b, this.f8315c);
            }
        });
        thread.start();
        return thread;
    }

    public final Thread zzm(final Context context) {
        if (!this.f10980b.compareAndSet(false, true)) {
            return null;
        }
        Thread thread = new Thread(new Runnable(this, context) { // from class: com.google.android.gms.internal.ads.bw

            /* renamed from: a */
            private final zzaku f8317a;

            /* renamed from: b */
            private final Context f8318b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8317a = this;
                this.f8318b = context;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzaku.m4370a(this.f8318b);
            }
        });
        thread.start();
        return thread;
    }
}
