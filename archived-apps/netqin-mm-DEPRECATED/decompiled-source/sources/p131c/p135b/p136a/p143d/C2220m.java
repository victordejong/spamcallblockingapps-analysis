package p131c.p135b.p136a.p143d;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import p131c.p135b.p136a.p143d.C2135c;
/* renamed from: c.b.a.d.m */
/* loaded from: classes-dex2jar.jar:c/b/a/d/m.class */
public class C2220m {

    /* renamed from: a */
    public final List<AbstractC2221a> f8375a = Collections.synchronizedList(new ArrayList());

    /* renamed from: c.b.a.d.m$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/m$a.class */
    public interface AbstractC2221a {
        /* renamed from: a */
        void mo30438a(C2135c.AbstractC2137b bVar);
    }

    /* renamed from: a */
    public void m30719a(C2135c.AbstractC2137b bVar) {
        Iterator it = new ArrayList(this.f8375a).iterator();
        while (it.hasNext()) {
            ((AbstractC2221a) it.next()).mo30438a(bVar);
        }
    }

    /* renamed from: a */
    public void m30718a(AbstractC2221a aVar) {
        this.f8375a.add(aVar);
    }

    /* renamed from: b */
    public void m30717b(AbstractC2221a aVar) {
        this.f8375a.remove(aVar);
    }
}
