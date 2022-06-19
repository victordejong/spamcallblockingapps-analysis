package p193e.p194a.p851h5;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
@e(c = "com.truecaller.tcpermissions.RoleRequesterImpl$requestRole$1", f = "RoleRequester.kt", l = {68}, m = "invokeSuspend")
/* renamed from: e.a.h5.r */
/* loaded from: classes14-dex2jar.jar:e/a/h5/r.class */
public final class C14960r extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f42705e;

    /* renamed from: f */
    public int f42706f;

    /* renamed from: g */
    public final /* synthetic */ l f42707g;

    /* renamed from: h */
    public final /* synthetic */ l f42708h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14960r(l lVar, l lVar2, d dVar) {
        super(2, dVar);
        this.f42707g = lVar;
        this.f42708h = lVar2;
    }

    /* renamed from: i */
    public final d<s> m19363i(Object obj, d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C14960r(this.f42707g, this.f42708h, dVar);
    }

    /* renamed from: k */
    public final Object m19362k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        s1.z.c.l.e(dVar, "completion");
        return new C14960r(this.f42707g, this.f42708h, dVar).m19361s(s.a);
    }

    /* renamed from: s */
    public final Object m19361s(Object obj) {
        Object obj2;
        l lVar;
        a aVar = a.a;
        int i = this.f42706f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            l lVar2 = this.f42707g;
            l lVar3 = this.f42708h;
            this.f42705e = lVar2;
            this.f42706f = 1;
            obj2 = lVar3.d(this);
            if (obj2 == aVar) {
                return aVar;
            }
            lVar = lVar2;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            lVar = (l) this.f42705e;
            C25225a.m3932a3(obj);
            obj2 = obj;
        }
        lVar.d(obj2);
        return s.a;
    }
}
