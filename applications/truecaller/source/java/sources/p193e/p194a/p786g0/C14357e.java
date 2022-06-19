package p193e.p194a.p786g0;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.account.network.CheckCredentialsRequestDto;
import com.truecaller.suspension.FeedbackState;
import com.truecaller.suspension.UnsuspensionMethod;
import io.agora.rtc.Constants;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1070n2.p1071a.AbstractC18464a;
import p193e.p194a.p1070n2.p1071a.C18465b;
import p193e.p194a.p1070n2.p1071a.C18469f;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.p1130q0.C19259e;
import p193e.p194a.p678d4.AbstractC12603e;
import p193e.p194a.p786g0.p788j.AbstractC14377j;
import p193e.p194a.p786g0.p789k.AbstractC14385b;
import p193e.p194a.p786g0.p789k.AbstractC14389d;
import p193e.p194a.p786g0.p789k.AbstractC14393f;
import p193e.p194a.p786g0.p789k.C14386c;
import p193e.p194a.p786g0.p790l.AbstractC14400a;
import p193e.p194a.p786g0.p790l.AbstractC14404d;
import p193e.p194a.p786g0.p790l.C14402b;
import p193e.p194a.p786g0.p792n.AbstractC14407a;
import q3.a.h1;
import q3.a.j0;
import q3.a.x2.d1;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.m;
/* renamed from: e.a.g0.e */
/* loaded from: classes14-dex2jar.jar:e/a/g0/e.class */
public final class C14357e implements AbstractC14356d {

    /* renamed from: a */
    public final g f41463a = C25225a.m3978P1(new C14361d());

    /* renamed from: b */
    public String f41464b;

    /* renamed from: c */
    public final Context f41465c;

    /* renamed from: d */
    public final AbstractC14385b f41466d;

    /* renamed from: e */
    public final AbstractC14407a f41467e;

    /* renamed from: f */
    public final AbstractC14400a f41468f;

    /* renamed from: g */
    public final AbstractC19222c f41469g;

    /* renamed from: h */
    public final C19259e f41470h;

    /* renamed from: i */
    public final AbstractC18464a f41471i;

    /* renamed from: j */
    public final AbstractC14352b f41472j;

    /* renamed from: k */
    public final AbstractC14377j f41473k;

    /* renamed from: l */
    public final f f41474l;

    /* renamed from: m */
    public final long f41475m;

    @e(c = "com.truecaller.suspension.SuspensionMangerImpl", f = "SuspensionManager.kt", l = {241}, m = "attemptAccountUnsuspension")
    /* renamed from: e.a.g0.e$a */
    /* loaded from: classes14-dex2jar.jar:e/a/g0/e$a.class */
    public static final class C14358a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f41476d;

        /* renamed from: e */
        public int f41477e;

        /* renamed from: g */
        public Object f41479g;

        /* renamed from: h */
        public Object f41480h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14358a(d dVar) {
            super(dVar);
            C14357e.this = r4;
        }

