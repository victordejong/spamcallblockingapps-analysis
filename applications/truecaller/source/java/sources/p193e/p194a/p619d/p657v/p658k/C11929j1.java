package p193e.p194a.p619d.p657v.p658k;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p663x.p665r.C12262i;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.groupcall.action.UpdatePeersImpl$toInviteAttributesFlow$attributeTimeoutFlowMap$2$timeoutFlow$1", f = "UpdatePeers.kt", l = {198, 200, 204}, m = "invokeSuspend")
/* renamed from: e.a.d.v.k.j1 */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/j1.class */
public final class C11929j1 extends i implements p<g<? super Set<? extends C12262i>>, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f35024e;

    /* renamed from: f */
    public int f35025f;

    /* renamed from: g */
    public final /* synthetic */ C12262i f35026g;

    /* renamed from: h */
    public final /* synthetic */ Long f35027h;

    /* renamed from: i */
    public final /* synthetic */ C11881c1 f35028i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11929j1(C12262i c12262i, Long l, d dVar, C11881c1 c11881c1) {
        super(2, dVar);
        this.f35026g = c12262i;
        this.f35027h = l;
        this.f35028i = c11881c1;
    }

    /* renamed from: i */
    public final d<s> m23822i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C11929j1 c11929j1 = new C11929j1(this.f35026g, this.f35027h, dVar, this.f35028i);
        c11929j1.f35024e = obj;
        return c11929j1;
    }

    /* renamed from: k */
    public final Object m23821k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C11929j1 c11929j1 = new C11929j1(this.f35026g, this.f35027h, dVar, this.f35028i);
        c11929j1.f35024e = obj;
        return c11929j1.m23820s(s.a);
    }

    /* renamed from: s */
    public final Object m23820s(Object obj) {
        g gVar;
        a aVar = a.a;
        int i = this.f35025f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            gVar = (g) this.f35024e;
            if (this.f35028i.m23887g(this.f35026g)) {
                C11881c1 c11881c1 = this.f35028i;
                C12262i c12262i = this.f35026g;
                this.f35024e = gVar;
                this.f35025f = 1;
                if (c11881c1.m23885i(c12262i, this) == aVar) {
                    return aVar;
                }
            } else {
                long longValue = this.f35027h.longValue();
                this.f35024e = gVar;
                this.f35025f = 2;
                if (s1.a.a.a.v0.f.d.D0(longValue, this) == aVar) {
                    return aVar;
                }
            }
        } else if (i != 1 && i != 2) {
            if (i != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            return s.a;
        } else {
            C25225a.m3932a3(obj);
            gVar = (g) this.f35024e;
        }
        C11881c1 c11881c12 = this.f35028i;
        Iterable iterable = (Iterable) c11881c12.f34905g.mo23354a().getValue();
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : iterable) {
            if (!((C12262i) obj2).m23355a(c11881c12.f34901c)) {
                arrayList.add(obj2);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            C12262i c12262i2 = (C12262i) next;
            boolean z = false;
            if (!c11881c12.m23887g(c12262i2) ? c11881c12.m23888f(c12262i2) != null : c11881c12.m23889e(c12262i2) != null) {
                z = true;
            }
            if (z) {
                arrayList2.add(next);
            }
        }
        Set d1 = s1.u.i.d1(arrayList2);
        this.f35024e = null;
        this.f35025f = 3;
        if (gVar.a(d1, this) == aVar) {
            return aVar;
        }
        return s.a;
    }
}
