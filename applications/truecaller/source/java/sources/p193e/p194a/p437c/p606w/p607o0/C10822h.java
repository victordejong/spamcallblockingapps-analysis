package p193e.p194a.p437c.p606w.p607o0;

import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.pdo.ParsedDataObject;
import com.truecaller.insights.source.SmartSMSFeatureStatus;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p419m.p420a.AbstractC8507b;
import p193e.p194a.p437c.p523a0.AbstractC9678z;
import p193e.p194a.p437c.p524b.AbstractC9686e;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p531c0.C10031q;
import p193e.p194a.p437c.p548h.AbstractC10255e;
import p193e.p194a.p437c.p580r.p589j.C10611l;
import p193e.p194a.p437c.p606w.p607o0.AbstractC10819f;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
/* renamed from: e.a.c.w.o0.h */
/* loaded from: classes10-dex2jar.jar:e/a/c/w/o0/h.class */
public final class C10822h implements AbstractC10821g {

    /* renamed from: a */
    public final String f32133a;

    /* renamed from: b */
    public final a<AbstractC10810b> f32134b;

    /* renamed from: c */
    public final a<AbstractC10829i> f32135c;

    /* renamed from: d */
    public final AbstractC9678z f32136d;

    /* renamed from: e */
    public final AbstractC9691j f32137e;

    /* renamed from: f */
    public final AbstractC8507b f32138f;

    /* renamed from: g */
    public final AbstractC10255e f32139g;

    /* renamed from: h */
    public final AbstractC10028o f32140h;

    @e(c = "com.truecaller.insights.repository.filters.SmartSmsFeatureFilterImpl", f = "SmartSmsFeatureFilter.kt", l = {170}, m = "applyFilterOnPdo")
    /* renamed from: e.a.c.w.o0.h$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/w/o0/h$a.class */
    public static final class C10823a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f32141d;

        /* renamed from: e */
        public int f32142e;

        /* renamed from: g */
        public Object f32144g;

        /* renamed from: h */
        public Object f32145h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10823a(d dVar) {
            super(dVar);
            C10822h.this = r4;
        }

