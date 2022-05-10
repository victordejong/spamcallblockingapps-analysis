package com.google.common.collect;

import java.io.Serializable;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/ByFunctionOrdering.class */
public final class ByFunctionOrdering<F, T> extends Ordering<F> implements Serializable {
    public static final long serialVersionUID = 0;
    public final AbstractC4920g<F, ? extends T> function;
    public final Ordering<T> ordering;

    public ByFunctionOrdering(AbstractC4920g<F, ? extends T> gVar, Ordering<T> ordering) {
        C4933n.m24795a(gVar);
        this.function = gVar;
        C4933n.m24795a(ordering);
        this.ordering = ordering;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(F f, F f2) {
        return this.ordering.compare(this.function.apply(f), this.function.apply(f2));
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ByFunctionOrdering)) {
            return false;
        }
        ByFunctionOrdering byFunctionOrdering = (ByFunctionOrdering) obj;
        if (!this.function.equals(byFunctionOrdering.function) || !this.ordering.equals(byFunctionOrdering.ordering)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return C4928k.m24807a(this.function, this.ordering);
    }

    public String toString() {
        return this.ordering + ".onResultOf(" + this.function + ")";
    }
}