        /* renamed from: s */
        public final Object m20179s(Object obj) {
            this.f41476d = obj;
            this.f41477e |= Integer.MIN_VALUE;
            return C14357e.this.m20186m(null, null, this);
        }
    }

    /* renamed from: e.a.g0.e$b */
    /* loaded from: classes14-dex2jar.jar:e/a/g0/e$b.class */
    public static final class C14359b extends m implements l<AbstractC14404d, Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14359b() {
            super(1);
            C14357e.this = r4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0031, code lost:
            if (((r0 instanceof com.truecaller.suspension.data.UnSuspendAccountSuccessResponseDto) && s1.z.c.l.a(((com.truecaller.suspension.data.UnSuspendAccountSuccessResponseDto) r0).getReason(), "error")) != false) goto L12;
         */
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m20178d(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = r4
                e.a.g0.l.d r0 = (p193e.p194a.p786g0.p790l.AbstractC14404d) r0
                r4 = r0
                r0 = 0
                r5 = r0
                r0 = r4
                if (r0 == 0) goto L34
                r0 = r3
                e.a.g0.e r0 = p193e.p194a.p786g0.C14357e.this
                java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
                r0 = r4
                boolean r0 = r0 instanceof com.truecaller.suspension.data.UnSuspendAccountSuccessResponseDto
                if (r0 == 0) goto L2e
                r0 = r4
                com.truecaller.suspension.data.UnSuspendAccountSuccessResponseDto r0 = (com.truecaller.suspension.data.UnSuspendAccountSuccessResponseDto) r0
                java.lang.String r0 = r0.getReason()
                java.lang.String r1 = "error"
                boolean r0 = s1.z.c.l.a(r0, r1)
                if (r0 == 0) goto L2e
                r0 = 1
                r6 = r0
                goto L30
            L2e:
                r0 = 0
                r6 = r0
            L30:
                r0 = r6
                if (r0 == 0) goto L36
            L34:
                r0 = 1
                r5 = r0
            L36:
                r0 = r5
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p786g0.C14357e.C14359b.m20178d(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: e.a.g0.e$c */
    /* loaded from: classes14-dex2jar.jar:e/a/g0/e$c.class */
    public static final class C14360c extends m implements l<Integer, AbstractC14404d> {

        /* renamed from: c */
        public final /* synthetic */ String f41483c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC12603e f41484d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14360c(String str, AbstractC12603e abstractC12603e) {
            super(1);
            C14357e.this = r4;
            this.f41483c = str;
            this.f41484d = abstractC12603e;
        }

        /* renamed from: d */
        public Object m20177d(Object obj) {
            AbstractC14404d abstractC14404d;
            ((Number) obj).intValue();
            try {
                C14357e c14357e = C14357e.this;
                abstractC14404d = ((C14402b) c14357e.f41468f).m20144b(this.f41483c, this.f41484d, c14357e.f41467e.getString("iid-02"));
            } catch (Exception e) {
                e.getMessage();
                abstractC14404d = null;
            }
            return abstractC14404d;
        }
    }

    /* renamed from: e.a.g0.e$d */
    /* loaded from: classes14-dex2jar.jar:e/a/g0/e$d.class */
    public static final class C14361d extends m implements a<Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14361d() {
            super(0);
            C14357e.this = r4;
        }

        public Object invoke() {
            boolean z = ((C14386c) C14357e.this.f41466d).m20151a() != null;
            if (!z) {
                C14357e.this.f41473k.mo20161b();
            }
            return Boolean.valueOf(z);
        }
    }

    @e(c = "com.truecaller.suspension.SuspensionMangerImpl$sendFeedbackReport$1", f = "SuspensionManager.kt", l = {195, 208}, m = "invokeSuspend")
    /* renamed from: e.a.g0.e$e */
    /* loaded from: classes14-dex2jar.jar:e/a/g0/e$e.class */
    public static final class C14362e extends i implements p<q3.a.x2.g<? super AbstractC14353c>, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f41486e;

        /* renamed from: f */
        public Object f41487f;

        /* renamed from: g */
        public int f41488g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14362e(d dVar) {
            super(2, dVar);
            C14357e.this = r5;
        }

        /* renamed from: i */
        public final d<s> m20176i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            C14362e c14362e = new C14362e(dVar);
            c14362e.f41486e = obj;
            return c14362e;
        }

        /* renamed from: k */
        public final Object m20175k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            C14362e c14362e = new C14362e(dVar);
            c14362e.f41486e = obj;
            return c14362e.m20174s(s.a);
        }

        /* JADX WARN: Can't wrap try/catch for region: R(18:2|(2:4|(2:6|(3:8|41|42)(2:9|10))(1:11))(2:12|(7:14|33|(1:35)(1:36)|37|(2:39|40)|41|42)(2:15|(2:17|18)))|43|19|(1:21)|22|23|24|(1:26)(1:27)|28|29|30|33|(0)(0)|37|(0)|41|42) */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x013d, code lost:
            r11 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x013f, code lost:
            r11.getMessage();
            p193e.p194a.p786g0.C14357e.this.f41473k.mo20155h(p193e.p194a.p786g0.p788j.AbstractC14377j.AbstractC14378a.C14379a.f41513a);
         */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0165  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x016d  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x01aa  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m20174s(java.lang.Object r6) {
            /*
                Method dump skipped, instructions count: 432
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p786g0.C14357e.C14362e.m20174s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.suspension.SuspensionMangerImpl$unsuspendAccount$1", f = "SuspensionManager.kt", l = {Constants.ERR_PUBLISH_STREAM_NOT_FOUND, Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED, 158, 164, 165, 167, 170}, m = "invokeSuspend")
    /* renamed from: e.a.g0.e$f */
    /* loaded from: classes14-dex2jar.jar:e/a/g0/e$f.class */
    public static final class C14363f extends i implements p<q3.a.x2.g<? super AbstractC14353c>, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f41490e;

        /* renamed from: f */
        public Object f41491f;

        /* renamed from: g */
        public int f41492g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14363f(d dVar) {
            super(2, dVar);
            C14357e.this = r5;
        }

        /* renamed from: i */
        public final d<s> m20173i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            C14363f c14363f = new C14363f(dVar);
            c14363f.f41490e = obj;
            return c14363f;
        }

        /* renamed from: k */
        public final Object m20172k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            C14363f c14363f = new C14363f(dVar);
            c14363f.f41490e = obj;
            return c14363f.m20171s(s.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:35:0x01ce  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x01d1  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x01e5  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x021f  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x0293  */
        /* JADX WARN: Removed duplicated region for block: B:57:0x0296  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x02aa  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x02e5  */
        /* JADX WARN: Type inference failed for: r0v135, types: [e.a.g0.k.e] */
        /* JADX WARN: Type inference failed for: r0v155, types: [e.a.g0.k.e] */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m20171s(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 789
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p786g0.C14357e.C14363f.m20171s(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public C14357e(Context context, AbstractC14385b abstractC14385b, AbstractC14407a abstractC14407a, AbstractC14400a abstractC14400a, AbstractC19222c abstractC19222c, C19259e c19259e, AbstractC18464a abstractC18464a, AbstractC14352b abstractC14352b, AbstractC14377j abstractC14377j, @Named("IO") f fVar, @Named("pu+rd") long j) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(abstractC14385b, "captchaHelper");
        s1.z.c.l.e(abstractC14407a, "suspensionSettings");
        s1.z.c.l.e(abstractC14400a, "suspensionRequestHelper");
        s1.z.c.l.e(abstractC19222c, "clock");
        s1.z.c.l.e(c19259e, "retryHelper");
        s1.z.c.l.e(abstractC18464a, "accountRequestHelper");
        s1.z.c.l.e(abstractC14352b, "accountSuspensionListener");
        s1.z.c.l.e(abstractC14377j, "analyticsManager");
        s1.z.c.l.e(fVar, "ioContext");
        this.f41465c = context;
        this.f41466d = abstractC14385b;
        this.f41467e = abstractC14407a;
        this.f41468f = abstractC14400a;
        this.f41469g = abstractC19222c;
        this.f41470h = c19259e;
        this.f41471i = abstractC18464a;
        this.f41472j = abstractC14352b;
        this.f41473k = abstractC14377j;
        this.f41474l = fVar;
        this.f41475m = j;
    }

    @Override // p193e.p194a.p786g0.AbstractC14356d
    /* renamed from: a */
    public void mo20198a() {
        AbstractC14389d m20150b = ((C14386c) this.f41466d).m20150b();
        if (m20150b != null) {
            m20150b.mo20149a();
        }
    }

    @Override // p193e.p194a.p786g0.AbstractC14356d
    /* renamed from: b */
    public boolean mo20197b() {
        boolean z = false;
        boolean z2 = this.f41467e.getBoolean("as-11", false);
        if (z2) {
            synchronized (this) {
                Long l = this.f41467e.getLong("stet-12", 0L);
                s1.z.c.l.d(l, "suspensionSettings.getLo…NSION_TTL_EXPIRE_TIME, 0)");
                long longValue = l.longValue();
                boolean z3 = longValue == 0;
                if (this.f41469g.mo13819c() > longValue) {
                    z = true;
                }
                if (z3 | z) {
                    s1.a.a.a.v0.f.d.w2(h1.a, this.f41474l, (j0) null, new C14364f(this, null), 2, (Object) null);
                }
            }
        }
        return z2;
    }

    @Override // p193e.p194a.p786g0.AbstractC14356d
    /* renamed from: c */
    public void mo20196c() {
        AbstractC14389d m20150b = ((C14386c) this.f41466d).m20150b();
        if (m20150b != null) {
            m20150b.mo20147c();
        }
    }

    @Override // p193e.p194a.p786g0.AbstractC14356d
    /* renamed from: d */
    public q3.a.x2.f<AbstractC14353c> mo20195d() {
        return new d1(new C14362e(null));
    }

    @Override // p193e.p194a.p786g0.AbstractC14356d
    /* renamed from: e */
    public q3.a.x2.f<AbstractC14353c> mo20194e() {
        return new d1(new C14363f(null));
    }

    @Override // p193e.p194a.p786g0.AbstractC14356d
    /* renamed from: f */
    public void mo20193f(String str) {
        s1.z.c.l.e(str, "installationId");
        this.f41467e.putString("iid-02", str);
    }

    @Override // p193e.p194a.p786g0.AbstractC14356d
    /* renamed from: g */
    public void mo20192g(String str, boolean z) {
        if (m20185n() == null || z) {
            this.f41467e.putString("ufe-07", str);
        }
    }

    @Override // p193e.p194a.p786g0.AbstractC14356d
    /* renamed from: h */
    public void mo20191h(long j) {
        this.f41467e.putBoolean("as-11", true);
        m20181r(j);
        this.f41473k.mo20162a();
        this.f41472j.mo20201a();
    }

    @Override // p193e.p194a.p786g0.AbstractC14356d
    /* renamed from: i */
    public void mo20190i() {
        m20180s(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r1v1 */
    @Override // p193e.p194a.p786g0.AbstractC14356d
    /* renamed from: j */
    public boolean mo20189j() {
        C18469f c18469f;
        try {
            c18469f = ((C18465b) this.f41471i).m14904a(new CheckCredentialsRequestDto(CheckCredentialsRequestDto.REASON_RECEIVED_UNAUTHORIZED, null, null, 6, null), this.f41467e.getString("iid-02"));
        } catch (IOException e) {
            e.getMessage();
            c18469f = null;
        }
        boolean z = true;
        if (c18469f instanceof C18469f) {
            C18469f c18469f2 = c18469f;
            if (c18469f2.m14884a()) {
                Long l = c18469f2.f52149c;
                m20181r((l != null ? l.longValue() : false) == true ? 1L : 0L);
                return z;
            }
        }
        if (c18469f != null) {
            m20180s(false);
            z = false;
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    @Override // p193e.p194a.p786g0.AbstractC14356d
    /* renamed from: k */
    public UnsuspensionMethod mo20188k() {
        UnsuspensionMethod.C4586a c4586a;
        ?? r10;
        Integer num = this.f41467e.getInt("usfs-03", 0);
        if ((num != null && num.intValue() == FeedbackState.RESULT_SUCCESS.getValue()) == true) {
            c4586a = UnsuspensionMethod.C4586a.f15167a;
        } else {
            if ((!((Boolean) this.f41463a.getValue()).booleanValue()) || (m20184o() >= 5)) {
                String m20185n = m20185n();
                Integer num2 = this.f41467e.getInt("usfs-03", 0);
                int value = FeedbackState.RESULT_ERROR.getValue();
                if (num2 == null) {
                    r10 = false;
                } else {
                    r10 = false;
                    if (num2.intValue() == value) {
                        r10 = true;
                    }
                }
                c4586a = new UnsuspensionMethod.Support(m20185n, r10 != false ? UnsuspensionMethod.Support.Error.Feedback : !m20183p() ? UnsuspensionMethod.Support.Error.Recaptcha : null);
            } else {
                ?? r14 = false;
                Long l = this.f41467e.getLong("uitv-06", 0L);
                s1.z.c.l.d(l, "suspensionSettings.getLo…Settings.THROTTLE_TTL, 0)");
                long longValue = l.longValue();
                Long l2 = this.f41467e.getLong("utvt-04", 0L);
                s1.z.c.l.d(l2, "suspensionSettings.getLo…THROTTLE_TTL_SET_TIME, 0)");
                long longValue2 = l2.longValue();
                if (this.f41469g.mo13819c() >= longValue2) {
                    r14 = Math.max(longValue - (this.f41469g.mo13819c() - longValue2), 0L);
                }
                c4586a = new UnsuspensionMethod.C4587b(r14 == true ? 1L : 0L, m20183p());
            }
        }
        return c4586a;
    }

    @Override // p193e.p194a.p786g0.AbstractC14356d
    /* renamed from: l */
    public void mo20187l() {
        this.f41467e.m20141c(this.f41465c);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x014c, code lost:
        if (r0.equals(com.truecaller.suspension.data.UnSuspendAccountSuccessResponseDto.REASON_INVALID) == false) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01da  */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m20186m(java.lang.String r9, p193e.p194a.p678d4.AbstractC12603e r10, s1.w.d<? super java.lang.Boolean> r11) {
        /*
            Method dump skipped, instructions count: 566
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p786g0.C14357e.m20186m(java.lang.String, e.a.d4.e, s1.w.d):java.lang.Object");
    }

    /* renamed from: n */
    public final String m20185n() {
        return this.f41467e.getString("ufe-07");
    }

    /* renamed from: o */
    public final int m20184o() {
        Integer num = this.f41467e.getInt("urft-09", 0);
        s1.z.c.l.d(num, "suspensionSettings.getIn…ECAPTCHA_FAILED_TRIES, 0)");
        return Math.max(num.intValue(), 0);
    }

    /* renamed from: p */
    public final boolean m20183p() {
        String string = this.f41467e.getString("urle-01");
        return string == null || string.length() == 0;
    }

    /* renamed from: q */
    public final void m20182q(AbstractC14393f abstractC14393f) {
        this.f41467e.putString("urle-01", C17422k.m16111G(abstractC14393f));
        this.f41467e.putInt("urft-09", m20184o() + 1);
    }

    /* renamed from: r */
    public final void m20181r(long j) {
        this.f41467e.putLong("stet-12", TimeUnit.SECONDS.toMillis(j) + this.f41469g.mo13819c());
    }

    /* renamed from: s */
    public final void m20180s(boolean z) {
        if (!z) {
            this.f41473k.mo20159d();
        }
        mo20187l();
        this.f41472j.mo20199d();
    }

    @Override // p193e.p194a.p786g0.AbstractC14356d
    public void setName(String str) {
        this.f41464b = str;
    }
}
