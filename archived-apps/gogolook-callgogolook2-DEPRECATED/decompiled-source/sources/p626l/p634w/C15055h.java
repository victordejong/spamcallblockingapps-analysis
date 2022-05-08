package p626l.p634w;

import androidx.core.app.Person;
import java.io.Serializable;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.w.h */
/* loaded from: classes3-dex2jar.jar:l/w/h.class */
public final class C15055h implements AbstractC15049g, Serializable {

    /* renamed from: a */
    public static final C15055h f33080a = new C15055h();

    private final Object readResolve() {
        return f33080a;
    }

    @Override // p626l.p634w.AbstractC15049g
    public <R> R fold(R r, AbstractC15122p<? super R, ? super AbstractC15049g.AbstractC15052b, ? extends R> pVar) {
        C15149k.m377b(pVar, "operation");
        return r;
    }

    @Override // p626l.p634w.AbstractC15049g
    public <E extends AbstractC15049g.AbstractC15052b> E get(AbstractC15049g.AbstractC15054c<E> cVar) {
        C15149k.m377b(cVar, Person.KEY_KEY);
        return null;
    }

    public int hashCode() {
        return 0;
    }

    @Override // p626l.p634w.AbstractC15049g
    public AbstractC15049g minusKey(AbstractC15049g.AbstractC15054c<?> cVar) {
        C15149k.m377b(cVar, Person.KEY_KEY);
        return this;
    }

    @Override // p626l.p634w.AbstractC15049g
    public AbstractC15049g plus(AbstractC15049g gVar) {
        C15149k.m377b(gVar, "context");
        return gVar;
    }

    public String toString() {
        return "EmptyCoroutineContext";
    }
}
