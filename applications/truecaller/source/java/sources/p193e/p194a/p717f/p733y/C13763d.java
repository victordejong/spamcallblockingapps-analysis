package p193e.p194a.p717f.p733y;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.service.CallManagerImpl$addCallToExistingConference$1", f = "CallManager.kt", l = {641, 645}, m = "invokeSuspend")
/* renamed from: e.a.f.y.d */
/* loaded from: classes10-dex2jar.jar:e/a/f/y/d.class */
public final class C13763d extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f39901e;

    /* renamed from: f */
    public final /* synthetic */ C13764e f39902f;

    /* renamed from: g */
    public final /* synthetic */ C13794x f39903g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13763d(C13764e c13764e, C13794x c13794x, d dVar) {
        super(2, dVar);
        this.f39902f = c13764e;
        this.f39903g = c13794x;
    }

    /* renamed from: i */
    public final d<s> m21232i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13763d(this.f39902f, this.f39903g, dVar);
    }

    /* renamed from: k */
    public final Object m21231k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C13763d(this.f39902f, this.f39903g, dVar).m21230s(s.a);
    }

    /* renamed from: s */
    public final Object m21230s(Object obj) {
        a aVar = a.a;
        int i = this.f39901e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f39903g.f40005a.unhold();
            this.f39901e = 1;
            if (s1.a.a.a.v0.f.d.D0(1000L, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            this.f39902f.m21210T(this.f39903g);
            return s.a;
        } else {
            C25225a.m3932a3(obj);
        }
        this.f39902f.m21209U(this.f39903g);
        this.f39901e = 2;
        if (s1.a.a.a.v0.f.d.D0(1000L, this) == aVar) {
            return aVar;
        }
        this.f39902f.m21210T(this.f39903g);
        return s.a;
    }
}
