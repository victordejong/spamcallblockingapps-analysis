package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfm.class */
public final class zzfm {

    /* renamed from: a */
    public final zzfp f29981a;

    public zzfm(zzfp zzfpVar) {
        Preconditions.m17288a(zzfpVar);
        this.f29981a = zzfpVar;
    }

    /* renamed from: a */
    public static boolean m9116a(Context context) {
        ActivityInfo receiverInfo;
        Preconditions.m17288a(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0)) == null) {
                return false;
            }
            return receiverInfo.enabled;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    /* renamed from: a */
    public final void m9115a(Context context, Intent intent) {
        zzeq p = zzfu.m9071a(context, null, null).mo8789p();
        if (intent == null) {
            p.m9149t().m9143a("Receiver called with null intent");
            return;
        }
        String action = intent.getAction();
        p.m9144y().m9142a("Local receiver got", action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
            className.setAction("com.google.android.gms.measurement.UPLOAD");
            p.m9144y().m9143a("Starting wakeful intent.");
            this.f29981a.mo9097a(context, className);
        } else if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
            p.m9149t().m9143a("Install Referrer Broadcasts are deprecated");
        }
    }
}
