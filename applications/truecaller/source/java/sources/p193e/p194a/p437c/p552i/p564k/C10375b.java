package p193e.p194a.p437c.p552i.p564k;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.data.entity.Contact;
import com.truecaller.insights.core.senderresolution.model.SenderResolutionBatchEntity;
import com.truecaller.insights.models.senders.resolution.SenderResolutionEntity;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.C7261t;
import p193e.p194a.p437c.p526c.p528d.AbstractC9800d0;
import p193e.p194a.p437c.p526c.p528d.AbstractC9868h0;
import p193e.p194a.p437c.p526c.p530f.AbstractC10009n;
import p193e.p194a.p437c.p548h.C10260j;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p751f4.p762g.AbstractC14028r;
import p193e.p194a.p751f4.p762g.C14012i;
import p193e.p194a.p751f4.p762g.C14022p;
import p193e.p194a.p751f4.p762g.C14030t;
import q3.a.i0;
import q3.a.j0;
import q3.a.n0;
import s1.u.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
import w3.b.a.b;
/* renamed from: e.a.c.i.k.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/k/b.class */
public final class C10375b implements AbstractC10374a {

    /* renamed from: a */
    public final AbstractC9868h0 f30849a;

    /* renamed from: b */
    public final AbstractC9800d0 f30850b;

    /* renamed from: c */
    public final AbstractC10009n f30851c;

    /* renamed from: d */
    public final C7261t f30852d;

    /* renamed from: e */
    public final f f30853e;

    @e(c = "com.truecaller.insights.core.senderresolution.InsightsSenderResolutionMangerImpl", f = "InsightsSenderResolutionManager.kt", l = {86, 88, 90, 91}, m = "enrichSenderData")
    /* renamed from: e.a.c.i.k.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/k/b$a.class */
    public static final class C10376a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30854d;

        /* renamed from: e */
        public int f30855e;

        /* renamed from: g */
        public Object f30857g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10376a(d dVar) {
            super(dVar);
            C10375b.this = r4;
        }

