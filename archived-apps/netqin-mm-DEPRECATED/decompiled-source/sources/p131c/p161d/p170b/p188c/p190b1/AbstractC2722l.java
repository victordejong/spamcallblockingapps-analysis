package p131c.p161d.p170b.p188c.p190b1;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import p131c.p161d.p170b.p188c.AbstractC2965r0;
import p131c.p161d.p170b.p188c.p190b1.AbstractC2737t;
import p131c.p161d.p170b.p188c.p190b1.AbstractC2740u;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2841t;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
/* renamed from: c.d.b.c.b1.l */
/* loaded from: classes-dex2jar.jar:c/d/b/c/b1/l.class */
public abstract class AbstractC2722l implements AbstractC2737t {

    /* renamed from: a */
    public final ArrayList<AbstractC2737t.AbstractC2739b> f9893a = new ArrayList<>(1);

    /* renamed from: b */
    public final HashSet<AbstractC2737t.AbstractC2739b> f9894b = new HashSet<>(1);

    /* renamed from: c */
    public final AbstractC2740u.C2741a f9895c = new AbstractC2740u.C2741a();

    /* renamed from: d */
    public Looper f9896d;

    /* renamed from: e */
    public AbstractC2965r0 f9897e;

    /* renamed from: a */
    public final AbstractC2740u.C2741a m29275a(int i, AbstractC2737t.C2738a aVar, long j) {
        return this.f9895c.m29235a(i, aVar, j);
    }

    /* renamed from: a */
    public final AbstractC2740u.C2741a m29274a(AbstractC2737t.C2738a aVar) {
        return this.f9895c.m29235a(0, aVar, 0L);
    }

    /* renamed from: a */
    public void mo29266a() {
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2737t
    /* renamed from: a */
    public final void mo29251a(Handler handler, AbstractC2740u uVar) {
        this.f9895c.m29232a(handler, uVar);
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2737t
    /* renamed from: a */
    public final void mo29250a(AbstractC2737t.AbstractC2739b bVar) {
        this.f9893a.remove(bVar);
        if (this.f9893a.isEmpty()) {
            this.f9896d = null;
            this.f9897e = null;
            this.f9894b.clear();
            mo29146e();
            return;
        }
        mo29247b(bVar);
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2737t
    /* renamed from: a */
    public final void mo29249a(AbstractC2737t.AbstractC2739b bVar, AbstractC2841t tVar) {
        Looper myLooper = Looper.myLooper();
        Looper looper = this.f9896d;
        C2877e.m28734a(looper == null || looper == myLooper);
        AbstractC2965r0 r0Var = this.f9897e;
        this.f9893a.add(bVar);
        if (this.f9896d == null) {
            this.f9896d = myLooper;
            this.f9894b.add(bVar);
            mo29149a(tVar);
        } else if (r0Var != null) {
            mo29246c(bVar);
            bVar.mo27399a(this, r0Var);
        }
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2737t
    /* renamed from: a */
    public final void mo29248a(AbstractC2740u uVar) {
        this.f9895c.m29227a(uVar);
    }

    /* renamed from: a */
    public abstract void mo29149a(AbstractC2841t tVar);

    /* renamed from: a */
    public final void m29273a(AbstractC2965r0 r0Var) {
        this.f9897e = r0Var;
        Iterator<AbstractC2737t.AbstractC2739b> it = this.f9893a.iterator();
        while (it.hasNext()) {
            it.next().mo27399a(this, r0Var);
        }
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2737t
    /* renamed from: b */
    public final void mo29247b(AbstractC2737t.AbstractC2739b bVar) {
        boolean isEmpty = this.f9894b.isEmpty();
        this.f9894b.remove(bVar);
        if ((!isEmpty) && this.f9894b.isEmpty()) {
            mo29266a();
        }
    }

    /* renamed from: c */
    public void mo29259c() {
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2737t
    /* renamed from: c */
    public final void mo29246c(AbstractC2737t.AbstractC2739b bVar) {
        C2877e.m28737a(this.f9896d);
        boolean isEmpty = this.f9894b.isEmpty();
        this.f9894b.add(bVar);
        if (isEmpty) {
            mo29259c();
        }
    }

    /* renamed from: d */
    public final boolean m29272d() {
        return !this.f9894b.isEmpty();
    }

    /* renamed from: e */
    public abstract void mo29146e();
}
