package p193e.p194a.p712e4;

import android.content.Context;
import android.database.Cursor;
import android.telecom.TelecomManager;
import android.telephony.CarrierConfigManager;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
/* renamed from: e.a.e4.x */
/* loaded from: classes11-dex2jar.jar:e/a/e4/x.class */
public class C13510x extends C13507v {

    /* renamed from: w */
    public static final /* synthetic */ int f39190w = 0;

    public C13510x(Context context, SubscriptionManager subscriptionManager, TelephonyManager telephonyManager, TelecomManager telecomManager, CarrierConfigManager carrierConfigManager) throws Exception {
        super(context, subscriptionManager, telephonyManager, telecomManager, carrierConfigManager);
        Class.forName("com.lge.internal.telephony.LGGsmAlphabet");
    }

    @Override // p193e.p194a.p712e4.C13505t, p193e.p194a.p712e4.AbstractC13501r
    /* renamed from: D */
    public String mo21722D() {
        return "iccid";
    }

    @Override // p193e.p194a.p712e4.C13507v, p193e.p194a.p712e4.C13505t, p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: c */
    public String mo21720c() {
        return "MarshmallowLg";
    }

    @Override // p193e.p194a.p712e4.C13507v, p193e.p194a.p712e4.AbstractC13501r, p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: x */
    public AbstractC13493l mo21718x(Cursor cursor) {
        return new C13495n(cursor, this);
    }
}
