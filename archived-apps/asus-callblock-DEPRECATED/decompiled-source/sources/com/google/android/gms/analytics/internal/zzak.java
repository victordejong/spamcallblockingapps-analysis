package com.google.android.gms.analytics.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.internal.bp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzak.class */
public final class zzak {
    private static Boolean d;

    /* renamed from: a  reason: collision with root package name */
    private final Handler f3834a = new Handler();

    /* renamed from: b  reason: collision with root package name */
    private final zza f3835b;
    private final Context c;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzak$zza.class */
    public interface zza {
        boolean callServiceStopSelfResult(int i);

        Context getContext();
    }

    public zzak(zza zzaVar) {
        this.c = zzaVar.getContext();
        b.a(this.c);
        this.f3835b = zzaVar;
    }

    public static boolean zzV(Context context) {
        boolean zzj;
        b.a(context);
        if (d != null) {
            zzj = d.booleanValue();
        } else {
            zzj = zzao.zzj(context, "com.google.android.gms.analytics.AnalyticsService");
            d = Boolean.valueOf(zzj);
        }
        return zzj;
    }

    public final IBinder onBind(Intent intent) {
        return null;
    }

    public final void onCreate() {
        zzf zzX = zzf.zzX(this.c);
        zzaf zzlR = zzX.zzlR();
        if (zzX.zzlS().zzmW()) {
            zzlR.zzbG("Device AnalyticsService is starting up");
        } else {
            zzlR.zzbG("Local AnalyticsService is starting up");
        }
    }

    public final void onDestroy() {
        zzf zzX = zzf.zzX(this.c);
        zzaf zzlR = zzX.zzlR();
        if (zzX.zzlS().zzmW()) {
            zzlR.zzbG("Device AnalyticsService is shutting down");
        } else {
            zzlR.zzbG("Local AnalyticsService is shutting down");
        }
    }

    public final int onStartCommand(Intent intent, int i, final int i2) {
        try {
            synchronized (zzaj.f3832a) {
                bp bpVar = zzaj.f3833b;
                if (bpVar != null && bpVar.f4170a.isHeld()) {
                    bpVar.b();
                }
            }
        } catch (SecurityException e) {
        }
        final zzf zzX = zzf.zzX(this.c);
        final zzaf zzlR = zzX.zzlR();
        if (intent == null) {
            zzlR.zzbJ("AnalyticsService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        if (zzX.zzlS().zzmW()) {
            zzlR.zza("Device AnalyticsService called. startId, action", Integer.valueOf(i2), action);
        } else {
            zzlR.zza("Local AnalyticsService called. startId, action", Integer.valueOf(i2), action);
        }
        if (!"com.google.android.gms.analytics.ANALYTICS_DISPATCH".equals(action)) {
            return 2;
        }
        zzX.zzkw().zza(new zzw() { // from class: com.google.android.gms.analytics.internal.zzak.1
            @Override // com.google.android.gms.analytics.internal.zzw
            public final void zzd(Throwable th) {
                zzak.this.f3834a.post(new Runnable() { // from class: com.google.android.gms.analytics.internal.zzak.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (!zzak.this.f3835b.callServiceStopSelfResult(i2)) {
                            return;
                        }
                        if (zzX.zzlS().zzmW()) {
                            zzlR.zzbG("Device AnalyticsService processed last dispatch request");
                        } else {
                            zzlR.zzbG("Local AnalyticsService processed last dispatch request");
                        }
                    }
                });
            }
        });
        return 2;
    }
}
