package p193e.p194a.p712e4;

import android.content.Context;
import android.telecom.TelecomManager;
import android.telephony.CarrierConfigManager;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
/* renamed from: e.a.e4.d */
/* loaded from: classes11-dex2jar.jar:e/a/e4/d.class */
public final /* synthetic */ class C13480d implements AbstractC13504s {

    /* renamed from: a */
    public static final /* synthetic */ C13480d f39125a = new C13480d();

    @Override // p193e.p194a.p712e4.AbstractC13504s
    /* renamed from: a */
    public final AbstractC13497p mo21746a(Context context, TelephonyManager telephonyManager) {
        C13509w c13509w;
        int i = C13509w.f39188x;
        try {
            c13509w = new C13509w(context, SubscriptionManager.from(context), telephonyManager, (TelecomManager) context.getSystemService("telecom"), (CarrierConfigManager) context.getSystemService("carrier_config"));
        } catch (Throwable th) {
            c13509w = null;
        }
        return c13509w;
    }
}
