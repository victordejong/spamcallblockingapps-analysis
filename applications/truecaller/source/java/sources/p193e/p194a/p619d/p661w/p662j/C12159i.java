package p193e.p194a.p619d.p661w.p662j;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p661w.AbstractC12114h;
import p193e.p194a.p619d.p663x.p665r.C12262i;
import p193e.p194a.p619d.p663x.p665r.C12282l;
import q3.a.i0;
import q3.a.x2.f;
import q3.a.x2.g;
import q3.a.x2.w0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.b.q;
import s1.z.c.l;
@e(c = "com.truecaller.voip.invitation.action.ConnectInvitationImpl$endWhenAllMembersRinging$1", f = "ConnectInvitation.kt", l = {187}, m = "invokeSuspend")
/* renamed from: e.a.d.w.j.i */
/* loaded from: classes15-dex2jar.jar:e/a/d/w/j/i.class */
public final class C12159i extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f35533e;

    /* renamed from: f */
    public final /* synthetic */ C12153h f35534f;

    @e(c = "com.truecaller.voip.invitation.action.ConnectInvitationImpl$endWhenAllMembersRinging$1$2", f = "ConnectInvitation.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.w.j.i$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/w/j/i$a.class */
    public static final class C12160a extends i implements q<Set<? extends C12282l>, Set<? extends C12262i>, d<? super Set<? extends C12262i>>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f35535e;

        /* renamed from: f */
        public /* synthetic */ Object f35536f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12160a(d dVar) {
            super(3, dVar);
            C12159i.this = r5;
        }

        /* renamed from: h */
        public final Object m23534h(Object obj, Object obj2, Object obj3) {
            Object obj4;
            Set<C12282l> set = (Set) obj;
            Set set2 = (Set) obj2;
            d dVar = (d) obj3;
            l.e(set, "members");
            l.e(set2, "attributes");
            l.e(dVar, "continuation");
            C12159i c12159i = C12159i.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            Objects.requireNonNull(c12159i.f35534f);
            ArrayList arrayList = new ArrayList(C25225a.m4004J(set, 10));
            for (C12282l c12282l : set) {
                Iterator it = set2.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        obj4 = null;
                        break;
                    }
                    obj4 = it.next();
                    if (((C12262i) obj4).m23355a(c12282l.f35910a)) {
                        break;
                    }
                }
                arrayList.add((C12262i) obj4);
            }
            return s1.u.i.d1(arrayList);
        }

        /* renamed from: s */
        public final Object m23533s(Object obj) {
            Object obj2;
            C25225a.m3932a3(obj);
            Set<C12282l> set = (Set) this.f35535e;
            Set set2 = (Set) this.f35536f;
            Objects.requireNonNull(C12159i.this.f35534f);
            ArrayList arrayList = new ArrayList(C25225a.m4004J(set, 10));
            for (C12282l c12282l : set) {
                Iterator it = set2.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        obj2 = null;
                        break;
                    }
                    obj2 = it.next();
                    if (((C12262i) obj2).m23355a(c12282l.f35910a)) {
                        break;
                    }
                }
                arrayList.add((C12262i) obj2);
            }
            return s1.u.i.d1(arrayList);
        }
    }

    /* renamed from: e.a.d.w.j.i$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/w/j/i$b.class */
    public static final class C12161b implements f<Set<? extends C12282l>> {

        /* renamed from: a */
        public final /* synthetic */ f f35538a;

        /* renamed from: e.a.d.w.j.i$b$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/w/j/i$b$a.class */
        public static final class C12162a implements g<Set<? extends C12282l>> {

            /* renamed from: a */
            public final /* synthetic */ g f35539a;

            @e(c = "com.truecaller.voip.invitation.action.ConnectInvitationImpl$endWhenAllMembersRinging$1$invokeSuspend$$inlined$filter$1$2", f = "ConnectInvitation.kt", l = {135}, m = "emit")
            /* renamed from: e.a.d.w.j.i$b$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/w/j/i$b$a$a.class */
            public static final class C12163a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f35540d;

                /* renamed from: e */
                public int f35541e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C12163a(d dVar) {
                    super(dVar);
                    C12162a.this = r4;
                }

                /* renamed from: s */
                public final Object m23530s(Object obj) {
                    this.f35540d = obj;
                    this.f35541e |= Integer.MIN_VALUE;
                    return C12162a.this.m23531a(null, this);
                }
            }

            public C12162a(g gVar, C12161b c12161b) {
                this.f35539a = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m23531a(java.lang.Object r6, s1.w.d r7) {
                /*
                    r5 = this;
                    s1.s r0 = s1.s.a
                    r8 = r0
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p661w.p662j.C12159i.C12161b.C12162a.C12163a
                    if (r0 == 0) goto L30
                    r0 = r7
                    e.a.d.w.j.i$b$a$a r0 = (p193e.p194a.p619d.p661w.p662j.C12159i.C12161b.C12162a.C12163a) r0
                    r9 = r0
                    r0 = r9
                    int r0 = r0.f35541e
                    r10 = r0
                    r0 = r10
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L30
                    r0 = r9
                    r1 = r10
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f35541e = r1
                    r0 = r9
                    r7 = r0
                    goto L3a
                L30:
                    e.a.d.w.j.i$b$a$a r0 = new e.a.d.w.j.i$b$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L3a:
                    r0 = r7
                    java.lang.Object r0 = r0.f35540d
                    r11 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r9 = r0
                    r0 = r7
                    int r0 = r0.f35541e
                    r10 = r0
                    r0 = r10
                    if (r0 == 0) goto L68
                    r0 = r10
                    r1 = 1
                    if (r0 != r1) goto L5e
                    r0 = r11
                    p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                    goto Laa
                L5e:
                    java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                    r1 = r0
                    java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                    r1.<init>(r2)
                    throw r0
                L68:
                    r0 = r11
                    p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                    r0 = r5
                    q3.a.x2.g r0 = r0.f35539a
                    r11 = r0
                    r0 = r6
                    java.util.Set r0 = (java.util.Set) r0
                    int r0 = r0.size()
                    r1 = 1
                    if (r0 <= r1) goto L86
                    r0 = 1
                    r12 = r0
                    goto L89
                L86:
                    r0 = 0
                    r12 = r0
                L89:
                    r0 = r12
                    java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
                    boolean r0 = r0.booleanValue()
                    if (r0 == 0) goto Laa
                    r0 = r7
                    r1 = 1
                    r0.f35541e = r1
                    r0 = r11
                    r1 = r6
                    r2 = r7
                    java.lang.Object r0 = r0.a(r1, r2)
                    r1 = r9
                    if (r0 != r1) goto Laa
                    r0 = r9
                    return r0
                Laa:
                    r0 = r8
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p661w.p662j.C12159i.C12161b.C12162a.m23531a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C12161b(f fVar) {
            this.f35538a = fVar;
        }

        /* renamed from: c */
        public Object m23532c(g gVar, d dVar) {
            Object c = this.f35538a.c(new C12162a(gVar, this), dVar);
            return c == a.a ? c : s.a;
        }
    }

    /* renamed from: e.a.d.w.j.i$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/w/j/i$c.class */
    public static final class C12164c implements f<Set<? extends C12262i>> {

        /* renamed from: a */
        public final /* synthetic */ f f35543a;

        /* renamed from: b */
        public final /* synthetic */ C12159i f35544b;

        /* renamed from: e.a.d.w.j.i$c$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/w/j/i$c$a.class */
        public static final class C12165a implements g<Set<? extends C12262i>> {

            /* renamed from: a */
            public final /* synthetic */ g f35545a;

            /* renamed from: b */
            public final /* synthetic */ C12164c f35546b;

            @e(c = "com.truecaller.voip.invitation.action.ConnectInvitationImpl$endWhenAllMembersRinging$1$invokeSuspend$$inlined$filter$2$2", f = "ConnectInvitation.kt", l = {136}, m = "emit")
            /* renamed from: e.a.d.w.j.i$c$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/w/j/i$c$a$a.class */
            public static final class C12166a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f35547d;

                /* renamed from: e */
                public int f35548e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C12166a(d dVar) {
                    super(dVar);
                    C12165a.this = r4;
                }

                /* renamed from: s */
                public final Object m23527s(Object obj) {
                    this.f35547d = obj;
                    this.f35548e |= Integer.MIN_VALUE;
                    return C12165a.this.m23528a(null, this);
                }
            }

            public C12165a(g gVar, C12164c c12164c) {
                this.f35545a = gVar;
                this.f35546b = c12164c;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m23528a(java.lang.Object r6, s1.w.d r7) {
                /*
                    Method dump skipped, instructions count: 275
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p661w.p662j.C12159i.C12164c.C12165a.m23528a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C12164c(f fVar, C12159i c12159i) {
            this.f35543a = fVar;
            this.f35544b = c12159i;
        }

        /* renamed from: c */
        public Object m23529c(g gVar, d dVar) {
            Object c = this.f35543a.c(new C12165a(gVar, this), dVar);
            return c == a.a ? c : s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12159i(C12153h c12153h, d dVar) {
        super(2, dVar);
        this.f35534f = c12153h;
    }

    /* renamed from: i */
    public final d<s> m23537i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12159i(this.f35534f, dVar);
    }

    /* renamed from: k */
    public final Object m23536k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12159i(this.f35534f, dVar).m23535s(s.a);
    }

    /* renamed from: s */
    public final Object m23535s(Object obj) {
        a aVar = a.a;
        int i = this.f35533e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C12164c c12164c = new C12164c(new w0(new C12161b(this.f35534f.f35512f.mo23345o()), this.f35534f.f35512f.mo23354a(), new C12160a(null)), this);
            this.f35533e = 1;
            if (s1.a.a.a.v0.f.d.M0(c12164c, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        this.f35534f.f35514h.mo23505e(AbstractC12114h.AbstractC12116b.C12118b.f35454b);
        return s.a;
    }
}
