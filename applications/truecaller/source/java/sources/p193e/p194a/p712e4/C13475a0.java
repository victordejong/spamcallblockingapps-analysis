package p193e.p194a.p712e4;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.os.Parcelable;
import android.telecom.TelecomManager;
import android.telephony.SmsManager;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.text.TextUtils;
import com.truecaller.multisim.SimInfo;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: e.a.e4.a0 */
/* loaded from: classes11-dex2jar.jar:e/a/e4/a0.class */
public class C13475a0 extends AbstractC13501r {

    /* renamed from: C */
    public static final /* synthetic */ int f39101C = 0;

    /* renamed from: k */
    public final SubscriptionManager f39104k;

    /* renamed from: l */
    public final TelecomManager f39105l;

    /* renamed from: m */
    public final Method f39106m;

    /* renamed from: n */
    public final Method f39107n;

    /* renamed from: o */
    public final Method f39108o;

    /* renamed from: p */
    public final Method f39109p;

    /* renamed from: q */
    public final Method f39110q;

    /* renamed from: r */
    public final Method f39111r;

    /* renamed from: s */
    public final Method f39112s;

    /* renamed from: t */
    public final Method f39113t;

    /* renamed from: u */
    public final Method f39114u;

    /* renamed from: v */
    public final Method f39115v;

    /* renamed from: w */
    public final Method f39116w;

    /* renamed from: x */
    public final Method f39117x;

    /* renamed from: y */
    public final Method f39118y;

    /* renamed from: z */
    public final String f39119z = (String) TelecomManager.class.getField("EXTRA_PHONE_ACCOUNT_HANDLE").get(null);

    /* renamed from: A */
    public final Method f39102A = TelecomManager.class.getMethod("getCallCapablePhoneAccounts", new Class[0]);

    /* renamed from: B */
    public final Method f39103B = Class.forName("android.telecom.PhoneAccountHandle").getMethod("getId", new Class[0]);

    public C13475a0(Context context, TelecomManager telecomManager, SubscriptionManager subscriptionManager) throws Exception {
        super(context);
        this.f39105l = telecomManager;
        Class<?> cls = Class.forName("com.samsung.android.telephony.MultiSimManager");
        this.f39106m = cls.getMethod("getEnabledSimCount", Context.class);
        this.f39107n = cls.getMethod("getActiveSubInfoCount", new Class[0]);
        Class<?> cls2 = Integer.TYPE;
        this.f39108o = cls.getMethod("getSimOperatorName", cls2);
        this.f39109p = cls.getMethod("getLine1Number", cls2);
        this.f39110q = cls.getMethod("getSubId", cls2);
        this.f39111r = cls.getMethod("getSimOperator", cls2);
        this.f39112s = cls.getMethod("getSimCountryIso", cls2);
        this.f39113t = cls.getMethod("getImei", cls2);
        this.f39114u = cls.getMethod("getSimSerialNumber", cls2);
        this.f39115v = cls.getMethod("isNetworkRoaming", cls2);
        this.f39116w = cls.getMethod("getNetworkCountryIso", cls2);
        this.f39117x = cls.getMethod("getDefaultSubId", cls2);
        this.f39118y = cls.getMethod("setDefaultSubId", cls2, Long.TYPE);
        this.f39104k = subscriptionManager;
    }

    @Override // p193e.p194a.p712e4.AbstractC13501r
    /* renamed from: D */
    public String mo21722D() {
        return "sim_id";
    }

    @Override // p193e.p194a.p712e4.AbstractC13501r
    /* renamed from: E */
    public String mo21730E() {
        return "sim_imsi";
    }

    @Override // p193e.p194a.p712e4.AbstractC13501r
    /* renamed from: F */
    public String mo21729F() {
        return "sim_imsi";
    }

