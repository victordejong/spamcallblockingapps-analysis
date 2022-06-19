package p193e.p194a.p619d.p657v.p658k;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p663x.p665r.C12262i;
import q3.a.x2.g;
import q3.a.x2.k0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.groupcall.action.UpdatePeersImpl$toInviteAttributesFlow$1", f = "UpdatePeers.kt", l = {214, 284}, m = "invokeSuspend")
/* renamed from: e.a.d.v.k.k1 */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/k1.class */
public final class C11936k1 extends i implements p<g<? super Set<? extends C12262i>>, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f35066e;

    /* renamed from: f */
    public int f35067f;

    /* renamed from: g */
    public final /* synthetic */ Map f35068g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11936k1(Map map, d dVar) {
        super(2, dVar);
        this.f35068g = map;
    }

    /* renamed from: i */
    public final d<s> m23806i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C11936k1 c11936k1 = new C11936k1(this.f35068g, dVar);
        c11936k1.f35066e = obj;
        return c11936k1;
    }

    /* renamed from: k */
    public final Object m23805k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C11936k1 c11936k1 = new C11936k1(this.f35068g, dVar);
        c11936k1.f35066e = obj;
        return c11936k1.m23804s(s.a);
    }

    /* renamed from: s */
    public final Object m23804s(Object obj) {
        g gVar;
        a aVar = a.a;
        int i = this.f35067f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            g gVar2 = (g) this.f35066e;
            Set keySet = this.f35068g.keySet();
            this.f35066e = gVar2;
            this.f35067f = 1;
            gVar = gVar2;
            if (gVar2.a(keySet, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            return s.a;
        } else {
            C25225a.m3932a3(obj);
            gVar = (g) this.f35066e;
        }
        Collection values = this.f35068g.values();
        int i2 = k0.a;
        q3.a.x2.o1.l lVar = new q3.a.x2.o1.l(values, (f) null, 0, (q3.a.w2.i) null, 14);
        this.f35066e = null;
        this.f35067f = 2;
        if (lVar.c(gVar, this) == aVar) {
            return aVar;
        }
        return s.a;
    }
}
