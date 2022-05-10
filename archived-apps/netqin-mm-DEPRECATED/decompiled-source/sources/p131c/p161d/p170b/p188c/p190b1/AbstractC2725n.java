package p131c.p161d.p170b.p188c.p190b1;

import android.os.Handler;
import java.io.IOException;
import java.util.HashMap;
import p131c.p161d.p170b.p188c.AbstractC2965r0;
import p131c.p161d.p170b.p188c.p190b1.AbstractC2737t;
import p131c.p161d.p170b.p188c.p190b1.AbstractC2740u;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2841t;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* renamed from: c.d.b.c.b1.n */
/* loaded from: classes-dex2jar.jar:c/d/b/c/b1/n.class */
public abstract class AbstractC2725n<T> extends AbstractC2722l {

    /* renamed from: f */
    public final HashMap<T, C2727b> f9907f = new HashMap<>();

    /* renamed from: g */
    public Handler f9908g;

    /* renamed from: h */
    public AbstractC2841t f9909h;

    /* renamed from: c.d.b.c.b1.n$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/b1/n$a.class */
    public final class C2726a implements AbstractC2740u {

        /* renamed from: a */
        public final T f9910a;

        /* renamed from: b */
        public AbstractC2740u.C2741a f9911b;

        public C2726a(T t) {
            this.f9911b = AbstractC2725n.this.m29274a((AbstractC2737t.C2738a) null);
            this.f9910a = t;
        }

        /* renamed from: a */
        public final AbstractC2740u.C2744c m29258a(AbstractC2740u.C2744c cVar) {
            AbstractC2725n nVar = AbstractC2725n.this;
            T t = this.f9910a;
            long j = cVar.f9946f;
            nVar.m29264a((AbstractC2725n) t, j);
            AbstractC2725n nVar2 = AbstractC2725n.this;
            T t2 = this.f9910a;
            long j2 = cVar.f9947g;
            nVar2.m29264a((AbstractC2725n) t2, j2);
            return (j == cVar.f9946f && j2 == cVar.f9947g) ? cVar : new AbstractC2740u.C2744c(cVar.f9941a, cVar.f9942b, cVar.f9943c, cVar.f9944d, cVar.f9945e, j, j2);
        }

        @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2740u
        /* renamed from: a */
        public void mo29244a(int i, AbstractC2737t.C2738a aVar) {
            if (m29257d(i, aVar)) {
                this.f9911b.m29214c();
            }
        }

        @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2740u
        /* renamed from: a */
        public void mo29243a(int i, AbstractC2737t.C2738a aVar, AbstractC2740u.C2743b bVar, AbstractC2740u.C2744c cVar) {
            if (m29257d(i, aVar)) {
                this.f9911b.m29218b(bVar, m29258a(cVar));
            }
        }

        @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2740u
        /* renamed from: a */
        public void mo29242a(int i, AbstractC2737t.C2738a aVar, AbstractC2740u.C2743b bVar, AbstractC2740u.C2744c cVar, IOException iOException, boolean z) {
            if (m29257d(i, aVar)) {
                this.f9911b.m29229a(bVar, m29258a(cVar), iOException, z);
            }
        }

        @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2740u
        /* renamed from: a */
        public void mo29241a(int i, AbstractC2737t.C2738a aVar, AbstractC2740u.C2744c cVar) {
            if (m29257d(i, aVar)) {
                this.f9911b.m29228a(m29258a(cVar));
            }
        }

        @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2740u
        /* renamed from: b */
        public void mo29240b(int i, AbstractC2737t.C2738a aVar) {
            if (m29257d(i, aVar)) {
                AbstractC2725n nVar = AbstractC2725n.this;
                AbstractC2737t.C2738a aVar2 = this.f9911b.f9935b;
                C2877e.m28737a(aVar2);
                if (nVar.m29260b(aVar2)) {
                    this.f9911b.m29219b();
                }
            }
        }

        @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2740u
        /* renamed from: b */
        public void mo29239b(int i, AbstractC2737t.C2738a aVar, AbstractC2740u.C2743b bVar, AbstractC2740u.C2744c cVar) {
            if (m29257d(i, aVar)) {
                this.f9911b.m29230a(bVar, m29258a(cVar));
            }
        }

        @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2740u
        /* renamed from: c */
        public void mo29238c(int i, AbstractC2737t.C2738a aVar) {
            if (m29257d(i, aVar)) {
                AbstractC2725n nVar = AbstractC2725n.this;
                AbstractC2737t.C2738a aVar2 = this.f9911b.f9935b;
                C2877e.m28737a(aVar2);
                if (nVar.m29260b(aVar2)) {
                    this.f9911b.m29236a();
                }
            }
        }

