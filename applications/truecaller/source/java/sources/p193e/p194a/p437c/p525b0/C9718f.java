package p193e.p194a.p437c.p525b0;

import com.truecaller.insights.commons.model.Transport;
import com.truecaller.insights.models.pdo.ClassifierType;
import com.truecaller.insights.models.pdo.SmsBackup;
import com.truecaller.insights.utils.DateFormat;
import java.util.List;
import javax.inject.Inject;
import p193e.p194a.p437c.p524b.AbstractC9686e;
import p193e.p194a.p437c.p526c.p528d.AbstractC9893j0;
import p193e.p194a.p437c.p531c0.C10031q;
import p193e.p194a.p437c.p576n.AbstractC10473d;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p579q.C10509f;
import p193e.p194a.p437c.p579q.C10516k;
import p193e.p194a.p437c.p580r.p589j.AbstractC10597h;
import p193e.p194a.p437c.p580r.p592m.AbstractC10651b;
import p193e.p194a.p437c.p606w.p607o0.AbstractC10821g;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.i;
import w3.b.a.h;
import w3.b.a.p;
/* renamed from: e.a.c.b0.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/b0/f.class */
public final class C9718f implements AbstractC9713d {

    /* renamed from: a */
    public final String f29364a;

    /* renamed from: b */
    public final AbstractC9893j0 f29365b;

    /* renamed from: c */
    public final AbstractC10473d f29366c;

    /* renamed from: d */
    public final AbstractC10821g f29367d;

    /* renamed from: e */
    public final AbstractC9686e f29368e;

    /* renamed from: f */
    public final AbstractC10821g f29369f;

    @e(c = "com.truecaller.insights.updates.UpdatesRepositoryImpl", f = "UpdatesRepository.kt", l = {86}, m = "filterUpdates")
    /* renamed from: e.a.c.b0.f$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/b0/f$a.class */
    public static final class C9719a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29370d;

        /* renamed from: e */
        public int f29371e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9719a(d dVar) {
            super(dVar);
            C9718f.this = r4;
        }

