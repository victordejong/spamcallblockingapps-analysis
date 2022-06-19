package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.internal.measurement.bd;
/* renamed from: com.google.android.gms.measurement.internal.i4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/i4.class */
public final class C1526i4 {

    /* renamed from: a */
    private final AbstractC1518h4 f4324a;

    public C1526i4(AbstractC1518h4 abstractC1518h4) {
        C0931r.m3308k(abstractC1518h4);
        this.f4324a = abstractC1518h4;
    }

    /* renamed from: a */
    public static boolean m1577a(Context context) {
        ActivityInfo receiverInfo;
        C0931r.m3308k(context);
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

    /* renamed from: b */
    public final void m1576b(Context context, Intent intent) {
        r4 h = r4.h(context, (bd) null, (Long) null);
        n3 c = h.c();
        if (intent == null) {
            c.r().m1570a("Receiver called with null intent");
            return;
        }
        h.f();
        String action = intent.getAction();
        c.w().m1569b("Local receiver got", action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            if (!"com.android.vending.INSTALL_REFERRER".equals(action)) {
                return;
            }
            c.r().m1570a("Install Referrer Broadcasts are deprecated");
            return;
        }
        Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
        className.setAction("com.google.android.gms.measurement.UPLOAD");
        c.w().m1570a("Starting wakeful intent.");
        this.f4324a.m1588a(context, className);
    }
}
