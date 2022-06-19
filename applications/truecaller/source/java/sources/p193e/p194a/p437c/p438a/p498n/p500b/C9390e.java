package p193e.p194a.p437c.p438a.p498n.p500b;

import com.truecaller.insights.insightsui.LoadDirection;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.models.AdapterItem;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p437c.p438a.p446c.p449f.C8802f;
import p193e.p194a.p437c.p438a.p446c.p449f.C8803g;
import p193e.p194a.p437c.p438a.p446c.p451h.p454m.C8867a;
import p193e.p194a.p437c.p438a.p479i.AbstractC9107c;
import p193e.p194a.p437c.p438a.p493l.AbstractC9235b;
import p193e.p194a.p437c.p438a.p493l.C9245c;
import p193e.p194a.p437c.p438a.p520r.C9586c;
import p193e.p194a.p437c.p548h.AbstractC10255e;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p579q.AbstractC10497d;
import p193e.p194a.p437c.p579q.AbstractC10513j;
import p193e.p194a.p437c.p579q.C10509f;
import p193e.p194a.p437c.p580r.AbstractC10518b;
import p193e.p194a.p437c.p580r.C10527c;
import p193e.p194a.p437c.p580r.p589j.AbstractC10567a;
import p193e.p194a.p437c.p580r.p589j.AbstractC10616p;
import q3.a.x2.d1;
import q3.a.x2.g;
import q3.a.x2.u;
import q3.a.x2.w0;
import s1.d0.j;
import s1.f0.r;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.b.q;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.n;
/* renamed from: e.a.c.a.n.b.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/n/b/e.class */
public final class C9390e extends AbstractC9107c<C10509f, List<? extends AdapterItem>> {

    /* renamed from: b */
    public final Set<String> f28533b = new LinkedHashSet();

    /* renamed from: c */
    public final C8802f f28534c = new C8802f(true);

    /* renamed from: d */
    public final AbstractC10497d f28535d;

    /* renamed from: e */
    public final C8803g f28536e;

    /* renamed from: f */
    public final f f28537f;

    /* renamed from: g */
    public final AbstractC10255e f28538g;

    /* renamed from: e.a.c.a.n.b.e$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/n/b/e$a.class */
    public static final class C9391a extends Exception {
        public C9391a() {
            super("Collected size is empty");
        }
    }

