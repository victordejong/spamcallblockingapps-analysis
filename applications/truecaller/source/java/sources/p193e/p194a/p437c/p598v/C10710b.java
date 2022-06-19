package p193e.p194a.p437c.p598v;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.account.network.TokenResponseDto;
import com.truecaller.common.payments.senderinfo.SenderInfo;
import com.truecaller.insights.models.InsightsReminder;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import com.truecaller.insights.reminders.actions.binders.BillReminderMeta;
import com.truecaller.insights.reminders.models.DeeplinkActionType;
import com.truecaller.insights.reminders.rules.ReminderRule;
import e.m.e.k;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p419m.p423d.AbstractC8514a;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p526c.p530f.AbstractC10006l;
import p193e.p194a.p437c.p526c.p530f.AbstractC10009n;
import p193e.p194a.p437c.p526c.p530f.C10007m;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import p193e.p194a.p437c.p598v.p599f.p600a.AbstractC10719b;
import p193e.p194a.p437c.p598v.p599f.p600a.C10718a;
import p193e.p194a.p437c.p598v.p599f.p601b.AbstractC10722b;
import p193e.p194a.p437c.p598v.p599f.p601b.C10720a;
import p193e.p194a.p437c.p598v.p602g.C10724b;
import p193e.p194a.p437c.p598v.p602g.C10726d;
import p193e.p194a.p437c.p598v.p603h.AbstractC10738e;
import p193e.p194a.p437c.p598v.p603h.C10740f;
import p193e.p194a.p437c.p598v.p603h.C10741g;
import p193e.p194a.p437c.p598v.p604i.C10748g;
import p193e.p194a.p437c.p598v.p605j.C10749a;
import p193e.p194a.p437c.p606w.AbstractC10854x;
import q3.a.i0;
import q3.a.x2.f;
import s1.f0.r;
import s1.s;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.c.v.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/v/b.class */
public final class C10710b implements AbstractC10709a {

    /* renamed from: a */
    public final k f31834a = new k();

    /* renamed from: b */
    public final List<ReminderRule> f31835b = C25225a.m3962T1(new ReminderRule("BILL", C25225a.m3962T1(5), C25225a.m3962T1(-1)));

    /* renamed from: c */
    public final AbstractC10006l f31836c;

    /* renamed from: d */
    public final a<Set<AbstractC10719b>> f31837d;

    /* renamed from: e */
    public final a<Set<AbstractC10722b>> f31838e;

    /* renamed from: f */
    public final AbstractC10009n f31839f;

    /* renamed from: g */
    public final AbstractC10854x f31840g;

    /* renamed from: h */
    public final C10749a f31841h;

    /* renamed from: i */
    public final AbstractC9691j f31842i;

    /* renamed from: j */
    public final AbstractC8514a f31843j;

    /* renamed from: k */
    public final C20592g f31844k;

    /* renamed from: l */
    public final C10724b f31845l;

    /* renamed from: m */
    public final C10726d f31846m;

    /* renamed from: n */
    public final AbstractC10060c f31847n;

    @e(c = "com.truecaller.insights.reminders.InsightsReminderManagerImpl", f = "InsightsReminderManager.kt", l = {93, 94, 96}, m = "createRemindersForBills")
    /* renamed from: e.a.c.v.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/v/b$a.class */
    public static final class C10711a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f31848d;

        /* renamed from: e */
        public int f31849e;

        /* renamed from: g */
        public Object f31851g;

        /* renamed from: h */
        public Object f31852h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10711a(d dVar) {
            super(dVar);
            C10710b.this = r4;
        }

