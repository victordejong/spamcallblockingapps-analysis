package p193e.p194a.p712e4;

import android.content.Context;
import android.telecom.TelecomManager;
import android.telephony.CarrierConfigManager;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
/* renamed from: e.a.e4.e */
/* loaded from: classes11-dex2jar.jar:e/a/e4/e.class */
public final /* synthetic */ class C13482e implements AbstractC13504s {

    /* renamed from: a */
    public static final /* synthetic */ C13482e f39127a = new C13482e();

    @Override // p193e.p194a.p712e4.AbstractC13504s
    /* renamed from: a */
    public final AbstractC13497p mo21746a(Context context, TelephonyManager telephonyManager) {
        C13510x c13510x;
        int i = C13510x.f39190w;
        try {
            c13510x = new C13510x(context, SubscriptionManager.from(context), telephonyManager, (TelecomManager) context.getSystemService("telecom"), (CarrierConfigManager) context.getSystemService("carrier_config"));
        } catch (Throwable th) {
            c13510x = null;
        }
        return c13510x;
    }
}
