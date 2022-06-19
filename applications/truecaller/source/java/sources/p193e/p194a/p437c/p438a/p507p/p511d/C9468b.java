package p193e.p194a.p437c.p438a.p507p.p511d;

import com.truecaller.insights.p168ui.smartfeed.presentation.InsightsSmartFeedViewModel;
import java.util.Set;
import p193e.p194a.p437c.p606w.p607o0.p608k.AbstractC10836e;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
/* renamed from: e.a.c.a.p.d.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/d/b.class */
public final class C9468b implements f<k<? extends Boolean, ? extends Boolean>> {

    /* renamed from: a */
    public final /* synthetic */ f f28721a;

    /* renamed from: b */
    public final /* synthetic */ InsightsSmartFeedViewModel f28722b;

    /* renamed from: e.a.c.a.p.d.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/p/d/b$a.class */
    public static final class C9469a implements g<Set<? extends AbstractC10836e>> {

        /* renamed from: a */
        public final /* synthetic */ g f28723a;

        /* renamed from: b */
        public final /* synthetic */ InsightsSmartFeedViewModel f28724b;

        @e(c = "com.truecaller.insights.ui.smartfeed.presentation.InsightsSmartFeedViewModel$getActionButtonStates$$inlined$mapNotNull$1$2", f = "InsightsSmartFeedViewModel.kt", l = {138}, m = "emit")
        /* renamed from: e.a.c.a.p.d.b$a$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/p/d/b$a$a.class */
        public static final class C9470a extends c {

            /* renamed from: d */
            public /* synthetic */ Object f28725d;

            /* renamed from: e */
            public int f28726e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C9470a(d dVar) {
                super(dVar);
                C9469a.this = r4;
            }

            /* renamed from: s */
            public final Object m27541s(Object obj) {
                this.f28725d = obj;
                this.f28726e |= Integer.MIN_VALUE;
                return C9469a.this.m27542a(null, this);
            }
        }

        public C9469a(g gVar, InsightsSmartFeedViewModel insightsSmartFeedViewModel) {
            this.f28723a = gVar;
            this.f28724b = insightsSmartFeedViewModel;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m27542a(java.lang.Object r7, s1.w.d r8) {
            /*
                r6 = this;
                r0 = r8
                boolean r0 = r0 instanceof p193e.p194a.p437c.p438a.p507p.p511d.C9468b.C9469a.C9470a
                if (r0 == 0) goto L28
                r0 = r8
                e.a.c.a.p.d.b$a$a r0 = (p193e.p194a.p437c.p438a.p507p.p511d.C9468b.C9469a.C9470a) r0
                r9 = r0
                r0 = r9
                int r0 = r0.f28726e
                r10 = r0
                r0 = r10
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                r0 = r0 & r1
                if (r0 == 0) goto L28
                r0 = r9
                r1 = r10
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                int r1 = r1 + r2
                r0.f28726e = r1
                r0 = r9
                r8 = r0
                goto L32
            L28:
                e.a.c.a.p.d.b$a$a r0 = new e.a.c.a.p.d.b$a$a
                r1 = r0
                r2 = r6
                r3 = r8
                r1.<init>(r3)
                r8 = r0
            L32:
                r0 = r8
                java.lang.Object r0 = r0.f28725d
                r11 = r0
                s1.w.j.a r0 = s1.w.j.a.a
                r9 = r0
                r0 = r8
                int r0 = r0.f28726e
                r10 = r0
                r0 = r10
                if (r0 == 0) goto L5f
                r0 = r10
                r1 = 1
                if (r0 != r1) goto L55
                r0 = r11
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                goto La6
            L55:
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                r1 = r0
                java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                r1.<init>(r2)
                throw r0
            L5f:
                r0 = r11
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                r0 = r6
                q3.a.x2.g r0 = r0.f28723a
                r11 = r0
                r0 = r7
                java.util.Set r0 = (java.util.Set) r0
                r7 = r0
                s1.k r0 = new s1.k
                r1 = r0
                r2 = r7
                boolean r2 = r2.isEmpty()
                r3 = 1
                r2 = r2 ^ r3
                java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
                r3 = r7
                r4 = r6
                com.truecaller.insights.ui.smartfeed.presentation.InsightsSmartFeedViewModel r4 = r4.f28724b
                java.util.Set<e.a.c.w.o0.k.e> r4 = r4.f12909f
                boolean r3 = s1.z.c.l.a(r3, r4)
                r4 = 1
                r3 = r3 ^ r4
                java.lang.Boolean r3 = java.lang.Boolean.valueOf(r3)
                r1.<init>(r2, r3)
                r7 = r0
                r0 = r8
                r1 = 1
                r0.f28726e = r1
                r0 = r11
                r1 = r7
                r2 = r8
                java.lang.Object r0 = r0.a(r1, r2)
                r1 = r9
                if (r0 != r1) goto La6
                r0 = r9
                return r0
            La6:
                s1.s r0 = s1.s.a
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p507p.p511d.C9468b.C9469a.m27542a(java.lang.Object, s1.w.d):java.lang.Object");
        }
    }

    public C9468b(f fVar, InsightsSmartFeedViewModel insightsSmartFeedViewModel) {
        this.f28721a = fVar;
        this.f28722b = insightsSmartFeedViewModel;
    }

    /* renamed from: c */
    public Object m27543c(g gVar, d dVar) {
        Object c = this.f28721a.c(new C9469a(gVar, this.f28722b), dVar);
        return c == a.a ? c : s.a;
    }
}