    @e(c = "com.truecaller.insights.ui.reminders.domain.RemindersPageFlowUseCase$execute$1", f = "RemindersPageFlowUseCase.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.n.b.e$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/n/b/e$b.class */
    public static final class C9392b extends i implements p<Long, d<? super q3.a.x2.f<? extends List<AdapterItem>>>, Object> {

        /* renamed from: e */
        public /* synthetic */ long f28539e;

        /* renamed from: g */
        public final /* synthetic */ C10509f f28541g;

        @e(c = "com.truecaller.insights.ui.reminders.domain.RemindersPageFlowUseCase$execute$1$1", f = "RemindersPageFlowUseCase.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.c.a.n.b.e$b$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/n/b/e$b$a.class */
        public static final class C9393a extends i implements q<List<? extends AdapterItem>, List<? extends AdapterItem>, d<? super List<AdapterItem>>, Object> {

            /* renamed from: e */
            public /* synthetic */ Object f28542e;

            /* renamed from: f */
            public /* synthetic */ Object f28543f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C9393a(d dVar) {
                super(3, dVar);
                C9392b.this = r5;
            }

            /* renamed from: h */
            public final Object m27600h(Object obj, Object obj2, Object obj3) {
                List list = (List) obj;
                List list2 = (List) obj2;
                d dVar = (d) obj3;
                l.e(list, "pastReminders");
                l.e(list2, "upcomingReminders");
                l.e(dVar, "continuation");
                C9393a c9393a = new C9393a(dVar);
                c9393a.f28542e = list;
                c9393a.f28543f = list2;
                return c9393a.m27599s(s.a);
            }

            /* JADX WARN: Removed duplicated region for block: B:39:0x00c6 A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:40:0x00bd A[SYNTHETIC] */
            /* renamed from: s */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object m27599s(java.lang.Object r31) {
                /*
                    Method dump skipped, instructions count: 716
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p498n.p500b.C9390e.C9392b.C9393a.m27599s(java.lang.Object):java.lang.Object");
            }
        }

        /* renamed from: e.a.c.a.n.b.e$b$b */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/n/b/e$b$b.class */
        public static final class C9394b implements q3.a.x2.f<List<AdapterItem>> {

            /* renamed from: a */
            public final /* synthetic */ q3.a.x2.f f28545a;

            /* renamed from: b */
            public final /* synthetic */ C9392b f28546b;

            /* renamed from: e.a.c.a.n.b.e$b$b$a */
            /* loaded from: classes10-dex2jar.jar:e/a/c/a/n/b/e$b$b$a.class */
            public static final class C9395a implements g<List<? extends AdapterItem>> {

                /* renamed from: a */
                public final /* synthetic */ g f28547a;

                /* renamed from: b */
                public final /* synthetic */ C9392b f28548b;

                @e(c = "com.truecaller.insights.ui.reminders.domain.RemindersPageFlowUseCase$execute$1$invokeSuspend$$inlined$map$1$2", f = "RemindersPageFlowUseCase.kt", l = {137}, m = "emit")
                /* renamed from: e.a.c.a.n.b.e$b$b$a$a */
                /* loaded from: classes10-dex2jar.jar:e/a/c/a/n/b/e$b$b$a$a.class */
                public static final class C9396a extends c {

                    /* renamed from: d */
                    public /* synthetic */ Object f28549d;

                    /* renamed from: e */
                    public int f28550e;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C9396a(d dVar) {
                        super(dVar);
                        C9395a.this = r4;
                    }

                    /* renamed from: s */
                    public final Object m27596s(Object obj) {
                        this.f28549d = obj;
                        this.f28550e |= Integer.MIN_VALUE;
                        return C9395a.this.m27597a(null, this);
                    }
                }

                public C9395a(g gVar, C9392b c9392b) {
                    this.f28547a = gVar;
                    this.f28548b = c9392b;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
                /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
                /* renamed from: a */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public java.lang.Object m27597a(java.lang.Object r6, s1.w.d r7) {
                    /*
                        r5 = this;
                        r0 = r7
                        boolean r0 = r0 instanceof p193e.p194a.p437c.p438a.p498n.p500b.C9390e.C9392b.C9394b.C9395a.C9396a
                        if (r0 == 0) goto L28
                        r0 = r7
                        e.a.c.a.n.b.e$b$b$a$a r0 = (p193e.p194a.p437c.p438a.p498n.p500b.C9390e.C9392b.C9394b.C9395a.C9396a) r0
                        r8 = r0
                        r0 = r8
                        int r0 = r0.f28550e
                        r9 = r0
                        r0 = r9
                        r1 = -2147483648(0xffffffff80000000, float:-0.0)
                        r0 = r0 & r1
                        if (r0 == 0) goto L28
                        r0 = r8
                        r1 = r9
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        int r1 = r1 + r2
                        r0.f28550e = r1
                        r0 = r8
                        r7 = r0
                        goto L32
                    L28:
                        e.a.c.a.n.b.e$b$b$a$a r0 = new e.a.c.a.n.b.e$b$b$a$a
                        r1 = r0
                        r2 = r5
                        r3 = r7
                        r1.<init>(r3)
                        r7 = r0
                    L32:
                        r0 = r7
                        java.lang.Object r0 = r0.f28549d
                        r10 = r0
                        s1.w.j.a r0 = s1.w.j.a.a
                        r8 = r0
                        r0 = r7
                        int r0 = r0.f28550e
                        r9 = r0
                        r0 = r9
                        if (r0 == 0) goto L5f
                        r0 = r9
                        r1 = 1
                        if (r0 != r1) goto L55
                        r0 = r10
                        p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                        goto La0
                    L55:
                        java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                        r1 = r0
                        java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                        r1.<init>(r2)
                        throw r0
                    L5f:
                        r0 = r10
                        p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                        r0 = r5
                        q3.a.x2.g r0 = r0.f28547a
                        r10 = r0
                        r0 = r6
                        java.util.List r0 = (java.util.List) r0
                        r6 = r0
                        java.util.ArrayList r0 = new java.util.ArrayList
                        r1 = r0
                        r1.<init>()
                        r11 = r0
                        r0 = r11
                        r1 = r5
                        e.a.c.a.n.b.e$b r1 = r1.f28548b
                        e.a.c.a.n.b.e r1 = p193e.p194a.p437c.p438a.p498n.p500b.C9390e.this
                        r2 = r6
                        java.util.List r1 = r1.m27604f(r2)
                        boolean r0 = r0.addAll(r1)
                        r0 = r7
                        r1 = 1
                        r0.f28550e = r1
                        r0 = r10
                        r1 = r11
                        r2 = r7
                        java.lang.Object r0 = r0.a(r1, r2)
                        r1 = r8
                        if (r0 != r1) goto La0
                        r0 = r8
                        return r0
                    La0:
                        s1.s r0 = s1.s.a
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p498n.p500b.C9390e.C9392b.C9394b.C9395a.m27597a(java.lang.Object, s1.w.d):java.lang.Object");
                }
            }

            public C9394b(q3.a.x2.f fVar, C9392b c9392b) {
                this.f28545a = fVar;
                this.f28546b = c9392b;
            }

            /* renamed from: c */
            public Object m27598c(g gVar, d dVar) {
                Object c = this.f28545a.c(new C9395a(gVar, this.f28546b), dVar);
                return c == a.a ? c : s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9392b(C10509f c10509f, d dVar) {
            super(2, dVar);
            C9390e.this = r5;
            this.f28541g = c10509f;
        }

        /* renamed from: i */
        public final d<s> m27603i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C9392b c9392b = new C9392b(this.f28541g, dVar);
            Number number = (Number) obj;
            number.longValue();
            c9392b.f28539e = number.longValue();
            return c9392b;
        }

        /* renamed from: k */
        public final Object m27602k(Object obj, Object obj2) {
            return m27603i(obj, (d) obj2).m27601s(s.a);
        }

        /* renamed from: s */
        public final Object m27601s(Object obj) {
            w0 w0Var;
            C25225a.m3932a3(obj);
            long j = this.f28539e;
            C9390e c9390e = C9390e.this;
            C10509f c10509f = this.f28541g;
            Objects.requireNonNull(c9390e);
            l.e(c10509f, "input");
            if (c10509f.f31244d == LoadDirection.AFTER) {
                long j2 = c10509f.f31243c - j;
                c10509f.f31243c = j2;
                long a = j.a(j2, c10509f.f31245e.f31258a);
                c10509f.f31243c = a;
                b bVar = new b(a);
                b P = bVar.y(bVar.q()).P();
                l.d(P, "dateTime.minusDays(dateT…h).withTimeAtStartOfDay()");
                c10509f.f31243c = ((w3.b.a.e0.e) P).a;
            } else {
                long j3 = c10509f.f31243c + j;
                c10509f.f31243c = j3;
                c10509f.f31243c = j.b(j3, c10509f.f31245e.f31259b);
            }
            C10509f c10509f2 = this.f28541g;
            if (c10509f2.f31241a) {
                C9390e.this.f28533b.clear();
                C9390e c9390e2 = C9390e.this;
                C9400g c9400g = new C9400g(c9390e2.f28535d.mo25847v(this.f28541g), c9390e2);
                C9390e c9390e3 = C9390e.this;
                w0Var = new w0(c9400g, new C9412k(c9390e3.f28536e.m27874c(c9390e3.f28534c)), new C9393a(null));
            } else {
                C9390e c9390e4 = C9390e.this;
                q3.a.x2.f<List<AbstractC10513j>> mo25847v = c9390e4.f28535d.mo25847v(c10509f2);
                C9391a c9391a = new C9391a();
                w0Var = new C9394b(new C9403h(new u(new d1(new C9406i(mo25847v, c9391a, null, c9390e4)), new C9586c(c9391a, null))), this);
            }
            return w0Var;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C9390e(AbstractC10497d abstractC10497d, C8803g c8803g, @Named("IO") f fVar, AbstractC10255e abstractC10255e) {
        super(fVar);
        l.e(abstractC10497d, "insightsUiBridge");
        l.e(c8803g, "upcomingUseCase");
        l.e(fVar, "ioContext");
        l.e(abstractC10255e, "insightsFilterFetcher");
        this.f28535d = abstractC10497d;
        this.f28536e = c8803g;
        this.f28537f = fVar;
        this.f28538g = abstractC10255e;
    }

    /* renamed from: d */
    public static final List m27606d(C9390e c9390e, List list) {
        AbstractC9235b.C9240e c9240e;
        List m25965f0 = C10480a.m25965f0(list, c9390e.f28538g);
        ArrayList arrayList = new ArrayList(C25225a.m4004J(m25965f0, 10));
        Iterator it = ((ArrayList) m25965f0).iterator();
        while (it.hasNext()) {
            AbstractC10513j abstractC10513j = (AbstractC10513j) it.next();
            l.e(abstractC10513j, "$this$upcomingToPastReminder");
            if (abstractC10513j instanceof AbstractC10513j.C10514a) {
                AbstractC10513j.C10514a c10514a = (AbstractC10513j.C10514a) abstractC10513j;
                long j = c10514a.f31260a;
                long j2 = c10514a.f31261b;
                C10527c c10527c = (C10527c) s1.u.i.B(c10514a.f31267h.f31320n);
                C10527c c10527c2 = (C10527c) C10480a.m25864z2(c10514a.f31267h.f31320n);
                String str = c10514a.f31267h.f31317k.length() == 0 ? c10514a.f31267h.f31308b : c10514a.f31267h.f31317k;
                String str2 = c10514a.m25830a() ? l.a(c10514a.f31267h.f31321o, "PrepaidExpiry") ? "" : c10514a.f31267h.f31323q : l.a(c10514a.f31267h.f31321o, "PrepaidExpiry") ? "Recharged" : "Paid";
                int i = C4078R.attr.tcx_textSecondary;
                C9245c m25912p3 = C10480a.m25912p3(c10514a.f31265f);
                C9245c m25912p32 = C10480a.m25912p3(c10514a.f31264e);
                List<AbstractC10567a> list2 = c10514a.f31266g;
                ArrayList arrayList2 = new ArrayList(C25225a.m4004J(list2, 10));
                for (AbstractC10567a abstractC10567a : list2) {
                    arrayList2.add(C10480a.m25912p3(abstractC10567a));
                }
                String str3 = c10514a.f31262c;
                String str4 = "";
                if (l.a(c10514a.f31267h.f31321o, "PrepaidExpiry")) {
                    str4 = "";
                    if (c10514a.m25830a()) {
                        str4 = r.p(c10514a.f31267h.f31323q) ^ true ? c10514a.f31267h.f31323q : "Expiring";
                    }
                }
                int i2 = C4078R.attr.tcx_textPrimary;
                AbstractC10518b.C10520b c10520b = c10514a.f31267h;
                String str5 = c10520b.f31313g;
                String m15564w = C17891a1.C17902k.m15564w(c10520b, ((C10527c) s1.u.i.B(c10520b.f31320n)).f31410a);
                int i3 = c10514a.f31268i;
                boolean z = c10514a.f31269j;
                AbstractC10616p.C10618b c10618b = AbstractC10616p.C10618b.f31656b;
                String m27998a = C8867a.m27998a(c10514a.f31267h.f31322p);
                boolean m25830a = c10514a.m25830a();
                n S1 = c10514a.f31267h.f31322p.S1();
                l.d(S1, "data.billUiSchema.billDateTime.toInstant()");
                c9240e = new AbstractC9235b.C9240e(j, c10527c, c10527c2, null, str, str3, str2, str4, m25912p32, m25912p3, arrayList2, i, j2, str5, Integer.valueOf(i2), m15564w, i3, z, c10618b, m27998a, S1.a, !m25830a, false, 4194312);
            } else if (!(abstractC10513j instanceof AbstractC10513j.C10515b)) {
                throw new s1.i();
            } else {
                AbstractC10513j.C10515b c10515b = (AbstractC10513j.C10515b) abstractC10513j;
                k<String, Integer> m27996c = C8867a.m27996c(c10515b);
                long j3 = c10515b.f31270a;
                long j4 = c10515b.f31271b;
                AbstractC10518b.C10524f c10524f = c10515b.f31277h;
                String str6 = c10524f.f31354a;
                String str7 = c10524f.f31359f;
                String str8 = l.a(str7, "Travelled") ? c10515b.f31277h.f31357d : c10515b.f31277h.f31358e;
                C9245c m25912p33 = C10480a.m25912p3(c10515b.f31274e);
                C9245c m25912p34 = C10480a.m25912p3(c10515b.f31275f);
                String str9 = c10515b.f31272c;
                String str10 = (String) m27996c.a;
                int i4 = C4078R.attr.tcx_textPrimary;
                String m15696A = C17891a1.C17902k.m15696A(c10515b.f31277h.f31378y, null, 1);
                List<AbstractC10567a> list3 = c10515b.f31276g;
                ArrayList arrayList3 = new ArrayList(C25225a.m4004J(list3, 10));
                for (AbstractC10567a abstractC10567a2 : list3) {
                    arrayList3.add(C10480a.m25912p3(abstractC10567a2));
                }
                C10527c c10527c3 = (C10527c) s1.u.i.B(c10515b.f31277h.f31370q);
                C10527c c10527c4 = (C10527c) C10480a.m25864z2(c10515b.f31277h.f31370q);
                int i5 = C4078R.attr.tcx_textSecondary;
                int i6 = c10515b.f31278i;
                boolean z2 = c10515b.f31279j;
                AbstractC10616p.C10624h c10624h = new AbstractC10616p.C10624h(C17891a1.C17902k.m15696A(c10515b.f31277h.f31378y, null, 1));
                String m27998a2 = C8867a.m27998a(c10515b.f31277h.f31377x);
                n S12 = c10515b.f31277h.f31377x.S1();
                l.d(S12, "data.uiSchema.travelDateTime.toInstant()");
                c9240e = new AbstractC9235b.C9240e(j3, c10527c3, c10527c4, str6, str7, str9, str8, str10, m25912p33, m25912p34, arrayList3, i5, j4, null, Integer.valueOf(i4), m15696A, i6, z2, c10624h, m27998a2, S12.a, false, false, 6299648);
            }
            arrayList.add(new AdapterItem.C4118j(c9240e, 0L, 2));
        }
        return arrayList;
    }

    @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9107c
    /* renamed from: a */
    public /* bridge */ /* synthetic */ List<? extends AdapterItem> mo27441a() {
        return s1.u.s.a;
    }

    /* renamed from: e */
    public q3.a.x2.f<List<AdapterItem>> mo27440b(C10509f c10509f) {
        l.e(c10509f, "input");
        return s1.a.a.a.v0.f.d.R0(new C9397f(new q3.a.x2.i(new s1.d0.i(1, 10))), new C9392b(c10509f, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0065 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.truecaller.insights.p168ui.models.AdapterItem> m27604f(java.util.List<? extends com.truecaller.insights.p168ui.models.AdapterItem> r12) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p498n.p500b.C9390e.m27604f(java.util.List):java.util.List");
    }
}
