package p081h.p203i.p316b.p318b;

import java.io.Serializable;
import p081h.p203i.p316b.p317a.AbstractC9292d;
import p081h.p203i.p316b.p317a.C9295g;
import p081h.p203i.p316b.p317a.C9301k;
/* renamed from: h.i.b.b.c */
/* loaded from: classes2-dex2jar.jar:h/i/b/b/c.class */
public final class C9316c<F, T> extends AbstractC9342q<F> implements Serializable {

    /* renamed from: a */
    public final AbstractC9292d<F, ? extends T> f21345a;

    /* renamed from: b */
    public final AbstractC9342q<T> f21346b;

    public C9316c(AbstractC9292d<F, ? extends T> dVar, AbstractC9342q<T> qVar) {
        C9301k.m15478a(dVar);
        this.f21345a = dVar;
        C9301k.m15478a(qVar);
        this.f21346b = qVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p081h.p203i.p316b.p318b.AbstractC9342q, java.util.Comparator
    public int compare(F f, F f2) {
        return this.f21346b.compare(this.f21345a.apply(f), this.f21345a.apply(f2));
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C9316c)) {
            return false;
        }
        C9316c cVar = (C9316c) obj;
        if (!this.f21345a.equals(cVar.f21345a) || !this.f21346b.equals(cVar.f21346b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return C9295g.m15487a(this.f21345a, this.f21346b);
    }

    public String toString() {
        return this.f21346b + ".onResultOf(" + this.f21345a + ")";
    }
}
