package p193e.p194a.p372b0.p430q;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p416j.AbstractC8480b;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.common.util.CountryUtil$updateFromNetwork$1", f = "CountryUtil.kt", l = {88}, m = "invokeSuspend")
/* renamed from: e.a.b0.q.k */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/k.class */
public final class C8598k extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f26424e;

    public C8598k(d dVar) {
        super(2, dVar);
    }

    /* renamed from: i */
    public final d<s> m28265i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C8598k(dVar);
    }

    /* renamed from: k */
    public final Object m28264k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C8598k(dVar).m28263s(s.a);
    }

    /* renamed from: s */
    public final Object m28263s(Object obj) {
        a aVar = a.a;
        int i = this.f26424e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C8588j c8588j = C8588j.f26412d;
            this.f26424e = 1;
            if (((AbstractC8480b) C8588j.f26410b.getValue()).mo28481e(this) == aVar) {
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
