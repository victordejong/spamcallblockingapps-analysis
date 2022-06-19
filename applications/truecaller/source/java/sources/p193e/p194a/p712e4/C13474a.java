package p193e.p194a.p712e4;

import android.content.Context;
import android.telecom.TelecomManager;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
/* renamed from: e.a.e4.a */
/* loaded from: classes11-dex2jar.jar:e/a/e4/a.class */
public final /* synthetic */ class C13474a implements AbstractC13504s {

    /* renamed from: a */
    public static final /* synthetic */ C13474a f39100a = new C13474a();

    @Override // p193e.p194a.p712e4.AbstractC13504s
    /* renamed from: a */
    public final AbstractC13497p mo21746a(Context context, TelephonyManager telephonyManager) {
        C13505t c13505t;
        int i = C13505t.f39171s;
        try {
            c13505t = new C13505t(context, SubscriptionManager.from(context), telephonyManager, (TelecomManager) context.getSystemService("telecom"));
        } catch (Throwable th) {
            c13505t = null;
        }
        return c13505t;
    }
}
