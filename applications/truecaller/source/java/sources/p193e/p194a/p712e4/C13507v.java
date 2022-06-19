package p193e.p194a.p712e4;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.PersistableBundle;
import android.telecom.PhoneAccount;
import android.telecom.PhoneAccountHandle;
import android.telecom.TelecomManager;
import android.telephony.CarrierConfigManager;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import com.truecaller.multisim.SimInfo;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Iterator;
/* renamed from: e.a.e4.v */
/* loaded from: classes11-dex2jar.jar:e/a/e4/v.class */
public class C13507v extends C13505t {

    /* renamed from: v */
    public static final /* synthetic */ int f39184v = 0;

    /* renamed from: t */
    public final CarrierConfigManager f39185t;

    /* renamed from: u */
    public final Method f39186u = TelephonyManager.class.getMethod("getSubIdForPhoneAccount", PhoneAccount.class);

    /* renamed from: e.a.e4.v$a */
    /* loaded from: classes11-dex2jar.jar:e/a/e4/v$a.class */
    public class C13508a extends AbstractC13494m {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13508a(Cursor cursor, String str) {
            super(cursor, str);
            C13507v.this = r5;
        }

        @Override // p193e.p194a.p712e4.AbstractC13494m
        /* renamed from: b */
        public String mo21725b(String str) {
            PhoneAccountHandle next;
            C13507v c13507v = C13507v.this;
            if (c13507v.f39148b.m21765a("android.permission.READ_PHONE_STATE")) {
                try {
                    Iterator<PhoneAccountHandle> it = c13507v.f39174m.getCallCapablePhoneAccounts().iterator();
                    do {
                        if (it.hasNext()) {
                            next = it.next();
                        }
                    } while (!str.equals(next.getId()));
                    str = String.valueOf(((Integer) c13507v.f39186u.invoke(c13507v.f39173l, c13507v.f39174m.getPhoneAccount(next))).intValue());
                } catch (IllegalAccessException | InvocationTargetException e) {
                }
                return str;
            }
            for (SimInfo simInfo : c13507v.mo21742d()) {
                if (simInfo.f13984b.equals(str)) {
                    break;
                }
            }
            str = "-1";
            return str;
        }
    }

    public C13507v(Context context, SubscriptionManager subscriptionManager, TelephonyManager telephonyManager, TelecomManager telecomManager, CarrierConfigManager carrierConfigManager) throws Exception {
        super(context, subscriptionManager, telephonyManager, telecomManager);
        this.f39185t = carrierConfigManager;
    }

    @Override // p193e.p194a.p712e4.C13505t
    /* renamed from: G */
    public String mo21728G(int i) {
        try {
            return this.f39173l.getDeviceId(i);
        } catch (SecurityException e) {
            return null;
        }
    }

    /* renamed from: J */
    public PhoneAccountHandle m21727J(String str) {
        PhoneAccountHandle next;
        if (this.f39148b.m21765a("android.permission.READ_PHONE_STATE")) {
            try {
                Iterator<PhoneAccountHandle> it = this.f39174m.getCallCapablePhoneAccounts().iterator();
                do {
                    if (!it.hasNext()) {
                        return null;
                    }
                    next = it.next();
                } while (!str.equals(String.valueOf(((Integer) this.f39186u.invoke(this.f39173l, this.f39174m.getPhoneAccount(next))).intValue())));
                return next;
            } catch (IllegalAccessException | InvocationTargetException e) {
                return null;
            }
        }
        return null;
    }

    @Override // p193e.p194a.p712e4.C13505t, p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: c */
    public String mo21720c() {
        return "Marshmallow";
    }

    @Override // p193e.p194a.p712e4.C13505t, p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: i */
    public AbstractC13490i mo21726i(String str) {
        PersistableBundle config = "-1".equals(str) ? this.f39185t.getConfig() : this.f39185t.getConfigForSubId(Integer.valueOf(str).intValue());
        PersistableBundle persistableBundle = config;
        if (config == null) {
            persistableBundle = new PersistableBundle();
        }
        return new C13492k(persistableBundle);
    }

    @Override // p193e.p194a.p712e4.C13505t, p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: s */
    public void mo21724s(Intent intent, String str) {
        PhoneAccountHandle m21727J = m21727J(str);
        if (m21727J != null) {
            intent.putExtra("android.telecom.extra.PHONE_ACCOUNT_HANDLE", m21727J);
        }
    }

    @Override // p193e.p194a.p712e4.AbstractC13501r, p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: x */
    public AbstractC13493l mo21718x(Cursor cursor) {
        return new C13508a(cursor, mo21747q());
    }
}