        /* renamed from: s */
        public final Object m26257s(Object obj) {
            this.f30854d = obj;
            this.f30855e |= Integer.MIN_VALUE;
            return C10375b.this.mo26268b(this);
        }
    }

    @e(c = "com.truecaller.insights.core.senderresolution.InsightsSenderResolutionMangerImpl", f = "InsightsSenderResolutionManager.kt", l = {111}, m = "getLastResolvedBatchDate")
    /* renamed from: e.a.c.i.k.b$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/k/b$b.class */
    public static final class C10377b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30858d;

        /* renamed from: e */
        public int f30859e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10377b(d dVar) {
            super(dVar);
            C10375b.this = r4;
        }

        /* renamed from: s */
        public final Object m26256s(Object obj) {
            this.f30858d = obj;
            this.f30859e |= Integer.MIN_VALUE;
            return C10375b.this.m26266d(this);
        }
    }

    @e(c = "com.truecaller.insights.core.senderresolution.InsightsSenderResolutionMangerImpl", f = "InsightsSenderResolutionManager.kt", l = {101, 103}, m = "getSenderResolution")
    /* renamed from: e.a.c.i.k.b$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/k/b$c.class */
    public static final class C10378c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30861d;

        /* renamed from: e */
        public int f30862e;

        /* renamed from: g */
        public Object f30864g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10378c(d dVar) {
            super(dVar);
            C10375b.this = r4;
        }

        /* renamed from: s */
        public final Object m26255s(Object obj) {
            this.f30861d = obj;
            this.f30862e |= Integer.MIN_VALUE;
            return C10375b.this.mo26269a(null, this);
        }
    }

    /* renamed from: e.a.c.i.k.b$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/k/b$d.class */
    public static final class C10379d extends m implements a<C10260j> {

        /* renamed from: c */
        public final /* synthetic */ String f30866c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10379d(String str) {
            super(0);
            C10375b.this = r4;
            this.f30866c = str;
        }

        public Object invoke() {
            C10260j c10260j;
            C7261t c7261t = C10375b.this.f30852d;
            String str = this.f30866c;
            Objects.requireNonNull(c7261t);
            l.e(str, "number");
            try {
                if (str.length() == 0) {
                    c10260j = null;
                } else {
                    AbstractC14028r abstractC14028r = (AbstractC14028r) c7261t.f23204b.get();
                    UUID randomUUID = UUID.randomUUID();
                    l.d(randomUUID, "UUID.randomUUID()");
                    C14022p mo20839b = abstractC14028r.mo20839b(randomUUID, RemoteMessageConst.NOTIFICATION);
                    mo20839b.m20844d();
                    mo20839b.f40566p = str;
                    mo20839b.f40565o = 20;
                    C14030t mo20821a = mo20839b.mo20821a();
                    c10260j = null;
                    if (mo20821a != null) {
                        Contact m20837a = mo20821a.m20837a();
                        c10260j = null;
                        if (m20837a != null) {
                            l.d(m20837a, "it");
                            c10260j = new C10260j(str, m20837a.m35566G(), m20837a.m35573B());
                        }
                    }
                }
            } catch (IOException e) {
                e.getMessage();
                C10480a.m26061I1(e);
                c10260j = null;
            }
            return c10260j;
        }
    }

    @e(c = "com.truecaller.insights.core.senderresolution.InsightsSenderResolutionMangerImpl", f = "InsightsSenderResolutionManager.kt", l = {171}, m = "performBatchInsertTransaction")
    /* renamed from: e.a.c.i.k.b$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/k/b$e.class */
    public static final class C10380e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30867d;

        /* renamed from: e */
        public int f30868e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10380e(d dVar) {
            super(dVar);
            C10375b.this = r4;
        }

        /* renamed from: s */
        public final Object m26254s(Object obj) {
            this.f30867d = obj;
            this.f30868e |= Integer.MIN_VALUE;
            return C10375b.this.m26263g(null, this);
        }
    }

    @e(c = "com.truecaller.insights.core.senderresolution.InsightsSenderResolutionMangerImpl", f = "InsightsSenderResolutionManager.kt", l = {79}, m = "persistResolutionForSender")
    /* renamed from: e.a.c.i.k.b$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/k/b$f.class */
    public static final class C10381f extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30870d;

        /* renamed from: e */
        public int f30871e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10381f(d dVar) {
            super(dVar);
            C10375b.this = r4;
        }

        /* renamed from: s */
        public final Object m26253s(Object obj) {
            this.f30870d = obj;
            this.f30871e |= Integer.MIN_VALUE;
            return C10375b.this.m26262h(null, this);
        }
    }

    @e(c = "com.truecaller.insights.core.senderresolution.InsightsSenderResolutionMangerImpl", f = "InsightsSenderResolutionManager.kt", l = {147, 149}, m = "processSenderResolutionBatch")
    /* renamed from: e.a.c.i.k.b$g */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/k/b$g.class */
    public static final class C10382g extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30873d;

        /* renamed from: e */
        public int f30874e;

        /* renamed from: g */
        public Object f30876g;

        /* renamed from: h */
        public Object f30877h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10382g(d dVar) {
            super(dVar);
            C10375b.this = r4;
        }

        /* renamed from: s */
        public final Object m26252s(Object obj) {
            this.f30873d = obj;
            this.f30874e |= Integer.MIN_VALUE;
            return C10375b.this.m26261i(null, this);
        }
    }

    /* renamed from: e.a.c.i.k.b$h */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/k/b$h.class */
    public static final class C10383h extends m implements a<List<? extends C10260j>> {

        /* renamed from: c */
        public final /* synthetic */ List f30879c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10383h(List list) {
            super(0);
            C10375b.this = r4;
            this.f30879c = list;
        }

        public Object invoke() {
            ArrayList arrayList;
            C7261t c7261t = C10375b.this.f30852d;
            List<String> list = this.f30879c;
            Objects.requireNonNull(c7261t);
            ArrayList arrayList2 = s.a;
            l.e(list, "numbers");
            try {
                if (list.isEmpty()) {
                    arrayList = arrayList2;
                } else {
                    AbstractC14028r abstractC14028r = (AbstractC14028r) c7261t.f23204b.get();
                    UUID randomUUID = UUID.randomUUID();
                    l.d(randomUUID, "UUID.randomUUID()");
                    C14012i mo20838c = abstractC14028r.mo20838c(randomUUID, RemoteMessageConst.NOTIFICATION);
                    mo20838c.m20857b();
                    ArrayList arrayList3 = new ArrayList(C25225a.m4004J(list, 10));
                    for (String str : list) {
                        arrayList3.add(new C14012i.C14014b(str, null, null));
                    }
                    mo20838c.f40518d.addAll(arrayList3);
                    mo20838c.f40521g = 20;
                    C14030t mo20821a = mo20838c.mo20821a();
                    arrayList = arrayList2;
                    if (mo20821a != null) {
                        List<Contact> list2 = mo20821a.f40582c;
                        arrayList = arrayList2;
                        if (list2 != null) {
                            ArrayList arrayList4 = new ArrayList(C25225a.m4004J(list2, 10));
                            for (Contact contact : list2) {
                                l.d(contact, "it");
                                String m35496t = contact.m35496t();
                                if (m35496t == null) {
                                    m35496t = "";
                                }
                                l.d(m35496t, "it.defaultNumberForDisplay ?: \"\"");
                                arrayList4.add(new C10260j(m35496t, contact.m35566G(), contact.m35573B()));
                            }
                            arrayList = arrayList4;
                        }
                    }
                }
            } catch (IOException e) {
                e.getMessage();
                C10480a.m26061I1(e);
                arrayList = arrayList2;
            }
            return arrayList;
        }
    }

    @e(c = "com.truecaller.insights.core.senderresolution.InsightsSenderResolutionMangerImpl", f = "InsightsSenderResolutionManager.kt", l = {134, 135, 138, 139}, m = "resolveSendersForMessagesInChunks")
    /* renamed from: e.a.c.i.k.b$i */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/k/b$i.class */
    public static final class C10384i extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30880d;

        /* renamed from: e */
        public int f30881e;

        /* renamed from: g */
        public Object f30883g;

        /* renamed from: h */
        public Object f30884h;

        /* renamed from: i */
        public Object f30885i;

        /* renamed from: j */
        public int f30886j;

        /* renamed from: k */
        public int f30887k;

        /* renamed from: l */
        public long f30888l;

        /* renamed from: m */
        public long f30889m;

        /* renamed from: n */
        public boolean f30890n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10384i(d dVar) {
            super(dVar);
            C10375b.this = r4;
        }

        /* renamed from: s */
        public final Object m26251s(Object obj) {
            this.f30880d = obj;
            this.f30881e |= Integer.MIN_VALUE;
            return C10375b.this.m26260j(null, null, 0, this);
        }
    }

    @e(c = "com.truecaller.insights.core.senderresolution.InsightsSenderResolutionMangerImpl$resolveSendersForMessagesInChunks$2", f = "InsightsSenderResolutionManager.kt", l = {135}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.k.b$j */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/k/b$j.class */
    public static final class C10385j extends i implements s1.z.b.l<d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f30891e;

        /* renamed from: g */
        public final /* synthetic */ List f30893g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10385j(List list, d dVar) {
            super(1, dVar);
            C10375b.this = r5;
            this.f30893g = list;
        }

        /* renamed from: d */
        public final Object m26250d(Object obj) {
            d dVar = (d) obj;
            l.e(dVar, "completion");
            return new C10385j(this.f30893g, dVar).m26248s(s1.s.a);
        }

        /* renamed from: l */
        public final d<s1.s> m26249l(d<?> dVar) {
            l.e(dVar, "completion");
            return new C10385j(this.f30893g, dVar);
        }

        /* renamed from: s */
        public final Object m26248s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f30891e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C10375b c10375b = C10375b.this;
                List<SenderResolutionBatchEntity> list = this.f30893g;
                this.f30891e = 1;
                Object m26261i = c10375b.m26261i(list, this);
                obj = m26261i;
                if (m26261i == aVar) {
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

    @e(c = "com.truecaller.insights.core.senderresolution.InsightsSenderResolutionMangerImpl", f = "InsightsSenderResolutionManager.kt", l = {162, 164}, m = "saveLastResolvedBatchDate")
    /* renamed from: e.a.c.i.k.b$k */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/k/b$k.class */
    public static final class C10386k extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30894d;

        /* renamed from: e */
        public int f30895e;

        /* renamed from: g */
        public Object f30897g;

        /* renamed from: h */
        public Object f30898h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10386k(d dVar) {
            super(dVar);
            C10375b.this = r4;
        }

        /* renamed from: s */
        public final Object m26247s(Object obj) {
            this.f30894d = obj;
            this.f30895e |= Integer.MIN_VALUE;
            return C10375b.this.m26259k(null, this);
        }
    }

    @e(c = "com.truecaller.insights.core.senderresolution.InsightsSenderResolutionMangerImpl$shouldEnrichSenderData$1", f = "InsightsSenderResolutionManager.kt", l = {95}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.k.b$l */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/k/b$l.class */
    public static final class C10387l extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f30899e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10387l(d dVar) {
            super(2, dVar);
            C10375b.this = r5;
        }

        /* renamed from: i */
        public final d<s1.s> m26246i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10387l(dVar);
        }

        /* renamed from: k */
        public final Object m26245k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10387l(dVar).m26244s(s1.s.a);
        }

        /* renamed from: s */
        public final Object m26244s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f30899e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C10375b c10375b = C10375b.this;
                this.f30899e = 1;
                Object m26266d = c10375b.m26266d(this);
                obj = m26266d;
                if (m26266d == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return Boolean.valueOf(!l.a((Date) obj, new Date(0L)));
        }
    }

    @e(c = "com.truecaller.insights.core.senderresolution.InsightsSenderResolutionMangerImpl", f = "InsightsSenderResolutionManager.kt", l = {180, 180}, m = "wrapAsAsyncAwaitResult")
    /* renamed from: e.a.c.i.k.b$m */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/k/b$m.class */
    public static final class C10388m extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30901d;

        /* renamed from: e */
        public int f30902e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10388m(d dVar) {
            super(dVar);
            C10375b.this = r4;
        }

        /* renamed from: s */
        public final Object m26243s(Object obj) {
            this.f30901d = obj;
            this.f30902e |= Integer.MIN_VALUE;
            return C10375b.this.m26258l(null, this);
        }
    }

    @e(c = "com.truecaller.insights.core.senderresolution.InsightsSenderResolutionMangerImpl$wrapAsAsyncAwaitResult$2", f = "InsightsSenderResolutionManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.k.b$n */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/k/b$n.class */
    public static final class C10389n extends i implements p<i0, d<? super n0<? extends R>>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f30904e;

        /* renamed from: f */
        public final /* synthetic */ a f30905f;

        @e(c = "com.truecaller.insights.core.senderresolution.InsightsSenderResolutionMangerImpl$wrapAsAsyncAwaitResult$2$1", f = "InsightsSenderResolutionManager.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.c.i.k.b$n$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/i/k/b$n$a.class */
        public static final class C10390a extends i implements p<i0, d<? super R>, Object> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C10390a(d dVar) {
                super(2, dVar);
                C10389n.this = r5;
            }

            /* renamed from: i */
            public final d<s1.s> m26239i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C10390a(dVar);
            }

            /* renamed from: k */
            public final Object m26238k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C10389n c10389n = C10389n.this;
                dVar.getContext();
                C25225a.m3932a3(s1.s.a);
                return c10389n.f30905f.invoke();
            }

            /* renamed from: s */
            public final Object m26237s(Object obj) {
                C25225a.m3932a3(obj);
                return C10389n.this.f30905f.invoke();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10389n(a aVar, d dVar) {
            super(2, dVar);
            this.f30905f = aVar;
        }

        /* renamed from: i */
        public final d<s1.s> m26242i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C10389n c10389n = new C10389n(this.f30905f, dVar);
            c10389n.f30904e = obj;
            return c10389n;
        }

        /* renamed from: k */
        public final Object m26241k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C10389n c10389n = new C10389n(this.f30905f, dVar);
            c10389n.f30904e = obj;
            return c10389n.m26240s(s1.s.a);
        }

        /* renamed from: s */
        public final Object m26240s(Object obj) {
            C25225a.m3932a3(obj);
            return s1.a.a.a.v0.f.d.H((i0) this.f30904e, (f) null, (j0) null, new C10390a(null), 3, (Object) null);
        }
    }

    @Inject
    public C10375b(AbstractC9868h0 abstractC9868h0, AbstractC9800d0 abstractC9800d0, AbstractC10009n abstractC10009n, C7261t c7261t, @Named("IO") f fVar) {
        l.e(abstractC9868h0, "senderResolutionDao");
        l.e(abstractC9800d0, "pdoDao");
        l.e(abstractC10009n, "stateUseCases");
        l.e(c7261t, "searchContactContract");
        l.e(fVar, "ioContext");
        this.f30849a = abstractC9868h0;
        this.f30850b = abstractC9800d0;
        this.f30851c = abstractC10009n;
        this.f30852d = c7261t;
        this.f30853e = fVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e7  */
    @Override // p193e.p194a.p437c.p552i.p564k.AbstractC10374a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26269a(java.lang.String r7, s1.w.d<? super p193e.p194a.p437c.p548h.C10260j> r8) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p564k.C10375b.mo26269a(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x018c  */
    @Override // p193e.p194a.p437c.p552i.p564k.AbstractC10374a
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26268b(s1.w.d<? super s1.s> r7) {
        /*
            Method dump skipped, instructions count: 423
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p564k.C10375b.mo26268b(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p552i.p564k.AbstractC10374a
    /* renamed from: c */
    public boolean mo26267c() {
        return ((Boolean) s1.a.a.a.v0.f.d.c3((f) null, new C10387l(null), 1, (Object) null)).booleanValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b9  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m26266d(s1.w.d<? super java.util.Date> r8) {
        /*
            Method dump skipped, instructions count: 209
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p564k.C10375b.m26266d(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0041, code lost:
        if ((r0 == null || r0.length() == 0) != false) goto L18;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m26265e(com.truecaller.insights.models.senders.resolution.SenderResolutionEntity r3) {
        /*
            r2 = this;
            r0 = r3
            java.lang.String r0 = r0.getSenderName()
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L1b
            r0 = r4
            int r0 = r0.length()
            if (r0 != 0) goto L15
            goto L1b
        L15:
            r0 = 0
            r6 = r0
            goto L1e
        L1b:
            r0 = 1
            r6 = r0
        L1e:
            r0 = r6
            if (r0 != 0) goto L44
            r0 = r3
            java.lang.String r0 = r0.getSenderIconUri()
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L3c
            r0 = r3
            int r0 = r0.length()
            if (r0 != 0) goto L36
            goto L3c
        L36:
            r0 = 0
            r6 = r0
            goto L3f
        L3c:
            r0 = 1
            r6 = r0
        L3f:
            r0 = r6
            if (r0 == 0) goto L46
        L44:
            r0 = 1
            r5 = r0
        L46:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p564k.C10375b.m26265e(com.truecaller.insights.models.senders.resolution.SenderResolutionEntity):boolean");
    }

    /* renamed from: f */
    public final boolean m26264f(SenderResolutionEntity senderResolutionEntity) {
        return senderResolutionEntity.getUpdatedAt().after(new b().y(20).n());
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m26263g(java.util.List<p193e.p194a.p437c.p548h.C10260j> r10, s1.w.d<? super java.lang.Boolean> r11) {
        /*
            Method dump skipped, instructions count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p564k.C10375b.m26263g(java.util.List, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m26262h(p193e.p194a.p437c.p548h.C10260j r11, s1.w.d<? super s1.s> r12) {
        /*
            Method dump skipped, instructions count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p564k.C10375b.m26262h(e.a.c.h.j, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x016f  */
    /* JADX WARN: Type inference failed for: r0v62, types: [java.util.List] */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m26261i(java.util.List<com.truecaller.insights.core.senderresolution.model.SenderResolutionBatchEntity> r6, s1.w.d<? super java.lang.Boolean> r7) {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p564k.C10375b.m26261i(java.util.List, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0260, code lost:
        if (r13 != null) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x02f1  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0347  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0366  */
    /* JADX WARN: Type inference failed for: r0v122, types: [long] */
    /* JADX WARN: Type inference failed for: r0v134, types: [long] */
    /* JADX WARN: Type inference failed for: r0v149, types: [long] */
    /* JADX WARN: Type inference failed for: r0v153, types: [long] */
    /* JADX WARN: Type inference failed for: r0v174, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x0341 -> B:57:0x0355). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x0347 -> B:57:0x0355). Please submit an issue!!! */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m26260j(java.util.Date r7, java.util.Date r8, int r9, s1.w.d<? super java.lang.Boolean> r10) {
        /*
            Method dump skipped, instructions count: 894
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p564k.C10375b.m26260j(java.util.Date, java.util.Date, int, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00e1  */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m26259k(java.lang.String r6, s1.w.d<? super s1.s> r7) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p564k.C10375b.m26259k(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00af  */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ <R> java.lang.Object m26258l(s1.z.b.a<? extends R> r6, s1.w.d<? super R> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p437c.p552i.p564k.C10375b.C10388m
            if (r0 == 0) goto L28
            r0 = r7
            e.a.c.i.k.b$m r0 = (p193e.p194a.p437c.p552i.p564k.C10375b.C10388m) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f30902e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f30902e = r1
            r0 = r8
            r7 = r0
            goto L32
        L28:
            e.a.c.i.k.b$m r0 = new e.a.c.i.k.b$m
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L32:
            r0 = r7
            java.lang.Object r0 = r0.f30901d
            r8 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r7
            int r0 = r0.f30902e
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L6b
            r0 = r9
            r1 = 1
            if (r0 == r1) goto L64
            r0 = r9
            r1 = 2
            if (r0 != r1) goto L5a
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto Lb2
        L5a:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L64:
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto L95
        L6b:
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            s1.w.f r0 = r0.f30853e
            r8 = r0
            e.a.c.i.k.b$n r0 = new e.a.c.i.k.b$n
            r1 = r0
            r2 = r6
            r3 = 0
            r1.<init>(r2, r3)
            r6 = r0
            r0 = r7
            r1 = 1
            r0.f30902e = r1
            r0 = r8
            r1 = r6
            r2 = r7
            java.lang.Object r0 = s1.a.a.a.v0.f.d.a4(r0, r1, r2)
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = r10
            if (r0 != r1) goto L95
            r0 = r10
            return r0
        L95:
            r0 = r8
            q3.a.n0 r0 = (q3.a.n0) r0
            r6 = r0
            r0 = r7
            r1 = 2
            r0.f30902e = r1
            r0 = r6
            r1 = r7
            java.lang.Object r0 = r0.s(r1)
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = r10
            if (r0 != r1) goto Lb2
            r0 = r10
            return r0
        Lb2:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p564k.C10375b.m26258l(s1.z.b.a, s1.w.d):java.lang.Object");
    }
}
