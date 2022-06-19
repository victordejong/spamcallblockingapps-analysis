package p193e.p194a.p717f;

import com.truecaller.data.entity.SpamCategoryModel;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p288a0.AbstractC7395n;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.InCallUICallerInfoProviderImpl$checkCachedTopSpammer$category$1", f = "InCallUICallerInfoProviderImpl.kt", l = {289}, m = "invokeSuspend")
/* renamed from: e.a.f.h */
/* loaded from: classes10-dex2jar.jar:e/a/f/h.class */
public final class C13714h extends i implements p<i0, d<? super SpamCategoryModel>, Object> {

    /* renamed from: e */
    public int f39719e;

    /* renamed from: f */
    public final /* synthetic */ C13712g f39720f;

    /* renamed from: g */
    public final /* synthetic */ c0 f39721g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13714h(C13712g c13712g, c0 c0Var, d dVar) {
        super(2, dVar);
        this.f39720f = c13712g;
        this.f39721g = c0Var;
    }

    /* renamed from: i */
    public final d<s> m21287i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13714h(this.f39720f, this.f39721g, dVar);
    }

    /* renamed from: k */
    public final Object m21286k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C13714h(this.f39720f, this.f39721g, dVar).m21285s(s.a);
    }

    /* renamed from: s */
    public final Object m21285s(Object obj) {
        a aVar = a.a;
        int i = this.f39719e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            Object obj2 = this.f39720f.f39713i.get();
            l.d(obj2, "spamCategoryFetcher.get()");
            this.f39719e = 1;
            Object m16092Z = C17422k.m16092Z((AbstractC7395n) obj2, (List) this.f39721g.a, this);
            obj = m16092Z;
            if (m16092Z == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return obj;
    }
}
