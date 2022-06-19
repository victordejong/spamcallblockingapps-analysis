package p193e.p194a.p712e4;

import android.content.Context;
import android.telecom.TelecomManager;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
/* renamed from: e.a.e4.u */
/* loaded from: classes11-dex2jar.jar:e/a/e4/u.class */
public class C13506u extends C13505t {

    /* renamed from: w */
    public static final /* synthetic */ int f39180w = 0;

    /* renamed from: t */
    public final String f39181t = (String) Class.forName("miui.provider.ExtraTelephony$Sms").getField("SIM_ID").get(null);

    /* renamed from: u */
    public final String f39182u = (String) Class.forName("miui.provider.ExtraTelephony$Mms").getField("SIM_ID").get(null);

    /* renamed from: v */
    public final String f39183v = (String) Class.forName("miui.provider.ExtraContacts$Calls").getField("SIM_ID").get(null);

    public C13506u(Context context, SubscriptionManager subscriptionManager, TelephonyManager telephonyManager, TelecomManager telecomManager) throws Exception {
        super(context, subscriptionManager, telephonyManager, telecomManager);
    }

    @Override // p193e.p194a.p712e4.C13505t, p193e.p194a.p712e4.AbstractC13501r
    /* renamed from: D */
    public String mo21722D() {
        return this.f39183v;
    }

    @Override // p193e.p194a.p712e4.C13505t, p193e.p194a.p712e4.AbstractC13501r
    /* renamed from: E */
    public String mo21730E() {
        return this.f39182u;
    }

    @Override // p193e.p194a.p712e4.C13505t, p193e.p194a.p712e4.AbstractC13501r
    /* renamed from: F */
    public String mo21729F() {
        return this.f39181t;
    }

    @Override // p193e.p194a.p712e4.C13505t, p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: c */
    public String mo21720c() {
        return "LollipopMr1Xiaomi";
    }
}