        /* renamed from: s */
        public final Object m27175s(Object obj) {
            this.f29370d = obj;
            this.f29371e |= Integer.MIN_VALUE;
            return C9718f.this.m27182h(null, this);
        }
    }

    @e(c = "com.truecaller.insights.updates.UpdatesRepositoryImpl", f = "UpdatesRepository.kt", l = {163}, m = "getAllUpdatesInCategory")
    /* renamed from: e.a.c.b0.f$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/b0/f$b.class */
    public static final class C9720b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29373d;

        /* renamed from: e */
        public int f29374e;

        /* renamed from: g */
        public Object f29376g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9720b(d dVar) {
            super(dVar);
            C9718f.this = r4;
        }

        /* renamed from: s */
        public final Object m27174s(Object obj) {
            this.f29373d = obj;
            this.f29374e |= Integer.MIN_VALUE;
            return C9718f.this.mo27188b(null, 0, 0L, this);
        }
    }

    @e(c = "com.truecaller.insights.updates.UpdatesRepositoryImpl", f = "UpdatesRepository.kt", l = {142, 143}, m = "getBoundaryTs")
    /* renamed from: e.a.c.b0.f$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/b0/f$c.class */
    public static final class C9721c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29377d;

        /* renamed from: e */
        public int f29378e;

        /* renamed from: g */
        public Object f29380g;

        /* renamed from: h */
        public long f29381h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9721c(d dVar) {
            super(dVar);
            C9718f.this = r4;
        }

        /* renamed from: s */
        public final Object m27173s(Object obj) {
            this.f29377d = obj;
            this.f29378e |= Integer.MIN_VALUE;
            return C9718f.this.mo27186d(this);
        }
    }

    /* renamed from: e.a.c.b0.f$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/b0/f$d.class */
    public static final class C9722d implements f<List<? extends C10516k>> {

        /* renamed from: a */
        public final /* synthetic */ f f29382a;

        /* renamed from: b */
        public final /* synthetic */ int f29383b;

        /* renamed from: e.a.c.b0.f$d$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/b0/f$d$a.class */
        public static final class C9723a implements g<List<? extends C10516k>> {

            /* renamed from: a */
            public final /* synthetic */ g f29384a;

            /* renamed from: b */
            public final /* synthetic */ int f29385b;

            @e(c = "com.truecaller.insights.updates.UpdatesRepositoryImpl$getRecentUpdates$$inlined$map$1$2", f = "UpdatesRepository.kt", l = {137}, m = "emit")
            /* renamed from: e.a.c.b0.f$d$a$a */
            /* loaded from: classes10-dex2jar.jar:e/a/c/b0/f$d$a$a.class */
            public static final class C9724a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f29386d;

                /* renamed from: e */
                public int f29387e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C9724a(d dVar) {
                    super(dVar);
                    C9723a.this = r4;
                }

                /* renamed from: s */
                public final Object m27170s(Object obj) {
                    this.f29386d = obj;
                    this.f29387e |= Integer.MIN_VALUE;
                    return C9723a.this.m27171a(null, this);
                }
            }

            public C9723a(g gVar, int i) {
                this.f29384a = gVar;
                this.f29385b = i;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x005e  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m27171a(java.lang.Object r6, s1.w.d r7) {
                /*
                    r5 = this;
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p437c.p525b0.C9718f.C9722d.C9723a.C9724a
                    if (r0 == 0) goto L28
                    r0 = r7
                    e.a.c.b0.f$d$a$a r0 = (p193e.p194a.p437c.p525b0.C9718f.C9722d.C9723a.C9724a) r0
                    r8 = r0
                    r0 = r8
                    int r0 = r0.f29387e
                    r9 = r0
                    r0 = r9
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L28
                    r0 = r8
                    r1 = r9
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f29387e = r1
                    r0 = r8
                    r7 = r0
                    goto L32
                L28:
                    e.a.c.b0.f$d$a$a r0 = new e.a.c.b0.f$d$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L32:
                    r0 = r7
                    java.lang.Object r0 = r0.f29386d
                    r8 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r10 = r0
                    r0 = r7
                    int r0 = r0.f29387e
                    r9 = r0
                    r0 = r9
                    if (r0 == 0) goto L5e
                    r0 = r9
                    r1 = 1
                    if (r0 != r1) goto L54
                    r0 = r8
                    p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                    goto La4
                L54:
                    java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                    r1 = r0
                    java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                    r1.<init>(r2)
                    throw r0
                L5e:
                    r0 = r8
                    p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                    r0 = r5
                    q3.a.x2.g r0 = r0.f29384a
                    r11 = r0
                    r0 = r6
                    java.util.List r0 = (java.util.List) r0
                    r8 = r0
                    r0 = r8
                    int r0 = r0.size()
                    r9 = r0
                    r0 = r5
                    int r0 = r0.f29385b
                    r12 = r0
                    r0 = r8
                    r6 = r0
                    r0 = r9
                    r1 = r12
                    if (r0 <= r1) goto L8e
                    r0 = r8
                    r1 = 0
                    r2 = r12
                    java.util.List r0 = r0.subList(r1, r2)
                    r6 = r0
                L8e:
                    r0 = r7
                    r1 = 1
                    r0.f29387e = r1
                    r0 = r11
                    r1 = r6
                    r2 = r7
                    java.lang.Object r0 = r0.a(r1, r2)
                    r1 = r10
                    if (r0 != r1) goto La4
                    r0 = r10
                    return r0
                La4:
                    s1.s r0 = s1.s.a
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p525b0.C9718f.C9722d.C9723a.m27171a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C9722d(f fVar, int i) {
            this.f29382a = fVar;
            this.f29383b = i;
        }

        /* renamed from: c */
        public Object m27172c(g gVar, d dVar) {
            Object c = this.f29382a.c(new C9723a(gVar, this.f29383b), dVar);
            return c == a.a ? c : s.a;
        }
    }

    @e(c = "com.truecaller.insights.updates.UpdatesRepositoryImpl", f = "UpdatesRepository.kt", l = {118, 120}, m = "getSmsBackupForConversation")
    /* renamed from: e.a.c.b0.f$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/b0/f$e.class */
    public static final class C9725e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29389d;

        /* renamed from: e */
        public int f29390e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9725e(d dVar) {
            super(dVar);
            C9718f.this = r4;
        }

        /* renamed from: s */
        public final Object m27169s(Object obj) {
            this.f29389d = obj;
            this.f29390e |= Integer.MIN_VALUE;
            return C9718f.this.m27181i(null, this);
        }
    }

    @e(c = "com.truecaller.insights.updates.UpdatesRepositoryImpl", f = "UpdatesRepository.kt", l = {221, 226}, m = "getTotalUpdateTagsCount")
    /* renamed from: e.a.c.b0.f$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/b0/f$f.class */
    public static final class C9726f extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29392d;

        /* renamed from: e */
        public int f29393e;

        /* renamed from: g */
        public Object f29395g;

        /* renamed from: h */
        public Object f29396h;

        /* renamed from: i */
        public Object f29397i;

        /* renamed from: j */
        public int f29398j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9726f(d dVar) {
            super(dVar);
            C9718f.this = r4;
        }

        /* renamed from: s */
        public final Object m27168s(Object obj) {
            this.f29392d = obj;
            this.f29393e |= Integer.MIN_VALUE;
            return C9718f.this.mo27183g(null, this);
        }
    }

    @e(c = "com.truecaller.insights.updates.UpdatesRepositoryImpl", f = "UpdatesRepository.kt", l = {66, 248, 71}, m = "getUpdateCategories")
    /* renamed from: e.a.c.b0.f$g */
    /* loaded from: classes10-dex2jar.jar:e/a/c/b0/f$g.class */
    public static final class C9727g extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29399d;

        /* renamed from: e */
        public int f29400e;

        /* renamed from: g */
        public Object f29402g;

        /* renamed from: h */
        public Object f29403h;

        /* renamed from: i */
        public Object f29404i;

        /* renamed from: j */
        public Object f29405j;

        /* renamed from: k */
        public Object f29406k;

        /* renamed from: l */
        public Object f29407l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9727g(d dVar) {
            super(dVar);
            C9718f.this = r4;
        }

        /* renamed from: s */
        public final Object m27167s(Object obj) {
            this.f29399d = obj;
            this.f29400e |= Integer.MIN_VALUE;
            return C9718f.this.mo27185e(null, this);
        }
    }

    @e(c = "com.truecaller.insights.updates.UpdatesRepositoryImpl", f = "UpdatesRepository.kt", l = {97, 98}, m = "getUpdateCategoryFeedbackForRow")
    /* renamed from: e.a.c.b0.f$h */
    /* loaded from: classes10-dex2jar.jar:e/a/c/b0/f$h.class */
    public static final class C9728h extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29408d;

        /* renamed from: e */
        public int f29409e;

        /* renamed from: g */
        public Object f29411g;

        /* renamed from: h */
        public Object f29412h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9728h(d dVar) {
            super(dVar);
            C9718f.this = r4;
        }

        /* renamed from: s */
        public final Object m27166s(Object obj) {
            this.f29408d = obj;
            this.f29409e |= Integer.MIN_VALUE;
            return C9718f.this.mo27184f(0L, this);
        }
    }

    @e(c = "com.truecaller.insights.updates.UpdatesRepositoryImpl", f = "UpdatesRepository.kt", l = {237, 243}, m = "getUpdatesSmartCardsCount")
    /* renamed from: e.a.c.b0.f$i */
    /* loaded from: classes10-dex2jar.jar:e/a/c/b0/f$i.class */
    public static final class C9729i extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29413d;

        /* renamed from: e */
        public int f29414e;

        /* renamed from: g */
        public Object f29416g;

        /* renamed from: h */
        public Object f29417h;

        /* renamed from: i */
        public Object f29418i;

        /* renamed from: j */
        public Object f29419j;

        /* renamed from: k */
        public Object f29420k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9729i(d dVar) {
            super(dVar);
            C9718f.this = r4;
        }

        /* renamed from: s */
        public final Object m27165s(Object obj) {
            this.f29413d = obj;
            this.f29414e |= Integer.MIN_VALUE;
            return C9718f.this.m27179k(null, null, this);
        }
    }

    @Inject
    public C9718f(AbstractC9893j0 abstractC9893j0, AbstractC10473d abstractC10473d, AbstractC10821g abstractC10821g, AbstractC9686e abstractC9686e, AbstractC10821g abstractC10821g2) {
        l.e(abstractC9893j0, "smsBackupDao");
        l.e(abstractC10473d, "feedbackRepository");
        l.e(abstractC10821g, "smartSmartSmsFeatureFilter");
        l.e(abstractC9686e, "environmentHelper");
        l.e(abstractC10821g2, "smartSmsFeatureFilter");
        this.f29365b = abstractC9893j0;
        this.f29366c = abstractC10473d;
        this.f29367d = abstractC10821g;
        this.f29368e = abstractC9686e;
        this.f29369f = abstractC10821g2;
        this.f29364a = abstractC9686e.mo27306g();
    }

    @Override // p193e.p194a.p437c.p525b0.AbstractC9713d
    /* renamed from: a */
    public Object mo27189a(d<? super List<String>> dVar) {
        return this.f29365b.mo27048a(dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00cc  */
    @Override // p193e.p194a.p437c.p525b0.AbstractC9713d
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo27188b(java.lang.String r8, int r9, long r10, s1.w.d<? super java.util.List<p193e.p194a.p437c.p579q.C10516k>> r12) {
        /*
            Method dump skipped, instructions count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p525b0.C9718f.mo27188b(java.lang.String, int, long, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p525b0.AbstractC9713d
    /* renamed from: c */
    public Object mo27187c(String str, long j, d<? super s> dVar) {
        Object mo27035n = this.f29365b.mo27035n(str, j, ClassifierType.USER, dVar);
        return mo27035n == a.a ? mo27035n : s.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0106  */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    @Override // p193e.p194a.p437c.p525b0.AbstractC9713d
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo27186d(s1.w.d<? super p193e.p194a.p437c.p579q.C10512i> r8) {
        /*
            Method dump skipped, instructions count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p525b0.C9718f.mo27186d(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x012d A[LOOP:0: B:27:0x0123->B:29:0x012d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0250  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0202 -> B:41:0x0208). Please submit an issue!!! */
    @Override // p193e.p194a.p437c.p525b0.AbstractC9713d
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo27185e(p193e.p194a.p437c.p552i.p559g.C10346d r13, s1.w.d<? super java.util.Map<java.lang.Long, p193e.p194a.p437c.p525b0.C9711b>> r14) {
        /*
            Method dump skipped, instructions count: 751
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p525b0.C9718f.mo27185e(e.a.c.i.g.d, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x018e  */
    @Override // p193e.p194a.p437c.p525b0.AbstractC9713d
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo27184f(long r11, s1.w.d<? super p193e.p194a.p437c.p525b0.C9711b> r13) {
        /*
            Method dump skipped, instructions count: 402
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p525b0.C9718f.mo27184f(long, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01b7  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x016c -> B:31:0x016f). Please submit an issue!!! */
    @Override // p193e.p194a.p437c.p525b0.AbstractC9713d
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo27183g(w3.b.a.b r8, s1.w.d<? super java.lang.Integer> r9) {
        /*
            Method dump skipped, instructions count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p525b0.C9718f.mo27183g(w3.b.a.b, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00aa  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m27182h(com.truecaller.insights.models.pdo.SmsBackup r6, s1.w.d<? super java.lang.Boolean> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p437c.p525b0.C9718f.C9719a
            if (r0 == 0) goto L28
            r0 = r7
            e.a.c.b0.f$a r0 = (p193e.p194a.p437c.p525b0.C9718f.C9719a) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f29371e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f29371e = r1
            r0 = r8
            r7 = r0
            goto L32
        L28:
            e.a.c.b0.f$a r0 = new e.a.c.b0.f$a
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L32:
            r0 = r7
            java.lang.Object r0 = r0.f29370d
            r8 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r7
            int r0 = r0.f29371e
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L60
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L56
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r8
            r6 = r0
            goto L9b
        L56:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L60:
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            java.lang.String r0 = r0.getUpdateCategory()
            r11 = r0
            r0 = r11
            if (r0 == 0) goto Lb3
            r0 = r5
            e.a.c.w.o0.g r0 = r0.f29367d
            r8 = r0
            e.a.c.g.v r0 = new e.a.c.g.v
            r1 = r0
            r2 = r6
            java.lang.String r2 = r2.getAddress()
            r3 = r11
            r1.<init>(r2, r3)
            r6 = r0
            r0 = r7
            r1 = 1
            r0.f29371e = r1
            r0 = r8
            r1 = r6
            r2 = r7
            java.lang.Object r0 = r0.mo25585d(r1, r2)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r10
            if (r0 != r1) goto L9b
            r0 = r10
            return r0
        L9b:
            r0 = r6
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            r6 = r0
            r0 = r6
            if (r0 == 0) goto Lb3
            r0 = r6
            boolean r0 = r0.booleanValue()
            r12 = r0
            goto Lb6
        Lb3:
            r0 = 0
            r12 = r0
        Lb6:
            r0 = r12
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p525b0.C9718f.m27182h(com.truecaller.insights.models.pdo.SmsBackup, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006b  */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m27181i(p193e.p194a.p437c.p552i.p559g.C10346d r10, s1.w.d<? super java.util.List<? extends com.truecaller.insights.models.pdo.SmsBackup>> r11) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p525b0.C9718f.m27181i(e.a.c.i.g.d, s1.w.d):java.lang.Object");
    }

    /* renamed from: j */
    public final AbstractC10597h m27180j(SmsBackup smsBackup) {
        String updateCategory = smsBackup.getUpdateCategory();
        return updateCategory == null || updateCategory.length() == 0 ? AbstractC10597h.C10599b.f31611d : smsBackup.getClassifiedBy() == ClassifierType.USER ? AbstractC10597h.C10598a.f31610d : AbstractC10597h.C10604g.f31616d;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0202  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0190 -> B:36:0x0196). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x01b4 -> B:38:0x01c8). Please submit an issue!!! */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m27179k(java.util.List<java.lang.Integer> r7, w3.b.a.b r8, s1.w.d<? super s1.k<java.lang.Integer, w3.b.a.b>> r9) {
        /*
            Method dump skipped, instructions count: 553
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p525b0.C9718f.m27179k(java.util.List, w3.b.a.b, s1.w.d):java.lang.Object");
    }

    /* renamed from: l */
    public final C10516k m27178l(SmsBackup smsBackup) {
        C10516k c10516k;
        String str;
        String updateCategory = smsBackup.getUpdateCategory();
        if (updateCategory != null) {
            long conversationId = smsBackup.getConversationId();
            String m26799e = C10031q.m26799e(smsBackup.getAddress(), this.f29364a);
            long messageID = smsBackup.getMessageID();
            AbstractC10651b m25883v2 = C10480a.m25883v2(updateCategory);
            long time = smsBackup.getDate().getTime();
            int spamCategory = smsBackup.getSpamCategory();
            boolean z = smsBackup.getTransport() == Transport.IM;
            String message = smsBackup.getMessage();
            b bVar = new b(smsBackup.getDate().getTime());
            b bVar2 = new b();
            h r = h.r(bVar2.L(), bVar.L());
            l.d(r, "Days.daysBetween(current…te(), date.toLocalDate())");
            int i = ((i) r).a;
            if (i == 0) {
                str = "Today";
            } else if (i == -1) {
                str = "Yesterday";
            } else {
                int u = bVar.u();
                l.d(bVar2, "currentDate");
                if (u == bVar2.u()) {
                    p L = bVar.L();
                    l.d(L, "date.toLocalDate()");
                    str = C10480a.m25870y0(L);
                } else {
                    str = DateFormat.dd_MMM_yyyy.formatter().f(bVar);
                    l.d(str, "DateFormat.dd_MMM_yyyy.formatter().print(date)");
                }
            }
            String f = DateFormat.hh_mm_aa.formatter().f(new b(smsBackup.getDate().getTime()));
            l.d(f, "DateFormat.hh_mm_aa.formatter().print(date)");
            c10516k = new C10516k(conversationId, m26799e, messageID, m25883v2, time, spamCategory, z, message, str, f);
        } else {
            c10516k = null;
        }
        return c10516k;
    }

    @Override // p193e.p194a.p437c.p525b0.AbstractC9713d
    /* renamed from: s */
    public f<List<C10516k>> mo27177s(C10509f c10509f) {
        f<List<SmsBackup>> fVar;
        l.e(c10509f, "loadConfig");
        if (c10509f.f31241a) {
            fVar = this.f29365b.mo27039j(c10509f.f31242b, c10509f.f31243c, "Delivery");
        } else {
            int ordinal = c10509f.f31244d.ordinal();
            if (ordinal == 0) {
                fVar = this.f29365b.mo27032q(c10509f.f31242b, c10509f.f31243c, "Delivery");
            } else if (ordinal != 1) {
                throw new s1.i();
            } else {
                fVar = this.f29365b.mo27037l(c10509f.f31242b, c10509f.f31243c, "Delivery");
            }
        }
        return s1.a.a.a.v0.f.d.S0(fVar, 0, new C9714e(this, null), 1, (Object) null);
    }

    @Override // p193e.p194a.p437c.p525b0.AbstractC9713d
    /* renamed from: t */
    public f<List<C10516k>> mo27176t(int i, long j) {
        return new C9722d(s1.a.a.a.v0.f.d.S0(this.f29365b.mo27036m(i * 3, j), 0, new C9714e(this, null), 1, (Object) null), i);
    }
}
