package p193e.p194a.p712e4;

import android.content.Context;
import android.telecom.TelecomManager;
import android.telephony.CarrierConfigManager;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
/* renamed from: e.a.e4.g */
/* loaded from: classes11-dex2jar.jar:e/a/e4/g.class */
public final /* synthetic */ class C13488g implements AbstractC13504s {

    /* renamed from: a */
    public static final /* synthetic */ C13488g f39132a = new C13488g();

    @Override // p193e.p194a.p712e4.AbstractC13504s
    /* renamed from: a */
    public final AbstractC13497p mo21746a(Context context, TelephonyManager telephonyManager) {
        C13512z c13512z;
        int i = C13512z.f39193w;
        try {
            c13512z = new C13512z(context, SubscriptionManager.from(context), telephonyManager, (TelecomManager) context.getSystemService("telecom"), (CarrierConfigManager) context.getSystemService("carrier_config"));
        } catch (Throwable th) {
            c13512z = null;
        }
        return c13512z;
    }
}
