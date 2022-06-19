package p193e.p194a.p619d.p637c0;

import android.content.ComponentName;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.telecom.PhoneAccount;
import android.telecom.PhoneAccountHandle;
import android.telecom.TelecomManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.log.AssertionUtil;
import com.truecaller.utils.extensions.Scheme;
import com.truecaller.voip.C4781R;
import com.truecaller.voip.callconnection.VoipCallConnectionService;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p619d.AbstractC11706g;
import p193e.p194a.p619d.C11704e;
import p193e.p194a.p619d.p652q.AbstractC11776v;
import s1.f0.r;
import s1.f0.v;
import s1.z.c.l;
/* renamed from: e.a.d.c0.n1 */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/n1.class */
public final class C11437n1 implements AbstractC11434m1 {

    /* renamed from: a */
    public final C20592g f33596a;

    /* renamed from: b */
    public final AbstractC19230g f33597b;

    /* renamed from: c */
    public final Context f33598c;

    /* renamed from: d */
    public final AbstractC11706g f33599d;

    /* renamed from: e */
    public final AbstractC11776v f33600e;

    @Inject
    public C11437n1(@Named("features_registry") C20592g c20592g, AbstractC19230g abstractC19230g, Context context, AbstractC11706g abstractC11706g, AbstractC11776v abstractC11776v) {
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC11706g, "voipConfig");
        l.e(abstractC11776v, "voipCallConnectionManager");
        this.f33596a = c20592g;
        this.f33597b = abstractC19230g;
        this.f33598c = context;
        this.f33599d = abstractC11706g;
        this.f33600e = abstractC11776v;
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11434m1
    /* renamed from: a */
    public boolean mo24694a() {
        TelecomManager m13544i0;
        PhoneAccountHandle m24692c;
        boolean z = false;
        if (!m24690e()) {
            return false;
        }
        try {
            m13544i0 = C19291g.m13544i0(this.f33598c);
            m24692c = m24692c();
        } catch (SecurityException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
        if (!m13544i0.isOutgoingCallPermitted(m24692c)) {
            return false;
        }
        l.e("123456", "number");
        Uri fromParts = Uri.fromParts(Scheme.TEL.getValue(), "123456", null);
        l.d(fromParts, "Uri.fromParts(Scheme.TEL.value, number, null)");
        Bundle bundle = new Bundle();
        bundle.putParcelable("android.telecom.extra.PHONE_ACCOUNT_HANDLE", m24692c);
        m13544i0.placeCall(fromParts, bundle);
        this.f33600e.mo24008e();
        z = true;
        return z;
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11434m1
    /* renamed from: b */
    public boolean mo24693b() {
        boolean z = false;
        if (!m24690e()) {
            return false;
        }
        try {
            PhoneAccountHandle m24692c = m24692c();
            TelecomManager m13544i0 = C19291g.m13544i0(this.f33598c);
            Bundle bundle = new Bundle();
            bundle.putParcelable("android.telecom.extra.PHONE_ACCOUNT_HANDLE", m24692c);
            m13544i0.addNewIncomingCall(m24692c, bundle);
            z = true;
        } catch (SecurityException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
        return z;
    }

    /* renamed from: c */
    public final PhoneAccountHandle m24692c() {
        return new PhoneAccountHandle(new ComponentName(this.f33598c, VoipCallConnectionService.class), "TruecallerVoipAccount");
    }

    /* renamed from: d */
    public final boolean m24691d() {
        Object obj;
        C20592g c20592g = this.f33596a;
        String mo10938g = ((AbstractC20597i) c20592g.f57921f2.m10941a(c20592g, C20592g.f57695p6[161])).mo10938g();
        boolean z = true;
        if (!(!r.p(mo10938g))) {
            mo10938g = null;
        }
        if (mo10938g != null) {
            List U = v.U(mo10938g, new String[]{","}, false, 0, 6);
            if (U.size() == 1 && l.a((String) U.get(0), "AllModels")) {
                return true;
            }
            String mo13792e = this.f33597b.mo13792e();
            if (!(!r.p(mo13792e))) {
                mo13792e = null;
            }
            if (mo13792e == null) {
                return false;
            }
            Iterator it = U.iterator();
            do {
                obj = null;
                if (!it.hasNext()) {
                    break;
                }
                obj = it.next();
            } while (!r.n(mo13792e, (String) obj, true));
            if (obj == null) {
                z = false;
            }
            return z;
        }
        return false;
    }

    /* renamed from: e */
    public boolean m24690e() {
        if (!((C11704e) this.f33599d).m24197a() || Build.VERSION.SDK_INT < 26) {
            return false;
        }
        try {
            TelecomManager m13544i0 = C19291g.m13544i0(this.f33598c);
            PhoneAccountHandle m24692c = m24692c();
            PhoneAccount phoneAccount = m13544i0.getPhoneAccount(m24692c);
            boolean m24691d = m24691d();
            if (phoneAccount != null) {
                if (!m24691d) {
                    return true;
                }
                m13544i0.unregisterPhoneAccount(m24692c);
                return false;
            } else if (m24691d) {
                return false;
            } else {
                m13544i0.registerPhoneAccount(PhoneAccount.builder(m24692c, this.f33598c.getString(C4781R.string.voip_text)).setCapabilities(2048).addSupportedUriScheme("tel").build());
                return true;
            }
        } catch (SecurityException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            return false;
        }
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11434m1
    /* renamed from: i */
    public boolean mo24689i(String str) {
        boolean z = false;
        if (!this.f33600e.mo24003j()) {
            return false;
        }
        if ((str == null || r.p(str)) || l.a(str, "123456")) {
            z = true;
        }
        return z;
    }
}
