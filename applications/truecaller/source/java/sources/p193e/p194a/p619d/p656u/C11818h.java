package p193e.p194a.p619d.p656u;

import java.util.Set;
import p193e.p194a.p619d.p663x.p665r.C12262i;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
/* renamed from: e.a.d.u.h */
/* loaded from: classes15-dex2jar.jar:e/a/d/u/h.class */
public final class C11818h implements f<C12262i> {

    /* renamed from: a */
    public final /* synthetic */ f f34730a;

    /* renamed from: b */
    public final /* synthetic */ String f34731b;

    /* renamed from: e.a.d.u.h$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/u/h$a.class */
    public static final class C11819a implements g<Set<? extends C12262i>> {

        /* renamed from: a */
        public final /* synthetic */ g f34732a;

        /* renamed from: b */
        public final /* synthetic */ C11818h f34733b;

        @e(c = "com.truecaller.voip.di.InvitationModule$Companion$provideAttributesFlow$$inlined$map$1$2", f = "InvitationComponent.kt", l = {135}, m = "emit")
        /* renamed from: e.a.d.u.h$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/u/h$a$a.class */
        public static final class C11820a extends c {

            /* renamed from: d */
            public /* synthetic */ Object f34734d;

            /* renamed from: e */
            public int f34735e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11820a(d dVar) {
                super(dVar);
                C11819a.this = r4;
            }

            /* renamed from: s */
            public final Object m23968s(Object obj) {
                this.f34734d = obj;
                this.f34735e |= Integer.MIN_VALUE;
                return C11819a.this.m23969a(null, this);
            }
        }

        public C11819a(g gVar, C11818h c11818h) {
            this.f34732a = gVar;
            this.f34733b = c11818h;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m23969a(java.lang.Object r6, s1.w.d r7) {
            /*
                r5 = this;
                r0 = r7
                boolean r0 = r0 instanceof p193e.p194a.p619d.p656u.C11818h.C11819a.C11820a
                if (r0 == 0) goto L28
                r0 = r7
                e.a.d.u.h$a$a r0 = (p193e.p194a.p619d.p656u.C11818h.C11819a.C11820a) r0
                r8 = r0
                r0 = r8
                int r0 = r0.f34735e
                r9 = r0
                r0 = r9
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                r0 = r0 & r1
                if (r0 == 0) goto L28
                r0 = r8
                r1 = r9
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                int r1 = r1 + r2
                r0.f34735e = r1
                r0 = r8
                r7 = r0
                goto L32
            L28:
                e.a.d.u.h$a$a r0 = new e.a.d.u.h$a$a
                r1 = r0
                r2 = r5
                r3 = r7
                r1.<init>(r3)
                r7 = r0
            L32:
                r0 = r7
                java.lang.Object r0 = r0.f34734d
                r10 = r0
                s1.w.j.a r0 = s1.w.j.a.a
                r8 = r0
                r0 = r7
                int r0 = r0.f34735e
                r9 = r0
                r0 = r9
                if (r0 == 0) goto L5f
                r0 = r9
                r1 = 1
                if (r0 != r1) goto L55
                r0 = r10
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                goto Lb7
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
                q3.a.x2.g r0 = r0.f34732a
                r10 = r0
                r0 = r6
                java.util.Set r0 = (java.util.Set) r0
                java.util.Iterator r0 = r0.iterator()
                r11 = r0
            L75:
                r0 = r11
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto La1
                r0 = r11
                java.lang.Object r0 = r0.next()
                r6 = r0
                r0 = r6
                e.a.d.x.r.i r0 = (p193e.p194a.p619d.p663x.p665r.C12262i) r0
                r1 = r5
                e.a.d.u.h r1 = r1.f34733b
                java.lang.String r1 = r1.f34731b
                boolean r0 = r0.m23355a(r1)
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
                boolean r0 = r0.booleanValue()
                if (r0 == 0) goto L75
                goto La3
            La1:
                r0 = 0
                r6 = r0
            La3:
                r0 = r7
                r1 = 1
                r0.f34735e = r1
                r0 = r10
                r1 = r6
                r2 = r7
                java.lang.Object r0 = r0.a(r1, r2)
                r1 = r8
                if (r0 != r1) goto Lb7
                r0 = r8
                return r0
            Lb7:
                s1.s r0 = s1.s.a
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p656u.C11818h.C11819a.m23969a(java.lang.Object, s1.w.d):java.lang.Object");
        }
    }

    public C11818h(f fVar, String str) {
        this.f34730a = fVar;
        this.f34731b = str;
    }

    /* renamed from: c */
    public Object m23970c(g gVar, d dVar) {
        Object c = this.f34730a.c(new C11819a(gVar, this), dVar);
        return c == a.a ? c : s.a;
    }
}
