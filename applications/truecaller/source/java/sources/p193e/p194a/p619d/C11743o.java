package p193e.p194a.p619d;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Set;
import java.util.UUID;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p751f4.p762g.AbstractC14028r;
import p193e.p194a.p751f4.p762g.C14012i;
import p193e.p194a.p751f4.p762g.C14030t;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d.o */
/* loaded from: classes15-dex2jar.jar:e/a/d/o.class */
public final class C11743o extends m implements a<C14030t> {

    /* renamed from: b */
    public final /* synthetic */ C11731m f34521b;

    /* renamed from: c */
    public final /* synthetic */ int f34522c;

    /* renamed from: d */
    public final /* synthetic */ Set f34523d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11743o(C11731m c11731m, int i, Set set) {
        super(0);
        this.f34521b = c11731m;
        this.f34522c = i;
        this.f34523d = set;
    }

    public Object invoke() {
        C14030t c14030t = null;
        try {
            AbstractC14028r abstractC14028r = (AbstractC14028r) this.f34521b.f34460d.get();
            UUID randomUUID = UUID.randomUUID();
            l.d(randomUUID, "UUID.randomUUID()");
            C14012i mo20838c = abstractC14028r.mo20838c(randomUUID, "voip");
            mo20838c.f40521g = this.f34522c;
            Set<String> set = this.f34523d;
            ArrayList arrayList = new ArrayList(C25225a.m4004J(set, 10));
            for (String str : set) {
                arrayList.add(new C14012i.C14014b(C19286f.m13695I(str), null, null));
            }
            mo20838c.f40518d.addAll(arrayList);
            mo20838c.f40519e = true;
            c14030t = mo20838c.mo20821a();
        } catch (IOException e) {
        }
        return c14030t;
    }
}
