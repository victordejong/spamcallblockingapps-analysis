package p193e.p194a.p437c.p606w.p607o0.p608k;

import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.w.o0.k.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/w/o0/k/c.class */
public final class C10834c {

    /* renamed from: a */
    public final List<AbstractC10836e> f32182a;

    /* JADX WARN: Multi-variable type inference failed */
    public C10834c(List<? extends AbstractC10836e> list) {
        l.e(list, "smsFilters");
        this.f32182a = list;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C10834c) && l.a(this.f32182a, ((C10834c) obj).f32182a);
        }
        return true;
    }

    public int hashCode() {
        List<AbstractC10836e> list = this.f32182a;
        return list != null ? list.hashCode() : 0;
    }

    public String toString() {
        return C22128a.m8602l(C22128a.m8728C("SelectedFilters(smsFilters="), this.f32182a, ")");
    }
}
