package p081h.p203i.p204a.p224e.p252e;

import java.util.Iterator;
import java.util.LinkedList;
import p081h.p203i.p204a.p224e.p252e.AbstractC7104a;
/* renamed from: h.i.a.e.e.g */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/e/g.class */
public final class C7114g implements AbstractC7111e<T> {

    /* renamed from: a */
    public final /* synthetic */ AbstractC7104a f17229a;

    public C7114g(AbstractC7104a aVar) {
        this.f17229a = aVar;
    }

    /* JADX WARN: Incorrect types in method signature: (TT;)V */
    @Override // p081h.p203i.p204a.p224e.p252e.AbstractC7111e
    /* renamed from: a */
    public final void mo21056a(AbstractC7109c cVar) {
        LinkedList linkedList;
        LinkedList linkedList2;
        AbstractC7109c cVar2;
        this.f17229a.f17222a = cVar;
        linkedList = this.f17229a.f17224c;
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            cVar2 = this.f17229a.f17222a;
            ((AbstractC7104a.AbstractC7105a) it.next()).mo21055a(cVar2);
        }
        linkedList2 = this.f17229a.f17224c;
        linkedList2.clear();
        this.f17229a.f17223b = null;
    }
}
