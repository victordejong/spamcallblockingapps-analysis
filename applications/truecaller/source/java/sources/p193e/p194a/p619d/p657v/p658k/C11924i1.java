package p193e.p194a.p619d.p657v.p658k;

import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p663x.p665r.C12262i;
import p193e.p194a.p619d.p663x.p665r.C12282l;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.q;
import s1.z.c.l;
@e(c = "com.truecaller.voip.groupcall.action.UpdatePeersImpl$rtmPeers$1", f = "UpdatePeers.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.d.v.k.i1 */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/i1.class */
public final class C11924i1 extends i implements q<Set<? extends C12262i>, Set<? extends C12282l>, d<? super Set<? extends C12262i>>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f35017e;

    /* renamed from: f */
    public /* synthetic */ Object f35018f;

    public C11924i1(d dVar) {
        super(3, dVar);
    }

    /* renamed from: h */
    public final Object m23827h(Object obj, Object obj2, Object obj3) {
        Set set = (Set) obj;
        Set set2 = (Set) obj2;
        d dVar = (d) obj3;
        l.e(set, "newAttributes");
        l.e(set2, "members");
        l.e(dVar, "continuation");
        dVar.getContext();
        C25225a.m3932a3(s.a);
        String str = "Attribute or member update. Attributes: " + set + ", Members: " + set2;
        return set;
    }

    /* renamed from: s */
    public final Object m23826s(Object obj) {
        C25225a.m3932a3(obj);
        Set set = (Set) this.f35017e;
        String str = "Attribute or member update. Attributes: " + set + ", Members: " + ((Set) this.f35018f);
        return set;
    }
}
