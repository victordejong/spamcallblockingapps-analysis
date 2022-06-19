package p193e.p194a.p786g0.p787a;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.suspension.ui.SuspensionPresenter$checkSuspension$1", f = "SuspensionPresenter.kt", l = {76}, m = "invokeSuspend")
/* renamed from: e.a.g0.a.p */
/* loaded from: classes14-dex2jar.jar:e/a/g0/a/p.class */
public final class C14344p extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f41444e;

    /* renamed from: f */
    public final /* synthetic */ C14347r f41445f;

    @e(c = "com.truecaller.suspension.ui.SuspensionPresenter$checkSuspension$1$isAccountSuspended$1", f = "SuspensionPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.g0.a.p$a */
    /* loaded from: classes14-dex2jar.jar:e/a/g0/a/p$a.class */
    public static final class C14345a extends i implements p<i0, d<? super Boolean>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14345a(d dVar) {
            super(2, dVar);
            C14344p.this = r5;
        }

        /* renamed from: i */
        public final d<s> m20220i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C14345a(dVar);
        }

        /* renamed from: k */
        public final Object m20219k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C14344p c14344p = C14344p.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return Boolean.valueOf(c14344p.f41445f.f41452f.mo20189j());
        }

        /* renamed from: s */
        public final Object m20218s(Object obj) {
            C25225a.m3932a3(obj);
            return Boolean.valueOf(C14344p.this.f41445f.f41452f.mo20189j());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14344p(C14347r c14347r, d dVar) {
        super(2, dVar);
        this.f41445f = c14347r;
    }

    /* renamed from: i */
    public final d<s> m20223i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C14344p(this.f41445f, dVar);
    }

    /* renamed from: k */
    public final Object m20222k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C14344p(this.f41445f, dVar).m20221s(s.a);
    }

    /* renamed from: s */
    public final Object m20221s(Object obj) {
        a aVar = a.a;
        int i = this.f41444e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC14339n abstractC14339n = (AbstractC14339n) this.f41445f.f57683a;
            if (abstractC14339n != null) {
                abstractC14339n.mo20246a0();
            }
            f fVar = this.f41445f.f41451e;
            C14345a c14345a = new C14345a(null);
            this.f41444e = 1;
            Object a4 = s1.a.a.a.v0.f.d.a4(fVar, c14345a, this);
            obj = a4;
            if (a4 == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        AbstractC14339n abstractC14339n2 = (AbstractC14339n) this.f41445f.f57683a;
        if (abstractC14339n2 != null) {
            abstractC14339n2.mo20245b0();
        }
        if (!booleanValue) {
            this.f41445f.m20213Jj();
        }
        return s.a;
    }
}