        /* renamed from: s */
        public final Object m25694s(Object obj) {
            this.f31848d = obj;
            this.f31849e |= Integer.MIN_VALUE;
            return C10710b.this.mo25698i(null, this);
        }
    }

    @e(c = "com.truecaller.insights.reminders.InsightsReminderManagerImpl", f = "InsightsReminderManager.kt", l = {128}, m = "filterAllActiveReminderForTomorrow")
    /* renamed from: e.a.c.v.b$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/v/b$b.class */
    public static final class C10712b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f31853d;

        /* renamed from: e */
        public int f31854e;

        /* renamed from: g */
        public Object f31856g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10712b(d dVar) {
            super(dVar);
            C10710b.this = r4;
        }

        /* renamed from: s */
        public final Object m25693s(Object obj) {
            this.f31853d = obj;
            this.f31854e |= Integer.MIN_VALUE;
            return C10710b.this.m25696k(this);
        }
    }

    @e(c = "com.truecaller.insights.reminders.InsightsReminderManagerImpl$handleDeeplinkActionSync$1", f = "InsightsReminderManager.kt", l = {203}, m = "invokeSuspend")
    /* renamed from: e.a.c.v.b$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/v/b$c.class */
    public static final class C10713c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f31857e;

        /* renamed from: g */
        public final /* synthetic */ Context f31859g;

        /* renamed from: h */
        public final /* synthetic */ C10748g f31860h;

        /* renamed from: i */
        public final /* synthetic */ String f31861i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10713c(Context context, C10748g c10748g, String str, d dVar) {
            super(2, dVar);
            C10710b.this = r5;
            this.f31859g = context;
            this.f31860h = c10748g;
            this.f31861i = str;
        }

        /* renamed from: i */
        public final d<s> m25692i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10713c(this.f31859g, this.f31860h, this.f31861i, dVar);
        }

        /* renamed from: k */
        public final Object m25691k(Object obj, Object obj2) {
            return m25692i(obj, (d) obj2).m25690s(s.a);
        }

        /* renamed from: s */
        public final Object m25690s(Object obj) {
            s1.w.j.a aVar = s.a;
            s1.w.j.a aVar2 = s1.w.j.a.a;
            int i = this.f31857e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C10710b c10710b = C10710b.this;
                Context context = this.f31859g;
                C10748g c10748g = this.f31860h;
                String str = this.f31861i;
                this.f31857e = 1;
                Objects.requireNonNull(c10710b);
                if (!l.a(c10748g.f31937c, AbstractC10738e.C10739a.f31897c)) {
                    throw new s1.i();
                }
                Object obj2 = c10710b.f31838e.get();
                l.d(obj2, "actionHandlers.get()");
                for (AbstractC10722b abstractC10722b : (Iterable) obj2) {
                    if (abstractC10722b instanceof C10720a) {
                        c10710b.m25695l("click", (str == null || DeeplinkActionType.ACTION_CARD != DeeplinkActionType.valueOf(str)) ? l.a(c10748g.f31935a.getSubCategory(), "prepaid_expiry") ? "recharge" : "pay_bill" : "show_bill", c10748g.f31935a);
                        s1.w.j.a mo25681a = abstractC10722b.mo25681a(context, c10748g, this);
                        if (mo25681a != aVar2) {
                            mo25681a = aVar;
                        }
                        if (mo25681a == aVar2) {
                            return aVar2;
                        }
                    }
                }
                throw new NoSuchElementException("Collection contains no element matching the predicate.");
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return aVar;
        }
    }

    @e(c = "com.truecaller.insights.reminders.InsightsReminderManagerImpl", f = "InsightsReminderManager.kt", l = {230, 233, 235}, m = "scheduleAlarmForNotification")
    /* renamed from: e.a.c.v.b$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/v/b$d.class */
    public static final class C10714d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f31862d;

        /* renamed from: e */
        public int f31863e;

        /* renamed from: g */
        public Object f31865g;

        /* renamed from: h */
        public Object f31866h;

        /* renamed from: i */
        public Object f31867i;

        /* renamed from: j */
        public Object f31868j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10714d(d dVar) {
            super(dVar);
            C10710b.this = r4;
        }

        /* renamed from: s */
        public final Object m25689s(Object obj) {
            this.f31862d = obj;
            this.f31863e |= Integer.MIN_VALUE;
            return C10710b.this.mo25704c(this);
        }
    }

    @Inject
    public C10710b(AbstractC10006l abstractC10006l, a<Set<AbstractC10719b>> aVar, a<Set<AbstractC10722b>> aVar2, AbstractC10009n abstractC10009n, AbstractC10854x abstractC10854x, C10749a c10749a, AbstractC9691j abstractC9691j, AbstractC8514a abstractC8514a, @Named("features_registry") C20592g c20592g, C10724b c10724b, C10726d c10726d, AbstractC10060c abstractC10060c, Context context) {
        l.e(abstractC10006l, "reminderUseCases");
        l.e(aVar, "actionBinders");
        l.e(aVar2, "actionHandlers");
        l.e(abstractC10009n, "stateUseCases");
        l.e(abstractC10854x, "reminderRepository");
        l.e(c10749a, "reminderRulesHelper");
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(abstractC8514a, "senderInfoManager");
        l.e(c20592g, "featuresRegistry");
        l.e(c10724b, "alarmHelper");
        l.e(c10726d, "reminderAlarmManager");
        l.e(abstractC10060c, "insightsAnalyticsManager");
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f31836c = abstractC10006l;
        this.f31837d = aVar;
        this.f31838e = aVar2;
        this.f31839f = abstractC10009n;
        this.f31840g = abstractC10854x;
        this.f31841h = c10749a;
        this.f31842i = abstractC9691j;
        this.f31843j = abstractC8514a;
        this.f31844k = c20592g;
        this.f31845l = c10724b;
        this.f31846m = c10726d;
        this.f31847n = abstractC10060c;
    }

    @Override // p193e.p194a.p437c.p598v.AbstractC10709a
    /* renamed from: a */
    public f<List<InsightsReminder>> mo25706a() {
        return ((C10007m) this.f31836c).f29841c.mo26992a();
    }

    @Override // p193e.p194a.p437c.p598v.AbstractC10709a
    /* renamed from: b */
    public Object mo25705b(d<? super s> dVar) {
        Object m26933a = ((C10007m) this.f31836c).m26933a(dVar);
        return m26933a == s1.w.j.a.a ? m26933a : s.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x039b  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x03ae  */
    /* JADX WARN: Type inference failed for: r0v139, types: [long] */
    /* JADX WARN: Type inference failed for: r0v151, types: [long] */
    /* JADX WARN: Type inference failed for: r0v163, types: [long] */
    /* JADX WARN: Type inference failed for: r0v164, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x0372 -> B:57:0x037d). Please submit an issue!!! */
    @Override // p193e.p194a.p437c.p598v.AbstractC10709a
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo25704c(s1.w.d<? super s1.s> r13) {
        /*
            Method dump skipped, instructions count: 1294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p598v.C10710b.mo25704c(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0039, code lost:
        if (r6 == r0) goto L8;
     */
    @Override // p193e.p194a.p437c.p598v.AbstractC10709a
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo25703d(java.lang.String r6, p193e.p194a.p437c.p598v.p604i.C10748g r7, s1.w.d<? super s1.s> r8) {
        /*
            r5 = this;
            s1.w.j.a r0 = s1.w.j.a.a
            r8 = r0
            r0 = r5
            java.lang.String r1 = "click"
            java.lang.String r2 = "already_paid"
            r3 = r7
            com.truecaller.insights.reminders.actions.binders.BillReminderMeta r3 = r3.f31935a
            r0.m25695l(r1, r2, r3)
            r0 = r5
            e.a.c.c.f.l r0 = r0.f31836c
            e.a.c.c.f.m r0 = (p193e.p194a.p437c.p526c.p530f.C10007m) r0
            r9 = r0
            r0 = r9
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            s1.s r0 = s1.s.a
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L37
            r0 = r9
            e.a.c.c.d.y r0 = r0.f29841c
            r1 = r6
            r0.mo26983j(r1)
            goto L3f
        L37:
            r0 = r6
            r1 = r8
            if (r0 != r1) goto L3f
            goto L41
        L3f:
            r0 = r7
            r6 = r0
        L41:
            r0 = r6
            r1 = r8
            if (r0 != r1) goto L48
            r0 = r6
            return r0
        L48:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p598v.C10710b.mo25703d(java.lang.String, e.a.c.v.i.g, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p598v.AbstractC10709a
    /* renamed from: e */
    public void mo25702e(Context context, C10748g c10748g, String str) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(c10748g, "paramsReminder");
        s1.a.a.a.v0.f.d.c3((s1.w.f) null, new C10713c(context, c10748g, str, null), 1, (Object) null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0038, code lost:
        if (r6 == r0) goto L8;
     */
    @Override // p193e.p194a.p437c.p598v.AbstractC10709a
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo25701f(java.lang.String r6, p193e.p194a.p437c.p598v.p604i.C10748g r7, s1.w.d<? super s1.s> r8) {
        /*
            r5 = this;
            s1.w.j.a r0 = s1.w.j.a.a
            r8 = r0
            r0 = r5
            java.lang.String r1 = "dismiss"
            r2 = 0
            r3 = r7
            com.truecaller.insights.reminders.actions.binders.BillReminderMeta r3 = r3.f31935a
            r0.m25695l(r1, r2, r3)
            r0 = r5
            e.a.c.c.f.l r0 = r0.f31836c
            e.a.c.c.f.m r0 = (p193e.p194a.p437c.p526c.p530f.C10007m) r0
            r9 = r0
            r0 = r9
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            s1.s r0 = s1.s.a
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L36
            r0 = r9
            e.a.c.c.d.y r0 = r0.f29841c
            r1 = r6
            r2 = 1
            r0.mo26986g(r1, r2)
            goto L3e
        L36:
            r0 = r6
            r1 = r8
            if (r0 != r1) goto L3e
            goto L40
        L3e:
            r0 = r7
            r6 = r0
        L40:
            r0 = r6
            r1 = r8
            if (r0 != r1) goto L47
            r0 = r6
            return r0
        L47:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p598v.C10710b.mo25701f(java.lang.String, e.a.c.v.i.g, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p598v.AbstractC10709a
    /* renamed from: g */
    public Object mo25700g(List<InsightsReminder> list, d<? super List<C10741g>> dVar) {
        ArrayList arrayList = new ArrayList();
        for (InsightsReminder insightsReminder : list) {
            C10480a.m25888u2(insightsReminder.getCategory());
            AbstractC10738e.C10739a c10739a = AbstractC10738e.C10739a.f31897c;
            if (!l.a(c10739a, c10739a)) {
                throw new s1.i();
            }
            Object obj = this.f31837d.get();
            l.d(obj, "actionBinders.get()");
            for (AbstractC10719b abstractC10719b : (Iterable) obj) {
                if (abstractC10719b instanceof C10718a) {
                    s1.k<String, SenderInfo> mo28418d = this.f31843j.mo28418d(insightsReminder.getVendorName());
                    C10740f mo25683b = abstractC10719b.mo25683b(insightsReminder, mo28418d);
                    C10741g mo25684a = mo25683b != null ? abstractC10719b.mo25684a(insightsReminder, mo25683b, mo28418d) : null;
                    if (mo25684a != null) {
                        arrayList.add(mo25684a);
                    }
                }
            }
            throw new NoSuchElementException("Collection contains no element matching the predicate.");
        }
        return arrayList;
    }

    @Override // p193e.p194a.p437c.p598v.AbstractC10709a
    /* renamed from: h */
    public Object mo25699h(String[] strArr, d<? super List<InsightsReminder>> dVar) {
        return ((C10007m) this.f31836c).f29841c.mo26987f(strArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:83:0x02ab, code lost:
        if (r15 == null) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x02c9, code lost:
        if (r11.doubleValue() == r15.doubleValue()) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x02cc, code lost:
        r10 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0348  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0371  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0199  */
    @Override // p193e.p194a.p437c.p598v.AbstractC10709a
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo25698i(java.util.Date r6, s1.w.d<? super s1.s> r7) {
        /*
            Method dump skipped, instructions count: 886
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p598v.C10710b.mo25698i(java.util.Date, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p598v.AbstractC10709a
    /* renamed from: j */
    public Object mo25697j(String[] strArr, d<? super s> dVar) {
        ((C10007m) this.f31836c).f29841c.mo26991b(strArr);
        return s.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01f1  */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m25696k(s1.w.d<? super java.util.List<com.truecaller.insights.models.InsightsReminder>> r7) {
        /*
            Method dump skipped, instructions count: 760
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p598v.C10710b.m25696k(s1.w.d):java.lang.Object");
    }

    /* renamed from: l */
    public final void m25695l(String str, String str2, BillReminderMeta billReminderMeta) {
        String str3;
        if (l.a(billReminderMeta.getSubCategory(), "prepaid_expiry")) {
            str3 = "bill_prepaid";
        } else {
            String utilityType = billReminderMeta.getUtilityType();
            if (utilityType == null || r.p(utilityType)) {
                str3 = "bill_unknown";
            } else if (r.n(billReminderMeta.getUtilityType(), "mobile", true)) {
                str3 = "bill_postpaid";
            } else {
                StringBuilder m8728C = C22128a.m8728C("bill_");
                m8728C.append(billReminderMeta.getUtilityType());
                str3 = m8728C.toString();
            }
        }
        String vendorName = billReminderMeta.getVendorName();
        if (billReminderMeta.getOrigin().ordinal() == 0) {
            if (str2 == null) {
                str2 = "";
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            l.e("reminder_notification", "feature");
            l.e(str3, "eventCategory");
            l.e(vendorName, "eventInfo");
            l.e(TokenResponseDto.METHOD_SMS, AnalyticsConstants.CONTEXT);
            l.e(str, "actionType");
            l.e(str2, "actionInfo");
            l.e(linkedHashMap, "propertyMap");
            AbstractC10060c abstractC10060c = this.f31847n;
            boolean z = false;
            if ("reminder_notification".length() > 0) {
                z = true;
            }
            if (!z) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            abstractC10060c.mo26757a(new C10529b(new SimpleAnalyticsModel("reminder_notification", str3, vendorName, TokenResponseDto.METHOD_SMS, str, str2, 0L, null, false, 448, null), s1.u.i.W0(linkedHashMap)));
            return;
        }
        throw new s1.i();
    }
}
