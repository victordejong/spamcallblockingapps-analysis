package p193e.p194a.p619d.p657v.p658k;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p663x.p665r.C12262i;
import q3.a.x2.d1;
import q3.a.x2.g;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.q;
@e(c = "com.truecaller.voip.groupcall.action.UpdatePeersImpl$rtmPeers$$inlined$flatMapLatest$1", f = "UpdatePeers.kt", l = {217}, m = "invokeSuspend")
/* renamed from: e.a.d.v.k.g1 */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/g1.class */
public final class C11915g1 extends i implements q<g<? super Set<? extends C12262i>>, Set<? extends C12262i>, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f34992e;

    /* renamed from: f */
    public /* synthetic */ Object f34993f;

    /* renamed from: g */
    public int f34994g;

    /* renamed from: h */
    public final /* synthetic */ C11881c1 f34995h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11915g1(d dVar, C11881c1 c11881c1) {
        super(3, dVar);
        this.f34995h = c11881c1;
    }

    /* renamed from: h */
    public final Object m23838h(Object obj, Object obj2, Object obj3) {
        C11915g1 c11915g1 = new C11915g1((d) obj3, this.f34995h);
        c11915g1.f34992e = (g) obj;
        c11915g1.f34993f = obj2;
        return c11915g1.m23837s(s.a);
    }

    /* renamed from: s */
    public final Object m23837s(Object obj) {
        Long l;
        a aVar = a.a;
        int i = this.f34994g;
        if (i == 0) {
            C25225a.m3932a3(obj);
            g gVar = (g) this.f34992e;
            Set set = (Set) this.f34993f;
            C11881c1 c11881c1 = this.f34995h;
            Objects.requireNonNull(c11881c1);
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : set) {
                if (!((C12262i) obj2).m23355a(c11881c1.f34901c)) {
                    arrayList.add(obj2);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                C12262i c12262i = (C12262i) it.next();
                if (c11881c1.m23887g(c12262i)) {
                    l = c11881c1.m23889e(c12262i);
                } else {
                    c11881c1.f34899a.remove(c12262i.f35822a);
                    l = c11881c1.m23888f(c12262i);
                }
                k kVar = l == null ? null : new k(c12262i, new d1(new C11929j1(c12262i, l, null, c11881c1)));
                if (kVar != null) {
                    arrayList2.add(kVar);
                }
            }
            d1 d1Var = new d1(new C11936k1(s1.u.i.V0(arrayList2), null));
            this.f34994g = 1;
            if (d1Var.c(gVar, this) == aVar) {
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
