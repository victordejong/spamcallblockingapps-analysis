package p193e.p194a.p712e4;

import android.content.Context;
import android.telecom.TelecomManager;
import android.telephony.CarrierConfigManager;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
/* renamed from: e.a.e4.c */
/* loaded from: classes11-dex2jar.jar:e/a/e4/c.class */
public final /* synthetic */ class C13478c implements AbstractC13504s {

    /* renamed from: a */
    public static final /* synthetic */ C13478c f39121a = new C13478c();

    @Override // p193e.p194a.p712e4.AbstractC13504s
    /* renamed from: a */
    public final AbstractC13497p mo21746a(Context context, TelephonyManager telephonyManager) {
        C13507v c13507v;
        int i = C13507v.f39184v;
        try {
            c13507v = new C13507v(context, SubscriptionManager.from(context), telephonyManager, (TelecomManager) context.getSystemService("telecom"), (CarrierConfigManager) context.getSystemService("carrier_config"));
        } catch (Throwable th) {
            c13507v = null;
        }
        return c13507v;
    }
}
