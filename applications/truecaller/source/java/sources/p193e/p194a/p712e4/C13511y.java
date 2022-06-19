package p193e.p194a.p712e4;

import android.content.Context;
import android.database.Cursor;
import android.telecom.TelecomManager;
import android.telephony.CarrierConfigManager;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import java.lang.reflect.Method;
/* renamed from: e.a.e4.y */
/* loaded from: classes11-dex2jar.jar:e/a/e4/y.class */
public class C13511y extends C13507v {

    /* renamed from: x */
    public static final /* synthetic */ int f39191x = 0;

    /* renamed from: w */
    public final Method f39192w;

    public C13511y(Context context, SubscriptionManager subscriptionManager, TelephonyManager telephonyManager, TelecomManager telecomManager, CarrierConfigManager carrierConfigManager) throws Exception {
        super(context, subscriptionManager, telephonyManager, telecomManager, carrierConfigManager);
        Class<?> cls;
        try {
            cls = Class.forName("com.samsung.android.telephony.MultiSimManager");
        } catch (ClassNotFoundException e) {
            cls = null;
        }
        if (cls != null) {
            this.f39192w = cls.getMethod("getEnabledSimCount", Context.class);
        } else {
            this.f39192w = null;
        }
    }

    @Override // p193e.p194a.p712e4.C13505t, p193e.p194a.p712e4.AbstractC13501r
    /* renamed from: D */
    public String mo21722D() {
        return "sim_id";
    }

    @Override // p193e.p194a.p712e4.C13507v, p193e.p194a.p712e4.C13505t, p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: c */
    public String mo21720c() {
        return "MarshmallowSamsung";
    }

    @Override // p193e.p194a.p712e4.C13505t, p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: t */
    public boolean mo21723t() {
        if (this.f39192w == null) {
            return super.mo21723t();
        }
        boolean z = false;
        if (!mo21740h()) {
            return false;
        }
        try {
            if (((Integer) this.f39192w.invoke(null, this.f39147a)).intValue() > 1) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            return true;
        }
    }

    @Override // p193e.p194a.p712e4.C13507v, p193e.p194a.p712e4.AbstractC13501r, p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: x */
    public AbstractC13493l mo21718x(Cursor cursor) {
        return new C13496o(cursor, this);
    }
}
