package p131c.p161d.p354f;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: c.d.f.h */
/* loaded from: classes2-dex2jar.jar:c/d/f/h.class */
public final class C6120h extends AbstractC6123k implements Iterable<AbstractC6123k> {

    /* renamed from: a */
    public final List<AbstractC6123k> f19643a = new ArrayList();

    /* renamed from: a */
    public void m21963a(AbstractC6123k kVar) {
        AbstractC6123k kVar2 = kVar;
        if (kVar == null) {
            kVar2 = C6124l.f19644a;
        }
        this.f19643a.add(kVar2);
    }

    /* renamed from: a */
    public void m21962a(Number number) {
        this.f19643a.add(number == null ? C6124l.f19644a : new C6126n(number));
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof C6120h) && ((C6120h) obj).f19643a.equals(this.f19643a));
    }

    public int hashCode() {
        return this.f19643a.hashCode();
    }

    @Override // java.lang.Iterable
    public Iterator<AbstractC6123k> iterator() {
        return this.f19643a.iterator();
    }

    public int size() {
        return this.f19643a.size();
    }
}
