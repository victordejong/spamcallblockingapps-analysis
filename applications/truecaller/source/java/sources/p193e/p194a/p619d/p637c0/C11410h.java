package p193e.p194a.p619d.p637c0;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.AbstractC11416j;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.q;
import s1.z.c.l;
@e(c = "com.truecaller.voip.util.CallUserResolverKt$takeUntilFinished$1", f = "CallUserResolver.kt", l = {216}, m = "invokeSuspend")
/* renamed from: e.a.d.c0.h */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/h.class */
public final class C11410h extends i implements q<g<? super AbstractC11416j>, AbstractC11416j, d<? super Boolean>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f33521e;

    /* renamed from: f */
    public /* synthetic */ Object f33522f;

    /* renamed from: g */
    public int f33523g;

    /* renamed from: h */
    public boolean f33524h;

    /* renamed from: i */
    public int f33525i;

    public C11410h(d dVar) {
        super(3, dVar);
    }

    /* renamed from: h */
    public final Object m24726h(Object obj, Object obj2, Object obj3) {
        g gVar = (g) obj;
        AbstractC11416j abstractC11416j = (AbstractC11416j) obj2;
        d dVar = (d) obj3;
        l.e(gVar, "$this$create");
        l.e(abstractC11416j, "searchState");
        l.e(dVar, "continuation");
        C11410h c11410h = new C11410h(dVar);
        c11410h.f33521e = gVar;
        c11410h.f33522f = abstractC11416j;
        return c11410h.m24725s(s.a);
    }

    /* renamed from: s */
    public final Object m24725s(Object obj) {
        boolean z;
        int i;
        a aVar = a.a;
        int i2 = this.f33525i;
        if (i2 == 0) {
            C25225a.m3932a3(obj);
            g gVar = (g) this.f33521e;
            AbstractC11416j abstractC11416j = (AbstractC11416j) this.f33522f;
            i = (!(abstractC11416j instanceof AbstractC11416j.C11418b) || !((AbstractC11416j.C11418b) abstractC11416j).f33541b) ? 0 : 1;
            z = l.a(abstractC11416j, AbstractC11416j.C11417a.f33539a);
            this.f33521e = null;
            this.f33523g = i;
            this.f33524h = z;
            this.f33525i = 1;
            if (gVar.a(abstractC11416j, this) == aVar) {
                return aVar;
            }
        } else if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            z = this.f33524h;
            i = this.f33523g;
            C25225a.m3932a3(obj);
        }
        boolean z2 = false;
        if (i == 0) {
            z2 = false;
            if (!z) {
                z2 = true;
            }
        }
        return Boolean.valueOf(z2);
    }
}
