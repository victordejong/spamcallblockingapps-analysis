package p193e.p194a.p703e3.p710k;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import q3.a.i0;
import s1.f0.r;
import s1.f0.v;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.e3.k.q */
/* loaded from: classes6-dex2jar.jar:e/a/e3/k/q.class */
public final class C13462q implements AbstractC13461p {

    /* renamed from: a */
    public final f f39070a;

    /* renamed from: b */
    public final Context f39071b;

    /* renamed from: c */
    public final AbstractC13430f f39072c;

    /* renamed from: d */
    public final AbstractC8621z f39073d;

    /* renamed from: e */
    public final AbstractC19230g f39074e;

    /* renamed from: f */
    public final C20592g f39075f;

    @e(c = "com.truecaller.call_alert.utils.CallSilenceHelperImpl$shouldSilenceRingtone$2", f = "CallSilenceHelper.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.e3.k.q$a */
    /* loaded from: classes6-dex2jar.jar:e/a/e3/k/q$a.class */
    public static final class C13463a extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f39077f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13463a(String str, d dVar) {
            super(2, dVar);
            C13462q.this = r5;
            this.f39077f = str;
        }

        /* renamed from: i */
        public final d<s> m21790i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C13463a(this.f39077f, dVar);
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x00ae, code lost:
            if ((r0 >= r0.getTimeInMillis() - ((long) 300000)) != false) goto L15;
         */
        /* renamed from: k */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m21789k(java.lang.Object r8, java.lang.Object r9) {
            /*
                r7 = this;
                r0 = r9
                s1.w.d r0 = (s1.w.d) r0
                r9 = r0
                r0 = r9
                java.lang.String r1 = "completion"
                s1.z.c.l.e(r0, r1)
                r0 = r7
                e.a.e3.k.q r0 = p193e.p194a.p703e3.p710k.C13462q.this
                r10 = r0
                r0 = r7
                java.lang.String r0 = r0.f39077f
                r8 = r0
                r0 = r9
                s1.w.f r0 = r0.getContext()
                s1.s r0 = s1.s.a
                r11 = r0
                java.lang.Boolean r0 = java.lang.Boolean.FALSE
                r9 = r0
                r0 = r11
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                r0 = r10
                e.a.b0.q.z r0 = r0.f39073d
                r1 = r8
                java.lang.String r0 = r0.mo28181j(r1)
                r12 = r0
                r0 = r9
                r8 = r0
                r0 = r12
                if (r0 == 0) goto Lbd
                r0 = r10
                e.a.e3.k.f r0 = r0.f39072c
                java.lang.String r1 = "callSilenceNormalizedNumber"
                java.lang.String r0 = r0.getString(r1)
                r11 = r0
                r0 = r9
                r8 = r0
                r0 = r11
                if (r0 == 0) goto Lbd
                r0 = r10
                e.a.e3.k.f r0 = r0.f39072c
                java.lang.String r1 = "callSilenceTimestamp"
                r2 = 0
                long r0 = r0.getLong(r1, r2)
                r13 = r0
                r0 = r10
                e.a.e3.k.f r0 = r0.f39072c
                java.lang.String r1 = "callSilenceNormalizedNumber"
                r0.remove(r1)
                r0 = r10
                e.a.e3.k.f r0 = r0.f39072c
                java.lang.String r1 = "callSilenceTimestamp"
                r0.remove(r1)
                r0 = r10
                java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
                r0 = r12
                r1 = r11
                boolean r0 = s1.z.c.l.a(r0, r1)
                r15 = r0
                r0 = 1
                r16 = r0
                r0 = r15
                if (r0 == 0) goto Lb4
                java.util.Calendar r0 = java.util.Calendar.getInstance()
                r8 = r0
                r0 = r8
                java.lang.String r1 = "Calendar.getInstance()"
                s1.z.c.l.d(r0, r1)
                r0 = r13
                r1 = r8
                long r1 = r1.getTimeInMillis()
                r2 = 300000(0x493e0, float:4.2039E-40)
                long r2 = (long) r2
                long r1 = r1 - r2
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto La9
                r0 = 1
                r17 = r0
                goto Lac
            La9:
                r0 = 0
                r17 = r0
            Lac:
                r0 = r17
                if (r0 == 0) goto Lb4
                goto Lb7
            Lb4:
                r0 = 0
                r16 = r0
            Lb7:
                r0 = r16
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
                r8 = r0
            Lbd:
                r0 = r8
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p703e3.p710k.C13462q.C13463a.m21789k(java.lang.Object, java.lang.Object):java.lang.Object");
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0096, code lost:
            if ((r0 >= r0.getTimeInMillis() - ((long) 300000)) != false) goto L15;
         */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m21788s(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Boolean r0 = java.lang.Boolean.FALSE
                r9 = r0
                r0 = r8
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                r0 = r7
                e.a.e3.k.q r0 = p193e.p194a.p703e3.p710k.C13462q.this
                e.a.b0.q.z r0 = r0.f39073d
                r1 = r7
                java.lang.String r1 = r1.f39077f
                java.lang.String r0 = r0.mo28181j(r1)
                r8 = r0
                r0 = r8
                if (r0 == 0) goto La5
                r0 = r7
                e.a.e3.k.q r0 = p193e.p194a.p703e3.p710k.C13462q.this
                e.a.e3.k.f r0 = r0.f39072c
                java.lang.String r1 = "callSilenceNormalizedNumber"
                java.lang.String r0 = r0.getString(r1)
                r10 = r0
                r0 = r10
                if (r0 == 0) goto La5
                r0 = r7
                e.a.e3.k.q r0 = p193e.p194a.p703e3.p710k.C13462q.this
                e.a.e3.k.f r0 = r0.f39072c
                java.lang.String r1 = "callSilenceTimestamp"
                r2 = 0
                long r0 = r0.getLong(r1, r2)
                r11 = r0
                r0 = r7
                e.a.e3.k.q r0 = p193e.p194a.p703e3.p710k.C13462q.this
                r9 = r0
                r0 = r9
                e.a.e3.k.f r0 = r0.f39072c
                java.lang.String r1 = "callSilenceNormalizedNumber"
                r0.remove(r1)
                r0 = r9
                e.a.e3.k.f r0 = r0.f39072c
                java.lang.String r1 = "callSilenceTimestamp"
                r0.remove(r1)
                r0 = r7
                e.a.e3.k.q r0 = p193e.p194a.p703e3.p710k.C13462q.this
                java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
                r0 = r8
                r1 = r10
                boolean r0 = s1.z.c.l.a(r0, r1)
                r13 = r0
                r0 = 1
                r14 = r0
                r0 = r13
                if (r0 == 0) goto L9c
                java.util.Calendar r0 = java.util.Calendar.getInstance()
                r8 = r0
                r0 = r8
                java.lang.String r1 = "Calendar.getInstance()"
                s1.z.c.l.d(r0, r1)
                r0 = r11
                r1 = r8
                long r1 = r1.getTimeInMillis()
                r2 = 300000(0x493e0, float:4.2039E-40)
                long r2 = (long) r2
                long r1 = r1 - r2
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L91
                r0 = 1
                r15 = r0
                goto L94
            L91:
                r0 = 0
                r15 = r0
            L94:
                r0 = r15
                if (r0 == 0) goto L9c
                goto L9f
            L9c:
                r0 = 0
                r14 = r0
            L9f:
                r0 = r14
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
                return r0
            La5:
                r0 = r9
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p703e3.p710k.C13462q.C13463a.m21788s(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public C13462q(@Named("IO") f fVar, Context context, AbstractC13430f abstractC13430f, AbstractC8621z abstractC8621z, AbstractC19230g abstractC19230g, @Named("features_registry") C20592g c20592g) {
        l.e(fVar, "ioContext");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC13430f, "settings");
        l.e(abstractC8621z, "phoneNumberHelper");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(c20592g, "featuresRegistry");
        this.f39070a = fVar;
        this.f39071b = context;
        this.f39072c = abstractC13430f;
        this.f39073d = abstractC8621z;
        this.f39074e = abstractC19230g;
        this.f39075f = c20592g;
    }

    @Override // p193e.p194a.p703e3.p710k.AbstractC13461p
    /* renamed from: a */
    public boolean mo21793a(boolean z) {
        boolean z2;
        Object obj;
        C20592g c20592g = this.f39075f;
        String mo10938g = ((AbstractC20597i) c20592g.f57951j0.m10941a(c20592g, C20592g.f57695p6[59])).mo10938g();
        if (!(!r.p(mo10938g))) {
            mo10938g = null;
        }
        if (mo10938g != null) {
            List U = v.U(mo10938g, new String[]{","}, false, 0, 6);
            String mo13792e = this.f39074e.mo13792e();
            if (!(!r.p(mo13792e))) {
                mo13792e = null;
            }
            if (mo13792e != null) {
                Iterator it = U.iterator();
                do {
                    obj = null;
                    if (!it.hasNext()) {
                        break;
                    }
                    obj = it.next();
                } while (!r.n(mo13792e, (String) obj, true));
                if (obj != null) {
                    z2 = false;
                    return !z2 && !z && C19291g.m13630F(this.f39071b).getRingerMode() != 0;
                }
            }
        }
        z2 = true;
        return !z2 && !z && C19291g.m13630F(this.f39071b).getRingerMode() != 0;
    }

    @Override // p193e.p194a.p703e3.p710k.AbstractC13461p
    /* renamed from: b */
    public void mo21792b(String str) {
        l.e(str, "normalizedNumber");
        this.f39072c.putString("callSilenceNormalizedNumber", str);
        AbstractC13430f abstractC13430f = this.f39072c;
        Calendar calendar = Calendar.getInstance();
        l.d(calendar, "Calendar.getInstance()");
        abstractC13430f.putLong("callSilenceTimestamp", calendar.getTimeInMillis());
    }

    @Override // p193e.p194a.p703e3.p710k.AbstractC13461p
    /* renamed from: d */
    public Object mo21791d(String str, d<? super Boolean> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f39070a, new C13463a(str, null), dVar);
    }
}
