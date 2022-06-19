package p193e.p194a.p437c.p438a.p498n.p500b;

import com.truecaller.insights.p168ui.models.AdapterItem;
import java.util.List;
import p193e.p194a.p437c.p438a.p446c.p450g.C8835e;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
/* renamed from: e.a.c.a.n.b.k */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/n/b/k.class */
public final class C9412k implements f<List<? extends AdapterItem.C4118j>> {

    /* renamed from: a */
    public final /* synthetic */ f f28587a;

    /* renamed from: e.a.c.a.n.b.k$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/n/b/k$a.class */
    public static final class C9413a implements g<C8835e> {

        /* renamed from: a */
        public final /* synthetic */ g f28588a;

        @e(c = "com.truecaller.insights.ui.reminders.domain.RemindersPageFlowUseCase$getUpcomingReminders$$inlined$map$1$2", f = "RemindersPageFlowUseCase.kt", l = {138}, m = "emit")
        /* renamed from: e.a.c.a.n.b.k$a$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/n/b/k$a$a.class */
        public static final class C9414a extends c {

            /* renamed from: d */
            public /* synthetic */ Object f28589d;

            /* renamed from: e */
            public int f28590e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C9414a(d dVar) {
                super(dVar);
                C9413a.this = r4;
            }

            /* renamed from: s */
            public final Object m27576s(Object obj) {
                this.f28589d = obj;
                this.f28590e |= Integer.MIN_VALUE;
                return C9413a.this.m27577a(null, this);
            }
        }

        public C9413a(g gVar) {
            this.f28588a = gVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m27577a(java.lang.Object r9, s1.w.d r10) {
            /*
                r8 = this;
                r0 = r10
                boolean r0 = r0 instanceof p193e.p194a.p437c.p438a.p498n.p500b.C9412k.C9413a.C9414a
                if (r0 == 0) goto L28
                r0 = r10
                e.a.c.a.n.b.k$a$a r0 = (p193e.p194a.p437c.p438a.p498n.p500b.C9412k.C9413a.C9414a) r0
                r11 = r0
                r0 = r11
                int r0 = r0.f28590e
                r12 = r0
                r0 = r12
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                r0 = r0 & r1
                if (r0 == 0) goto L28
                r0 = r11
                r1 = r12
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                int r1 = r1 + r2
                r0.f28590e = r1
                r0 = r11
                r10 = r0
                goto L32
            L28:
                e.a.c.a.n.b.k$a$a r0 = new e.a.c.a.n.b.k$a$a
                r1 = r0
                r2 = r8
                r3 = r10
                r1.<init>(r3)
                r10 = r0
            L32:
                r0 = r10
                java.lang.Object r0 = r0.f28589d
                r13 = r0
                s1.w.j.a r0 = s1.w.j.a.a
                r11 = r0
                r0 = r10
                int r0 = r0.f28590e
                r12 = r0
                r0 = r12
                if (r0 == 0) goto L5f
                r0 = r12
                r1 = 1
                if (r0 != r1) goto L55
                r0 = r13
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                goto Lc6
            L55:
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                r1 = r0
                java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                r1.<init>(r2)
                throw r0
            L5f:
                r0 = r13
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                r0 = r8
                q3.a.x2.g r0 = r0.f28588a
                r13 = r0
                r0 = r9
                e.a.c.a.c.g.e r0 = (p193e.p194a.p437c.p438a.p446c.p450g.C8835e) r0
                java.util.List<e.a.c.a.l.b$g> r0 = r0.f26937b
                r14 = r0
                java.util.ArrayList r0 = new java.util.ArrayList
                r1 = r0
                r2 = r14
                r3 = 10
                int r2 = p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m4004J(r2, r3)
                r1.<init>(r2)
                r9 = r0
                r0 = r14
                java.util.Iterator r0 = r0.iterator()
                r14 = r0
            L8b:
                r0 = r14
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto Lb2
                r0 = r9
                com.truecaller.insights.ui.models.AdapterItem$j r1 = new com.truecaller.insights.ui.models.AdapterItem$j
                r2 = r1
                r3 = r14
                java.lang.Object r3 = r3.next()
                e.a.c.a.l.b$g r3 = (p193e.p194a.p437c.p438a.p493l.AbstractC9235b.C9242g) r3
                r4 = 0
                r5 = 2
                r2.<init>(r3, r4, r5)
                boolean r0 = r0.add(r1)
                goto L8b
            Lb2:
                r0 = r10
                r1 = 1
                r0.f28590e = r1
                r0 = r13
                r1 = r9
                r2 = r10
                java.lang.Object r0 = r0.a(r1, r2)
                r1 = r11
                if (r0 != r1) goto Lc6
                r0 = r11
                return r0
            Lc6:
                s1.s r0 = s1.s.a
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p498n.p500b.C9412k.C9413a.m27577a(java.lang.Object, s1.w.d):java.lang.Object");
        }
    }

    public C9412k(f fVar) {
        this.f28587a = fVar;
    }

    /* renamed from: c */
    public Object m27578c(g gVar, d dVar) {
        Object c = this.f28587a.c(new C9413a(gVar), dVar);
        return c == a.a ? c : s.a;
    }
}
