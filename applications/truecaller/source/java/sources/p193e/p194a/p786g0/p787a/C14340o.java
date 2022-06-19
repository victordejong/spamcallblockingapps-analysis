package p193e.p194a.p786g0.p787a;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p786g0.AbstractC14353c;
import q3.a.i0;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.m;
@e(c = "com.truecaller.suspension.ui.SuspensionPresenter$attemptUnsuspension$1", f = "SuspensionPresenter.kt", l = {85}, m = "invokeSuspend")
/* renamed from: e.a.g0.a.o */
/* loaded from: classes14-dex2jar.jar:e/a/g0/a/o.class */
public final class C14340o extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f41438e;

    /* renamed from: f */
    public final /* synthetic */ C14347r f41439f;

    @e(c = "com.truecaller.suspension.ui.SuspensionPresenter$attemptUnsuspension$1$1", f = "SuspensionPresenter.kt", l = {232}, m = "invokeSuspend")
    /* renamed from: e.a.g0.a.o$a */
    /* loaded from: classes14-dex2jar.jar:e/a/g0/a/o$a.class */
    public static final class C14341a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f41440e;

        /* renamed from: e.a.g0.a.o$a$a */
        /* loaded from: classes14-dex2jar.jar:e/a/g0/a/o$a$a.class */
        public static final class C14342a implements g<AbstractC14353c> {

            /* renamed from: e.a.g0.a.o$a$a$a */
            /* loaded from: classes14-dex2jar.jar:e/a/g0/a/o$a$a$a.class */
            public static final class C14343a extends m implements l<Boolean, s> {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C14343a() {
                    super(1);
                    C14342a.this = r4;
                }

                /* renamed from: d */
                public Object m20224d(Object obj) {
                    boolean booleanValue = ((Boolean) obj).booleanValue();
                    C14347r c14347r = C14340o.this.f41439f;
                    if (booleanValue) {
                        c14347r.m20213Jj();
                    } else {
                        c14347r.m20211Lj();
                    }
                    return s.a;
                }
            }

            public C14342a() {
                C14341a.this = r4;
            }

            /* renamed from: a */
            public Object m20225a(Object obj, d dVar) {
                C14347r c14347r = C14340o.this.f41439f;
                Object a4 = s1.a.a.a.v0.f.d.a4(c14347r.f41450d, new C14346q(c14347r, (AbstractC14353c) obj, new C14343a(), null), dVar);
                return a4 == a.a ? a4 : s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14341a(d dVar) {
            super(2, dVar);
            C14340o.this = r5;
        }

        /* renamed from: i */
        public final d<s> m20228i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C14341a(dVar);
        }

        /* renamed from: k */
        public final Object m20227k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C14341a(dVar).m20226s(s.a);
        }

        /* renamed from: s */
        public final Object m20226s(Object obj) {
            a aVar = a.a;
            int i = this.f41440e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                f<AbstractC14353c> mo20194e = C14340o.this.f41439f.f41452f.mo20194e();
                C14342a c14342a = new C14342a();
                this.f41440e = 1;
                if (mo20194e.c(c14342a, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14340o(C14347r c14347r, d dVar) {
        super(2, dVar);
        this.f41439f = c14347r;
    }

    /* renamed from: i */
    public final d<s> m20231i(Object obj, d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C14340o(this.f41439f, dVar);
    }

    /* renamed from: k */
    public final Object m20230k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        s1.z.c.l.e(dVar, "completion");
        return new C14340o(this.f41439f, dVar).m20229s(s.a);
    }

    /* renamed from: s */
    public final Object m20229s(Object obj) {
        a aVar = a.a;
        int i = this.f41438e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            s1.w.f fVar = this.f41439f.f41451e;
            C14341a c14341a = new C14341a(null);
            this.f41438e = 1;
            if (s1.a.a.a.v0.f.d.a4(fVar, c14341a, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
