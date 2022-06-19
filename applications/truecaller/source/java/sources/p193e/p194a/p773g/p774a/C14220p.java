package p193e.p194a.p773g.p774a;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.acs.ui.AfterCallBasePresenter$loadAds$2", f = "AfterCallBasePresenter.kt", l = {301}, m = "invokeSuspend")
/* renamed from: e.a.g.a.p */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/p.class */
public final class C14220p extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f41092e;

    /* renamed from: f */
    public final /* synthetic */ AbstractC14205m f41093f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14220p(AbstractC14205m abstractC14205m, d dVar) {
        super(2, dVar);
        this.f41093f = abstractC14205m;
    }

    /* renamed from: i */
    public final d<s> m20379i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C14220p(this.f41093f, dVar);
    }

    /* renamed from: k */
    public final Object m20378k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C14220p(this.f41093f, dVar).m20377s(s.a);
    }

    /* renamed from: s */
    public final Object m20377s(Object obj) {
        a aVar = a.a;
        int i = this.f41092e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC14205m abstractC14205m = this.f41093f;
            if (abstractC14205m.f40995f != null) {
                this.f41092e = 1;
                if (abstractC14205m.mo20434bk(this) == aVar) {
                    return aVar;
                }
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC14198h abstractC14198h = (AbstractC14198h) this.f41093f.f57683a;
        if (abstractC14198h != null) {
            abstractC14198h.mo20552S1();
        }
        return s.a;
    }
}
