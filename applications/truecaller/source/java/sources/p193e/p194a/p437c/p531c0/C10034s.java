package p193e.p194a.p437c.p531c0;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.utils.PagedDataUtilsKt$mapNotNull$1", f = "PagedDataUtils.kt", l = {13}, m = "invokeSuspend")
/* renamed from: e.a.c.c0.s */
/* loaded from: classes10-dex2jar.jar:e/a/c/c0/s.class */
public final class C10034s extends i implements p<T, d<? super Object>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f29866e;

    /* renamed from: f */
    public int f29867f;

    /* renamed from: g */
    public final /* synthetic */ p f29868g;

    /* renamed from: h */
    public final /* synthetic */ Object f29869h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10034s(p pVar, Object obj, d dVar) {
        super(2, dVar);
        this.f29868g = pVar;
        this.f29869h = obj;
    }

    /* renamed from: i */
    public final d<s> m26797i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C10034s c10034s = new C10034s(this.f29868g, this.f29869h, dVar);
        c10034s.f29866e = obj;
        return c10034s;
    }

    /* renamed from: k */
    public final Object m26796k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C10034s c10034s = new C10034s(this.f29868g, this.f29869h, dVar);
        c10034s.f29866e = obj;
        return c10034s.m26795s(s.a);
    }

    /* renamed from: s */
    public final Object m26795s(Object obj) {
        a aVar = a.a;
        int i = this.f29867f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            Object obj2 = this.f29866e;
            p pVar = this.f29868g;
            this.f29867f = 1;
            Object k = pVar.k(obj2, this);
            obj = k;
            if (k == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        if (obj == null) {
            obj = this.f29869h;
        }
        return obj;
    }
}
