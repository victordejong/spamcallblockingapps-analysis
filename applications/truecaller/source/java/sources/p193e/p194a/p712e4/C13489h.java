package p193e.p194a.p712e4;

import android.content.Context;
import android.telecom.TelecomManager;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
/* renamed from: e.a.e4.h */
/* loaded from: classes11-dex2jar.jar:e/a/e4/h.class */
public final /* synthetic */ class C13489h implements AbstractC13504s {

    /* renamed from: a */
    public static final /* synthetic */ C13489h f39133a = new C13489h();

    @Override // p193e.p194a.p712e4.AbstractC13504s
    /* renamed from: a */
    public final AbstractC13497p mo21746a(Context context, TelephonyManager telephonyManager) {
        C13475a0 c13475a0;
        int i = C13475a0.f39101C;
        try {
            c13475a0 = new C13475a0(context, (TelecomManager) context.getSystemService("telecom"), SubscriptionManager.from(context));
        } catch (Throwable th) {
            c13475a0 = null;
        }
        return c13475a0;
    }
}
