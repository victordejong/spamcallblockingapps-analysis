package p193e.p194a.p619d.p670z.p671b;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import q3.a.i0;
import q3.a.x2.g;
import q3.a.x2.i1;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.service.call.CallServicePresenter$setNotificationChronometer$1", f = "CallServicePresenter.kt", l = {331}, m = "invokeSuspend")
/* renamed from: e.a.d.z.b.h */
/* loaded from: classes15-dex2jar.jar:e/a/d/z/b/h.class */
public final class C12353h extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f36065e;

    /* renamed from: f */
    public final /* synthetic */ C12334c f36066f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC11822b f36067g;

    /* renamed from: e.a.d.z.b.h$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/z/b/h$a.class */
    public static final class C12354a implements g<Long> {
        public C12354a() {
            C12353h.this = r4;
        }

        /* renamed from: a */
        public Object m23197a(Object obj, d dVar) {
            a aVar;
            a aVar2 = s.a;
            Long l = (Long) obj;
            AbstractC12333b abstractC12333b = (AbstractC12333b) C12353h.this.f36066f.f57683a;
            if (abstractC12333b != null) {
                abstractC12333b.mo23245k(l);
                aVar = aVar2;
            } else {
                aVar = null;
            }
            return aVar == a.a ? aVar : aVar2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12353h(C12334c c12334c, AbstractC11822b abstractC11822b, d dVar) {
        super(2, dVar);
        this.f36066f = c12334c;
        this.f36067g = abstractC11822b;
    }

    /* renamed from: i */
    public final d<s> m23200i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12353h(this.f36066f, this.f36067g, dVar);
    }

    /* renamed from: k */
    public final Object m23199k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12353h(this.f36066f, this.f36067g, dVar).m23198s(s.a);
    }

    /* renamed from: s */
    public final Object m23198s(Object obj) {
        a aVar = a.a;
        int i = this.f36065e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i1<Long> mo23704f = this.f36067g.mo23704f();
            C12354a c12354a = new C12354a();
            this.f36065e = 1;
            if (mo23704f.c(c12354a, this) == aVar) {
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
