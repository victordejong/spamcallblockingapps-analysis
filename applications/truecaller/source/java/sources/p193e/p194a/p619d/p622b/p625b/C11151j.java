package p193e.p194a.p619d.p622b.p625b;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.legacy.incoming.LegacyIncomingVoipServicePresenter$exitDelayed$1", f = "LegacyIncomingVoipServicePresenter.kt", l = {451}, m = "invokeSuspend")
/* renamed from: e.a.d.b.b.j */
/* loaded from: classes15-dex2jar.jar:e/a/d/b/b/j.class */
public final class C11151j extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f32967e;

    /* renamed from: f */
    public final /* synthetic */ C11139b f32968f;

    /* renamed from: g */
    public final /* synthetic */ long f32969g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11151j(C11139b c11139b, long j, d dVar) {
        super(2, dVar);
        this.f32968f = c11139b;
        this.f32969g = j;
    }

    /* renamed from: i */
    public final d<s> m25108i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11151j(this.f32968f, this.f32969g, dVar);
    }

    /* renamed from: k */
    public final Object m25107k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11151j(this.f32968f, this.f32969g, dVar).m25106s(s.a);
    }

    /* renamed from: s */
    public final Object m25106s(Object obj) {
        a aVar = a.a;
        int i = this.f32967e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC11148g abstractC11148g = this.f32968f.f32940j;
            if (abstractC11148g != null) {
                abstractC11148g.mo25119v();
            }
            long j = this.f32969g;
            this.f32967e = 1;
            if (s1.a.a.a.v0.f.d.D0(j, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC11150i abstractC11150i = (AbstractC11150i) this.f32968f.f57683a;
        if (abstractC11150i != null) {
            abstractC11150i.mo25109t();
        }
        return s.a;
    }
}