        @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2740u
        /* renamed from: c */
        public void mo29237c(int i, AbstractC2737t.C2738a aVar, AbstractC2740u.C2743b bVar, AbstractC2740u.C2744c cVar) {
            if (m29257d(i, aVar)) {
                this.f9911b.m29213c(bVar, m29258a(cVar));
            }
        }

        /* renamed from: d */
        public final boolean m29257d(int i, AbstractC2737t.C2738a aVar) {
            AbstractC2737t.C2738a aVar2;
            if (aVar != null) {
                AbstractC2725n.this.m29263a((AbstractC2725n) this.f9910a, aVar);
                aVar2 = aVar;
                if (aVar == null) {
                    return false;
                }
            } else {
                aVar2 = null;
            }
            AbstractC2725n.this.m29265a((AbstractC2725n) this.f9910a, i);
            AbstractC2740u.C2741a aVar3 = this.f9911b;
            if (aVar3.f9934a == i && C2885h0.m28669a(aVar3.f9935b, aVar2)) {
                return true;
            }
            this.f9911b = AbstractC2725n.this.m29275a(i, aVar2, 0L);
            return true;
        }
    }

    /* renamed from: c.d.b.c.b1.n$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/b1/n$b.class */
    public static final class C2727b {

        /* renamed from: a */
        public final AbstractC2737t f9913a;

        /* renamed from: b */
        public final AbstractC2737t.AbstractC2739b f9914b;

        /* renamed from: c */
        public final AbstractC2740u f9915c;

        public C2727b(AbstractC2737t tVar, AbstractC2737t.AbstractC2739b bVar, AbstractC2740u uVar) {
            this.f9913a = tVar;
            this.f9914b = bVar;
            this.f9915c = uVar;
        }
    }

    /* renamed from: a */
    public int m29265a(T t, int i) {
        return i;
    }

    /* renamed from: a */
    public long m29264a(T t, long j) {
        return j;
    }

    /* renamed from: a */
    public AbstractC2737t.C2738a m29263a(T t, AbstractC2737t.C2738a aVar) {
        return aVar;
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2722l
    /* renamed from: a */
    public void mo29266a() {
        for (C2727b bVar : this.f9907f.values()) {
            bVar.f9913a.mo29247b(bVar.f9914b);
        }
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2722l
    /* renamed from: a */
    public void mo29149a(AbstractC2841t tVar) {
        this.f9909h = tVar;
        this.f9908g = new Handler();
    }

    /* renamed from: a */
    public final void m29262a(final T t, AbstractC2737t tVar) {
        C2877e.m28734a(!this.f9907f.containsKey(t));
        AbstractC2737t.AbstractC2739b aVar = new AbstractC2737t.AbstractC2739b() { // from class: c.d.b.c.b1.a
            @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2737t.AbstractC2739b
            /* renamed from: a */
            public final void mo27399a(AbstractC2737t tVar2, AbstractC2965r0 r0Var) {
                AbstractC2725n.this.m29261a(t, tVar2, r0Var);
            }
        };
        C2726a aVar2 = new C2726a(t);
        this.f9907f.put(t, new C2727b(tVar, aVar, aVar2));
        Handler handler = this.f9908g;
        C2877e.m28737a(handler);
        tVar.mo29251a(handler, aVar2);
        tVar.mo29249a(aVar, this.f9909h);
        if (!m29272d()) {
            tVar.mo29247b(aVar);
        }
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2737t
    /* renamed from: b */
    public void mo29148b() throws IOException {
        for (C2727b bVar : this.f9907f.values()) {
            bVar.f9913a.mo29148b();
        }
    }

    /* renamed from: b */
    public abstract void m29261a(T t, AbstractC2737t tVar, AbstractC2965r0 r0Var);

    /* renamed from: b */
    public boolean m29260b(AbstractC2737t.C2738a aVar) {
        return true;
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2722l
    /* renamed from: c */
    public void mo29259c() {
        for (C2727b bVar : this.f9907f.values()) {
            bVar.f9913a.mo29246c(bVar.f9914b);
        }
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2722l
    /* renamed from: e */
    public void mo29146e() {
        for (C2727b bVar : this.f9907f.values()) {
            bVar.f9913a.mo29250a(bVar.f9914b);
            bVar.f9913a.mo29248a(bVar.f9915c);
        }
        this.f9907f.clear();
    }
}
