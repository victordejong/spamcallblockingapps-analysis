package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.google.android.gms.analytics.internal.zzaf;
import com.google.android.gms.analytics.internal.zzao;
import com.google.android.gms.analytics.internal.zzf;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.internal.bp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/CampaignTrackingReceiver.class */
public class CampaignTrackingReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    static Object f3768a = new Object();

    /* renamed from: b  reason: collision with root package name */
    static bp f3769b;
    static Boolean c;

    public static boolean zzU(Context context) {
        boolean zzb;
        b.a(context);
        if (c != null) {
            zzb = c.booleanValue();
        } else {
            zzb = zzao.zzb(context, "com.google.android.gms.analytics.CampaignTrackingReceiver", true);
            c = Boolean.valueOf(zzb);
        }
        return zzb;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        zzf zzX = zzf.zzX(context);
        zzaf zzlR = zzX.zzlR();
        if (intent == null) {
            zzlR.zzbJ("CampaignTrackingReceiver received null intent");
            return;
        }
        String stringExtra = intent.getStringExtra("referrer");
        String action = intent.getAction();
        zzlR.zza("CampaignTrackingReceiver received", action);
        if (!"com.android.vending.INSTALL_REFERRER".equals(action) || TextUtils.isEmpty(stringExtra)) {
            zzlR.zzbJ("CampaignTrackingReceiver received unexpected intent without referrer extra");
            return;
        }
        boolean zzV = CampaignTrackingService.zzV(context);
        if (!zzV) {
            zzlR.zzbJ("CampaignTrackingService not registered or disabled. Installation tracking not possible. See http://goo.gl/8Rd3yj for instructions.");
        }
        zzh(context, stringExtra);
        if (zzX.zzlS().zzmW()) {
            zzlR.zzbK("Received unexpected installation campaign on package side");
            return;
        }
        Class<? extends CampaignTrackingService> zzko = zzko();
        b.a(zzko);
        Intent intent2 = new Intent(context, zzko);
        intent2.putExtra("referrer", stringExtra);
        synchronized (f3768a) {
            context.startService(intent2);
            if (zzV) {
                try {
                    if (f3769b == null) {
                        bp bpVar = new bp(context, "Analytics campaign WakeLock");
                        f3769b = bpVar;
                        bpVar.c();
                    }
                    f3769b.a();
                } catch (SecurityException e) {
                    zzlR.zzbJ("CampaignTrackingService service at risk of not starting. For more reliable installation campaign reports, add the WAKE_LOCK permission to your manifest. See http://goo.gl/8Rd3yj for instructions.");
                }
            }
        }
    }

    public void zzh(Context context, String str) {
    }

    public Class<? extends CampaignTrackingService> zzko() {
        return CampaignTrackingService.class;
    }
}
