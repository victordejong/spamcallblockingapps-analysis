package p193e.p194a.p372b0.p430q;

import android.content.Context;
import android.content.res.Resources;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import com.mopub.common.Constants;
import com.razorpay.AnalyticsConstants;
import java.util.List;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.C19234i;
import s1.g;
import s1.u.i;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.b0.q.i0 */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/i0.class */
public final class C8586i0 implements AbstractC8584h0 {

    /* renamed from: a */
    public final g f26405a = C25225a.m3978P1(new C8587a());

    /* renamed from: b */
    public final Context f26406b;

    /* renamed from: c */
    public final AbstractC19223c0 f26407c;

    /* renamed from: e.a.b0.q.i0$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/q/i0$a.class */
    public static final class C8587a extends m implements a<String> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8587a() {
            super(0);
            C8586i0.this = r4;
        }

        public Object invoke() {
            String str;
            Object systemService;
            try {
                systemService = C8586i0.this.f26406b.getSystemService(AnalyticsConstants.PHONE);
            } catch (SecurityException e) {
                str = null;
            }
            if (systemService != null) {
                str = ((TelephonyManager) systemService).getVoiceMailNumber();
                return str;
            }
            throw new NullPointerException("null cannot be cast to non-null type android.telephony.TelephonyManager");
        }
    }

    @Inject
    public C8586i0(Context context, AbstractC19223c0 abstractC19223c0) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC19223c0, "resourceProvider");
        this.f26406b = context;
        this.f26407c = abstractC19223c0;
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8584h0
    /* renamed from: a */
    public boolean mo28293a(CharSequence charSequence) {
        l.e(charSequence, "phoneNumber");
        return C8574c0.m28350i(charSequence);
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8584h0
    /* renamed from: b */
    public boolean mo28292b(String str) {
        Context context = this.f26406b;
        List<String> list = C8574c0.f26390a;
        C19234i c19234i = C19234i.f53604b;
        return !i.l(C19234i.f53603a, str) ? false : PhoneNumberUtils.isLocalEmergencyNumber(context, str);
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8584h0
    /* renamed from: c */
    public String mo28291c() {
        List<String> list = C8574c0.f26390a;
        Integer valueOf = Integer.valueOf(Resources.getSystem().getIdentifier("emergency_call_dialog_number_for_display", "string", Constants.ANDROID_PLATFORM));
        String str = null;
        if (!(valueOf.intValue() != 0)) {
            valueOf = null;
        }
        if (valueOf != null) {
            str = this.f26407c.mo13768b(valueOf.intValue(), new Object[0]);
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0068, code lost:
        if (r7 != false) goto L21;
     */
    @Override // p193e.p194a.p372b0.p430q.AbstractC8584h0
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo28290d(java.lang.String... r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "phoneNumbers"
            s1.z.c.l.e(r0, r1)
            r0 = r3
            s1.g r0 = r0.f26405a
            java.lang.Object r0 = r0.getValue()
            java.lang.String r0 = (java.lang.String) r0
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L29
            r0 = r5
            int r0 = r0.length()
            if (r0 != 0) goto L23
            goto L29
        L23:
            r0 = 0
            r7 = r0
            goto L2c
        L29:
            r0 = 1
            r7 = r0
        L2c:
            r0 = r7
            if (r0 != 0) goto L6e
            r0 = r4
            int r0 = r0.length
            r8 = r0
            r0 = 0
            r7 = r0
        L38:
            r0 = r7
            r1 = r8
            if (r0 >= r1) goto L63
            r0 = r4
            r1 = r7
            r0 = r0[r1]
            r5 = r0
            r0 = r3
            s1.g r0 = r0.f26405a
            java.lang.Object r0 = r0.getValue()
            java.lang.String r0 = (java.lang.String) r0
            r1 = r5
            boolean r0 = s1.z.c.l.a(r0, r1)
            if (r0 == 0) goto L5d
            r0 = 1
            r7 = r0
            goto L66
        L5d:
            int r7 = r7 + 1
            goto L38
        L63:
            r0 = 0
            r7 = r0
        L66:
            r0 = r7
            if (r0 == 0) goto L6e
            goto L70
        L6e:
            r0 = 0
            r6 = r0
        L70:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p430q.C8586i0.mo28290d(java.lang.String[]):boolean");
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8584h0
    /* renamed from: e */
    public boolean mo28289e(String str) {
        l.e(str, "phoneNumber");
        return C8574c0.m28354e(str);
    }
}