        /* renamed from: s */
        public final Object m25574s(Object obj) {
            this.f32141d = obj;
            this.f32142e |= Integer.MIN_VALUE;
            return C10822h.this.mo25582g(null, false, this);
        }
    }

    @e(c = "com.truecaller.insights.repository.filters.SmartSmsFeatureFilterImpl", f = "SmartSmsFeatureFilter.kt", l = {183, 185}, m = "applyFilterOnUpdates")
    /* renamed from: e.a.c.w.o0.h$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/w/o0/h$b.class */
    public static final class C10824b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f32146d;

        /* renamed from: e */
        public int f32147e;

        /* renamed from: g */
        public Object f32149g;

        /* renamed from: h */
        public Object f32150h;

        /* renamed from: i */
        public int f32151i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10824b(d dVar) {
            super(dVar);
            C10822h.this = r4;
        }

        /* renamed from: s */
        public final Object m25573s(Object obj) {
            this.f32146d = obj;
            this.f32147e |= Integer.MIN_VALUE;
            return C10822h.this.mo25585d(null, this);
        }
    }

    @e(c = "com.truecaller.insights.repository.filters.SmartSmsFeatureFilterImpl", f = "SmartSmsFeatureFilter.kt", l = {77}, m = "getInfoCardTypeForSender")
    /* renamed from: e.a.c.w.o0.h$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/w/o0/h$c.class */
    public static final class C10825c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f32152d;

        /* renamed from: e */
        public int f32153e;

        /* renamed from: g */
        public Object f32155g;

        /* renamed from: h */
        public Object f32156h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10825c(d dVar) {
            super(dVar);
            C10822h.this = r4;
        }

        /* renamed from: s */
        public final Object m25572s(Object obj) {
            this.f32152d = obj;
            this.f32153e |= Integer.MIN_VALUE;
            return C10822h.this.mo25580i(null, null, this);
        }
    }

    @e(c = "com.truecaller.insights.repository.filters.SmartSmsFeatureFilterImpl$isGrmAllowedForSenderBlocking$1", f = "SmartSmsFeatureFilter.kt", l = {147}, m = "invokeSuspend")
    /* renamed from: e.a.c.w.o0.h$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/w/o0/h$d.class */
    public static final class C10826d extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f32157e;

        /* renamed from: g */
        public final /* synthetic */ String f32159g;

        /* renamed from: h */
        public final /* synthetic */ c0 f32160h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10826d(String str, c0 c0Var, d dVar) {
            super(2, dVar);
            C10822h.this = r5;
            this.f32159g = str;
            this.f32160h = c0Var;
        }

        /* renamed from: i */
        public final d<s> m25571i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10826d(this.f32159g, this.f32160h, dVar);
        }

        /* renamed from: k */
        public final Object m25570k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10826d(this.f32159g, this.f32160h, dVar).m25569s(s.a);
        }

        /* renamed from: s */
        public final Object m25569s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f32157e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f32157e = 1;
                Object mo25586c = C10822h.this.mo25586c(this.f32159g, (String) this.f32160h.a, this);
                obj = mo25586c;
                if (mo25586c == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @e(c = "com.truecaller.insights.repository.filters.SmartSmsFeatureFilterImpl", f = "SmartSmsFeatureFilter.kt", l = {121}, m = "isSenderVerifiedForSmartSmsFeatures")
    /* renamed from: e.a.c.w.o0.h$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/w/o0/h$e.class */
    public static final class C10827e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f32161d;

        /* renamed from: e */
        public int f32162e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10827e(d dVar) {
            super(dVar);
            C10822h.this = r4;
        }

        /* renamed from: s */
        public final Object m25568s(Object obj) {
            this.f32161d = obj;
            this.f32162e |= Integer.MIN_VALUE;
            return C10822h.this.mo25578k(null, null, this);
        }
    }

    @e(c = "com.truecaller.insights.repository.filters.SmartSmsFeatureFilterImpl", f = "SmartSmsFeatureFilter.kt", l = {Constants.ERR_MODULE_NOT_FOUND, 159, Constants.ERR_ALREADY_IN_RECORDING, 162}, m = "updateOrCreateUserSenderInfoProfile")
    /* renamed from: e.a.c.w.o0.h$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/w/o0/h$f.class */
    public static final class C10828f extends c {

        /* renamed from: d */
        public /* synthetic */ Object f32164d;

        /* renamed from: e */
        public int f32165e;

        /* renamed from: g */
        public Object f32167g;

        /* renamed from: h */
        public Object f32168h;

        /* renamed from: i */
        public Object f32169i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10828f(d dVar) {
            super(dVar);
            C10822h.this = r4;
        }

        /* renamed from: s */
        public final Object m25567s(Object obj) {
            this.f32164d = obj;
            this.f32165e |= Integer.MIN_VALUE;
            return C10822h.this.m25575n(null, null, this);
        }
    }

    @Inject
    public C10822h(a<AbstractC10810b> aVar, a<AbstractC10829i> aVar2, AbstractC9678z abstractC9678z, AbstractC9691j abstractC9691j, AbstractC8507b abstractC8507b, AbstractC10255e abstractC10255e, AbstractC10028o abstractC10028o, AbstractC9686e abstractC9686e) {
        l.e(aVar, "senderFilterManagerLazy");
        l.e(aVar2, "updatesFilterManagerLazy");
        l.e(abstractC9678z, "senderInfoDataSource");
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(abstractC8507b, "addressProfileProvider");
        l.e(abstractC10255e, "insightsFilterFetcher");
        l.e(abstractC10028o, "insightConfig");
        l.e(abstractC9686e, "environmentHelper");
        this.f32134b = aVar;
        this.f32135c = aVar2;
        this.f32136d = abstractC9678z;
        this.f32137e = abstractC9691j;
        this.f32138f = abstractC8507b;
        this.f32139g = abstractC10255e;
        this.f32140h = abstractC10028o;
        this.f32133a = abstractC9686e.mo27306g();
    }

    @Override // p193e.p194a.p437c.p606w.p607o0.AbstractC10821g
    /* renamed from: a */
    public Object mo25588a(String str, d<? super Boolean> dVar) {
        return m25576m().mo25605a(str, dVar);
    }

    @Override // p193e.p194a.p437c.p606w.p607o0.AbstractC10821g
    /* renamed from: b */
    public Object mo25587b(String str, d<? super Boolean> dVar) {
        return m25576m().mo25604b(C10031q.m26799e(str, this.f32133a), dVar);
    }

    @Override // p193e.p194a.p437c.p606w.p607o0.AbstractC10821g
    /* renamed from: c */
    public Object mo25586c(String str, String str2, d<? super Boolean> dVar) {
        return m25576m().mo25603c(str, C10031q.m26799e(str2, this.f32133a), dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x016f  */
    @Override // p193e.p194a.p437c.p606w.p607o0.AbstractC10821g
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo25585d(p193e.p194a.p437c.p538g.C10202v r7, s1.w.d<? super java.lang.Boolean> r8) {
        /*
            Method dump skipped, instructions count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p606w.p607o0.C10822h.mo25585d(e.a.c.g.v, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p606w.p607o0.AbstractC10821g
    /* renamed from: e */
    public boolean mo25584e(String str, String str2) {
        l.e(str, "grm");
        l.e(str2, AnalyticsConstants.SENDER);
        c0 c0Var = new c0();
        c0Var.a = C10031q.m26799e(str2, this.f32133a);
        return ((Boolean) s1.a.a.a.v0.f.d.c3((f) null, new C10826d(str, c0Var, null), 1, (Object) null)).booleanValue();
    }

    @Override // p193e.p194a.p437c.p606w.p607o0.AbstractC10821g
    /* renamed from: f */
    public Object mo25583f(String str, d<? super s> dVar) {
        Object m25575n = m25575n(C10031q.m26799e(str, this.f32133a), SmartSMSFeatureStatus.BLOCKED, dVar);
        return m25575n == s1.w.j.a.a ? m25575n : s.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00f1  */
    @Override // p193e.p194a.p437c.p606w.p607o0.AbstractC10821g
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo25582g(com.truecaller.insights.models.pdo.ParsedDataObject r6, boolean r7, s1.w.d<? super java.lang.Boolean> r8) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p606w.p607o0.C10822h.mo25582g(com.truecaller.insights.models.pdo.ParsedDataObject, boolean, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p606w.p607o0.AbstractC10821g
    /* renamed from: h */
    public Object mo25581h(String str, d<? super s> dVar) {
        Object m25575n = m25575n(C10031q.m26799e(str, this.f32133a), SmartSMSFeatureStatus.ALLOWED, dVar);
        return m25575n == s1.w.j.a.a ? m25575n : s.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01b4  */
    @Override // p193e.p194a.p437c.p606w.p607o0.AbstractC10821g
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo25580i(java.lang.String r9, java.lang.String r10, s1.w.d<? super p193e.p194a.p437c.p606w.p607o0.C10818e> r11) {
        /*
            Method dump skipped, instructions count: 495
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p606w.p607o0.C10822h.mo25580i(java.lang.String, java.lang.String, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p606w.p607o0.AbstractC10821g
    /* renamed from: j */
    public Object mo25579j(String str, d<? super s> dVar) {
        Object m25575n = m25575n(C10031q.m26799e(str, this.f32133a), SmartSMSFeatureStatus.DEFAULT, dVar);
        return m25575n == s1.w.j.a.a ? m25575n : s.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a3  */
    @Override // p193e.p194a.p437c.p606w.p607o0.AbstractC10821g
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo25578k(java.lang.String r6, java.lang.String r7, s1.w.d<? super java.lang.Boolean> r8) {
        /*
            Method dump skipped, instructions count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p606w.p607o0.C10822h.mo25578k(java.lang.String, java.lang.String, s1.w.d):java.lang.Object");
    }

    /* renamed from: l */
    public final boolean m25577l(C10818e c10818e, ParsedDataObject parsedDataObject) {
        AbstractC10819f abstractC10819f = c10818e.f32130c;
        Objects.requireNonNull(abstractC10819f, "null cannot be cast to non-null type com.truecaller.insights.repository.filters.SmartSmsFeatureCheckExtras.SenderFilterCheck");
        List<C10611l> list = ((AbstractC10819f.C10820a) abstractC10819f).f32132b;
        if (list == null || list.isEmpty()) {
            return false;
        }
        AbstractC10810b m25576m = m25576m();
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (C10611l c10611l : list) {
            arrayList.add(c10611l.m25767a());
        }
        return m25576m.mo25597i(arrayList, parsedDataObject);
    }

    /* renamed from: m */
    public final AbstractC10810b m25576m() {
        return (AbstractC10810b) this.f32134b.get();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01d6  */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m25575n(java.lang.String r11, com.truecaller.insights.source.SmartSMSFeatureStatus r12, s1.w.d<? super s1.s> r13) {
        /*
            Method dump skipped, instructions count: 560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p606w.p607o0.C10822h.m25575n(java.lang.String, com.truecaller.insights.source.SmartSMSFeatureStatus, s1.w.d):java.lang.Object");
    }
}
