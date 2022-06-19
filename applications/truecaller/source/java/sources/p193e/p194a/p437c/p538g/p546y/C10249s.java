package p193e.p194a.p437c.p538g.p546y;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p538g.p539a0.AbstractC10115f;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.insights.categorizer.datasource.UpdatesModelDataSourceImpl$insertUpdatesModel$2", f = "UpdatesModelDataSource.kt", l = {29}, m = "invokeSuspend")
/* renamed from: e.a.c.g.y.s */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/y/s.class */
public final class C10249s extends i implements l<d<? super s>, Object> {

    /* renamed from: e */
    public int f30397e;

    /* renamed from: f */
    public final /* synthetic */ C10245r f30398f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC10115f f30399g;

    /* renamed from: h */
    public final /* synthetic */ int f30400h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10249s(C10245r c10245r, AbstractC10115f abstractC10115f, int i, d dVar) {
        super(1, dVar);
        this.f30398f = c10245r;
        this.f30399g = abstractC10115f;
        this.f30400h = i;
    }

    /* renamed from: d */
    public final Object m26531d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C10249s(this.f30398f, this.f30399g, this.f30400h, dVar).m26529s(s.a);
    }

    /* renamed from: l */
    public final d<s> m26530l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C10249s(this.f30398f, this.f30399g, this.f30400h, dVar);
    }

    /* renamed from: s */
    public final Object m26529s(Object obj) {
        a aVar = a.a;
        int i = this.f30397e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C10245r c10245r = this.f30398f;
            AbstractC10115f abstractC10115f = this.f30399g;
            int i2 = this.f30400h;
            this.f30397e = 1;
            if (c10245r.m26536c(abstractC10115f, i2, this) == aVar) {
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
