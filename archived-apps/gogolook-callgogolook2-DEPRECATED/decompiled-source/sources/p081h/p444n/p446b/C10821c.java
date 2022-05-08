package p081h.p444n.p446b;

import java.util.LinkedList;
import java.util.Queue;
import p081h.p444n.p446b.AbstractC10822d;
/* renamed from: h.n.b.c */
/* loaded from: classes2-dex2jar.jar:h/n/b/c.class */
public class C10821c<T> implements AbstractC10822d<T> {

    /* renamed from: a */
    public final Queue<T> f24761a = new LinkedList();

    /* renamed from: b */
    public AbstractC10822d.AbstractC10823a<T> f24762b;

    @Override // p081h.p444n.p446b.AbstractC10822d
    public void add(T t) {
        this.f24761a.add(t);
        AbstractC10822d.AbstractC10823a<T> aVar = this.f24762b;
        if (aVar != null) {
            aVar.m10551a(this, t);
        }
    }

    @Override // p081h.p444n.p446b.AbstractC10822d
    public T peek() {
        return this.f24761a.peek();
    }

    @Override // p081h.p444n.p446b.AbstractC10822d
    public void remove() {
        this.f24761a.remove();
        AbstractC10822d.AbstractC10823a<T> aVar = this.f24762b;
        if (aVar != null) {
            aVar.m10552a(this);
        }
    }
}