    /* renamed from: G */
    public final String m21777G(int i) {
        try {
            return (String) this.f39113t.invoke(null, Integer.valueOf(i));
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: H */
    public final String m21776H(int i) {
        try {
            return (String) this.f39108o.invoke(null, Integer.valueOf(i));
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: I */
    public final String m21775I(int i) {
        try {
            return (String) this.f39109p.invoke(null, Integer.valueOf(i));
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: J */
    public final String m21774J(int i) {
        try {
            return (String) this.f39112s.invoke(null, Integer.valueOf(i));
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: K */
    public final String m21773K(int i) {
        try {
            return (String) this.f39111r.invoke(null, Integer.valueOf(i));
        } catch (Exception e) {
            return "";
        }
    }

    /* renamed from: L */
    public final String m21772L(int i) {
        try {
            return (String) this.f39114u.invoke(null, Integer.valueOf(i));
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: M */
    public final int m21771M(String str) {
        try {
            long[] jArr = (long[]) this.f39110q.invoke(null, 0);
            if (jArr != null && jArr.length > 0 && TextUtils.equals(String.valueOf(jArr[0]), str)) {
                return 0;
            }
            long[] jArr2 = (long[]) this.f39110q.invoke(null, 1);
            if (jArr2 == null || jArr2.length <= 0) {
                return -1;
            }
            return TextUtils.equals(String.valueOf(jArr2[0]), str) ? 1 : -1;
        } catch (Exception e) {
            return -1;
        }
    }

    /* renamed from: N */
    public final String m21770N(Intent intent) {
        String stringExtra = intent.getStringExtra("simSlot");
        if (stringExtra != null) {
            try {
                long[] jArr = (long[]) this.f39110q.invoke(null, Integer.valueOf(stringExtra));
                if (jArr != null) {
                    if (jArr.length > 0) {
                        return String.valueOf(jArr[0]);
                    }
                }
            } catch (Exception e) {
            }
        }
        String stringExtra2 = intent.getStringExtra("subId");
        if (stringExtra2 != null) {
            return stringExtra2;
        }
        String stringExtra3 = intent.getStringExtra("subscription");
        return stringExtra3 != null ? stringExtra3 : String.valueOf(intent.getIntExtra("subscription", -1));
    }

    /* renamed from: O */
    public final SmsManager m21769O(String str) {
        try {
            return (SmsManager) Class.forName("android.telephony.SmsManager").getMethod("getSmsManagerForSubscriber", Long.TYPE).invoke(null, Long.valueOf(str));
        } catch (Exception e) {
            return SmsManager.getDefault();
        }
    }

    /* renamed from: P */
    public final boolean m21768P(int i) {
        try {
            return ((Boolean) this.f39115v.invoke(null, Integer.valueOf(i))).booleanValue();
        } catch (Exception e) {
            return false;
        }
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: b */
    public String mo21743b() {
        try {
            return String.valueOf(((Long) this.f39117x.invoke(null, 2)).longValue());
        } catch (Exception e) {
            return "-1";
        }
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: c */
    public String mo21720c() {
        return "SamsungLollipopMr1";
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: d */
    public List<SimInfo> mo21742d() {
        if (!this.f39148b.m21765a("android.permission.READ_PHONE_STATE")) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        List<SubscriptionInfo> activeSubscriptionInfoList = this.f39104k.getActiveSubscriptionInfoList();
        if (activeSubscriptionInfoList != null) {
            for (SubscriptionInfo subscriptionInfo : activeSubscriptionInfoList) {
                SimInfo mo21719v = mo21719v(String.valueOf(subscriptionInfo.getSubscriptionId()));
                if (mo21719v != null) {
                    arrayList.add(mo21719v);
                }
            }
        }
        return arrayList;
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: e */
    public SimInfo mo21741e(int i) {
        String str;
        try {
            long[] jArr = (long[]) this.f39110q.invoke(null, Integer.valueOf(i));
            str = (jArr == null || jArr.length <= 0) ? "-1" : String.valueOf(jArr[0]);
        } catch (Exception e) {
            str = "-1";
        }
        if ("-1".equals(str)) {
            return null;
        }
        return new SimInfo(i, str, m21775I(i), m21776H(i), m21773K(i), m21774J(i), m21777G(i), m21772L(i), null, m21768P(i));
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: h */
    public boolean mo21740h() {
        boolean z = false;
        try {
            if (((Integer) this.f39107n.invoke(null, new Object[0])).intValue() > 1) {
                z = true;
            }
        } catch (Exception e) {
        }
        return z;
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: i */
    public AbstractC13490i mo21726i(String str) {
        return new C13491j(new Bundle());
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: k */
    public String mo21739k(Intent intent) {
        return m21770N(intent);
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: l */
    public boolean mo21738l(String str, String str2, String str3, PendingIntent pendingIntent, PendingIntent pendingIntent2, String str4) {
        try {
            long longValue = ((Long) this.f39117x.invoke(null, 2)).longValue();
            this.f39118y.invoke(null, 2, Long.valueOf(str4));
            m21769O(str4).sendTextMessage(str, str2, str3, pendingIntent, pendingIntent2);
            this.f39118y.invoke(null, 2, Long.valueOf(longValue));
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: o */
    public boolean mo21737o(String str, String str2, ArrayList<String> arrayList, ArrayList<PendingIntent> arrayList2, ArrayList<PendingIntent> arrayList3, String str3) {
        try {
            long longValue = ((Long) this.f39117x.invoke(null, 2)).longValue();
            this.f39118y.invoke(null, 2, Long.valueOf(str3));
            m21769O(str3).sendMultipartTextMessage(str, str2, arrayList, arrayList2, arrayList3);
            this.f39118y.invoke(null, 2, Long.valueOf(longValue));
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: p */
    public boolean mo21736p() {
        return true;
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: r */
    public String mo21735r(String str) {
        int m21771M = m21771M(str);
        String str2 = null;
        if (m21771M != -1) {
            try {
                str2 = (String) this.f39116w.invoke(null, Integer.valueOf(m21771M));
            } catch (Exception e) {
                str2 = null;
            }
        }
        return str2;
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: s */
    public void mo21724s(Intent intent, String str) {
        if (this.f39148b.m21765a("android.permission.READ_PHONE_STATE")) {
            try {
                for (Object obj : (List) this.f39102A.invoke(this.f39105l, new Object[0])) {
                    if (str.equals(this.f39103B.invoke(obj, new Object[0]))) {
                        intent.putExtra(this.f39119z, (Parcelable) obj);
                    }
                }
            } catch (IllegalAccessException | InvocationTargetException e) {
            }
        }
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: t */
    public boolean mo21723t() {
        boolean z = false;
        if (mo21740h()) {
            try {
                if (((Integer) this.f39106m.invoke(null, this.f39147a)).intValue() > 1) {
                    z = true;
                }
                return z;
            } catch (Exception e) {
                return true;
            }
        }
        return false;
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: u */
    public String mo21734u(String str) {
        int m21771M = m21771M(str);
        return m21771M != -1 ? m21774J(m21771M) : null;
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: v */
    public SimInfo mo21719v(String str) {
        int m21771M = m21771M(str);
        if (m21771M == -1) {
            return null;
        }
        return new SimInfo(m21771M, str, m21775I(m21771M), m21776H(m21771M), m21773K(m21771M), m21774J(m21771M), m21777G(m21771M), m21772L(m21771M), null, m21768P(m21771M));
    }

    @Override // p193e.p194a.p712e4.AbstractC13501r, p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: w */
    public SmsManager mo21733w(String str) {
        return m21769O(str);
    }

    @Override // p193e.p194a.p712e4.AbstractC13501r, p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: x */
    public AbstractC13493l mo21718x(Cursor cursor) {
        return new C13496o(cursor, this);
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: z */
    public String mo21731z(Intent intent) {
        return m21770N(intent);
    }
}
