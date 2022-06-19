package p193e.p194a.p619d.p628c;

import com.truecaller.voip.C4781R;
import java.util.Objects;
import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11592d;
import p193e.p194a.p619d.p637c0.p642z1.C11593e;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import p193e.p194a.p619d.p657v.AbstractC11835f;
import p193e.p194a.p619d.p657v.AbstractC11840h;
import q3.a.i0;
import q3.a.j0;
import q3.a.x2.g;
import q3.a.x2.i1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.ui.VoipPresenter$listenOngoingCallStatus$1", f = "VoipPresenter.kt", l = {537, 543}, m = "invokeSuspend")
/* renamed from: e.a.d.c.q */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/q.class */
public final class C11316q extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f33300e;

    /* renamed from: f */
    public final /* synthetic */ C11325t f33301f;

    /* renamed from: e.a.d.c.q$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/q$a.class */
    public static final class C11317a implements g<AbstractC11840h> {

        /* renamed from: b */
        public final /* synthetic */ AbstractC11822b f33303b;

        public C11317a(AbstractC11822b abstractC11822b) {
            C11316q.this = r4;
            this.f33303b = abstractC11822b;
        }

        /* renamed from: a */
        public Object m24841a(Object obj, d dVar) {
            AbstractC11302l abstractC11302l;
            s sVar = s.a;
            AbstractC11840h abstractC11840h = (AbstractC11840h) obj;
            if (!(abstractC11840h instanceof AbstractC11840h.C11841a)) {
                if (abstractC11840h instanceof AbstractC11840h.C11851c) {
                    if (!((Boolean) C11316q.this.f33301f.f33327m.mo23957f().getValue()).booleanValue()) {
                        AbstractC11302l abstractC11302l2 = (AbstractC11302l) C11316q.this.f33301f.f57683a;
                        if (abstractC11302l2 != null) {
                            abstractC11302l2.mo24893A8(true);
                        }
                        C11325t c11325t = C11316q.this.f33301f;
                        Objects.requireNonNull(c11325t);
                        s1.a.a.a.v0.f.d.w2(c11325t, (f) null, (j0) null, new C11324s(c11325t, null), 3, (Object) null);
                        C11325t.m24826Jj(C11316q.this.f33301f, this.f33303b);
                        C11325t c11325t2 = C11316q.this.f33301f;
                        AbstractC11822b abstractC11822b = this.f33303b;
                        Objects.requireNonNull(c11325t2);
                        c11325t2.f33319e = s1.a.a.a.v0.f.d.w2(c11325t2, (f) null, (j0) null, new C11312o(c11325t2, abstractC11822b, null), 3, (Object) null);
                    }
                } else if (abstractC11840h instanceof AbstractC11840h.AbstractC11842b) {
                    C11316q.this.f33301f.m24823Mj(true);
                    AbstractC11302l abstractC11302l3 = (AbstractC11302l) C11316q.this.f33301f.f57683a;
                    if (abstractC11302l3 != null) {
                        C19291g.m13586T1(abstractC11302l3, false, 0L, 2, null);
                        abstractC11302l3.mo24893A8(false);
                        abstractC11302l3.mo24885V7();
                    }
                    C11325t c11325t3 = C11316q.this.f33301f;
                    if (c11325t3.f33323i && (abstractC11302l = (AbstractC11302l) c11325t3.f57683a) != null) {
                        abstractC11302l.mo24868v3(C19291g.m13607M1((AbstractC11840h.AbstractC11842b) abstractC11840h), C4781R.attr.voip_call_status_error_color);
                    }
                }
            }
            return sVar;
        }
    }

    /* renamed from: e.a.d.c.q$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/q$b.class */
    public static final class C11318b implements q3.a.x2.f<Object> {

        /* renamed from: a */
        public final /* synthetic */ q3.a.x2.f f33304a;

        /* renamed from: e.a.d.c.q$b$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c/q$b$a.class */
        public static final class C11319a implements g<Object> {

            /* renamed from: a */
            public final /* synthetic */ g f33305a;

            @e(c = "com.truecaller.voip.ui.VoipPresenter$listenOngoingCallStatus$1$invokeSuspend$$inlined$filterIsInstance$1$2", f = "VoipPresenter.kt", l = {135}, m = "emit")
            /* renamed from: e.a.d.c.q$b$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/c/q$b$a$a.class */
            public static final class C11320a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f33306d;

                /* renamed from: e */
                public int f33307e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C11320a(d dVar) {
                    super(dVar);
                    C11319a.this = r4;
                }

                /* renamed from: s */
                public final Object m24838s(Object obj) {
                    this.f33306d = obj;
                    this.f33307e |= Integer.MIN_VALUE;
                    return C11319a.this.m24839a(null, this);
                }
            }

            public C11319a(g gVar, C11318b c11318b) {
                this.f33305a = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m24839a(java.lang.Object r6, s1.w.d r7) {
                /*
                    r5 = this;
                    s1.s r0 = s1.s.a
                    r8 = r0
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p628c.C11316q.C11318b.C11319a.C11320a
                    if (r0 == 0) goto L30
                    r0 = r7
                    e.a.d.c.q$b$a$a r0 = (p193e.p194a.p619d.p628c.C11316q.C11318b.C11319a.C11320a) r0
                    r9 = r0
                    r0 = r9
                    int r0 = r0.f33307e
                    r10 = r0
                    r0 = r10
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L30
                    r0 = r9
                    r1 = r10
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f33307e = r1
                    r0 = r9
                    r7 = r0
                    goto L3a
                L30:
                    e.a.d.c.q$b$a$a r0 = new e.a.d.c.q$b$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L3a:
                    r0 = r7
                    java.lang.Object r0 = r0.f33306d
                    r11 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r9 = r0
                    r0 = r7
                    int r0 = r0.f33307e
                    r10 = r0
                    r0 = r10
                    if (r0 == 0) goto L68
                    r0 = r10
                    r1 = 1
                    if (r0 != r1) goto L5e
                    r0 = r11
                    p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                    goto L90
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
                    q3.a.x2.g r0 = r0.f33305a
                    r11 = r0
                    r0 = r6
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p657v.AbstractC11835f.C11836a
                    if (r0 == 0) goto L90
                    r0 = r7
                    r1 = 1
                    r0.f33307e = r1
                    r0 = r11
                    r1 = r6
                    r2 = r7
                    java.lang.Object r0 = r0.a(r1, r2)
                    r1 = r9
                    if (r0 != r1) goto L90
                    r0 = r9
                    return r0
                L90:
                    r0 = r8
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p628c.C11316q.C11318b.C11319a.m24839a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C11318b(q3.a.x2.f fVar) {
            this.f33304a = fVar;
        }

        /* renamed from: c */
        public Object m24840c(g gVar, d dVar) {
            Object c = this.f33304a.c(new C11319a(gVar, this), dVar);
            return c == a.a ? c : s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11316q(C11325t c11325t, d dVar) {
        super(2, dVar);
        this.f33301f = c11325t;
    }

    /* renamed from: i */
    public final d<s> m24844i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11316q(this.f33301f, dVar);
    }

    /* renamed from: k */
    public final Object m24843k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11316q(this.f33301f, dVar).m24842s(s.a);
    }

    /* renamed from: s */
    public final Object m24842s(Object obj) {
        i1<AbstractC11840h> state;
        i1<Set<C11593e>> mo24405a;
        Set set;
        a aVar = a.a;
        int i = this.f33300e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC11592d mo23962a = this.f33301f.f33327m.mo23962a();
            Integer num = (mo23962a == null || (mo24405a = mo23962a.mo24405a()) == null || (set = (Set) mo24405a.getValue()) == null) ? null : new Integer(set.size());
            Integer num2 = ((Boolean) this.f33301f.f33327m.mo23957f().getValue()).booleanValue() ? new Integer(C4781R.string.voip_status_ending) : (num != null && num.intValue() == 1) ? new Integer(C4781R.string.voip_status_connecting) : null;
            if (num2 != null) {
                int intValue = num2.intValue();
                AbstractC11302l abstractC11302l = (AbstractC11302l) this.f33301f.f57683a;
                if (abstractC11302l != null) {
                    abstractC11302l.mo24868v3(intValue, C4781R.attr.voip_call_status_warning_color);
                }
            }
            C11318b c11318b = new C11318b(this.f33301f.f33327m.getState());
            this.f33300e = 1;
            Object O0 = s1.a.a.a.v0.f.d.O0(c11318b, this);
            obj = O0;
            if (O0 == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            return s.a;
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC11835f.C11836a c11836a = (AbstractC11835f.C11836a) obj;
        AbstractC11822b abstractC11822b = null;
        if (c11836a != null) {
            abstractC11822b = c11836a.f34807a;
        }
        C11325t.m24827Ij(this.f33301f);
        if (abstractC11822b != null && (state = abstractC11822b.getState()) != null) {
            C11317a c11317a = new C11317a(abstractC11822b);
            this.f33300e = 2;
            if (state.c(c11317a, this) == aVar) {
                return aVar;
            }
        }
        return s.a;
    }
}
