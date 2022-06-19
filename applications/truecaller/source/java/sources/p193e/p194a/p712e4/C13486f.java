package p193e.p194a.p712e4;

import android.content.Context;
import android.telecom.TelecomManager;
import android.telephony.CarrierConfigManager;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
/* renamed from: e.a.e4.f */
/* loaded from: classes11-dex2jar.jar:e/a/e4/f.class */
public final /* synthetic */ class C13486f implements AbstractC13504s {

    /* renamed from: a */
    public static final /* synthetic */ C13486f f39130a = new C13486f();

    @Override // p193e.p194a.p712e4.AbstractC13504s
    /* renamed from: a */
    public final AbstractC13497p mo21746a(Context context, TelephonyManager telephonyManager) {
        C13511y c13511y;
        int i = C13511y.f39191x;
        try {
            c13511y = new C13511y(context, SubscriptionManager.from(context), telephonyManager, (TelecomManager) context.getSystemService("telecom"), (CarrierConfigManager) context.getSystemService("carrier_config"));
        } catch (Throwable th) {
            c13511y = null;
        }
        return c13511y;
    }
}
