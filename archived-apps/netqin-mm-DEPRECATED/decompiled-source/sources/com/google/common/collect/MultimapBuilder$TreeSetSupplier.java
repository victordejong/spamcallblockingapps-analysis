package com.google.common.collect;

import java.io.Serializable;
import java.util.Comparator;
import java.util.SortedSet;
import java.util.TreeSet;
import p131c.p161d.p266c.p267a.AbstractC4941s;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/MultimapBuilder$TreeSetSupplier.class */
public final class MultimapBuilder$TreeSetSupplier<V> implements AbstractC4941s<SortedSet<V>>, Serializable {
    public final Comparator<? super V> comparator;

    public MultimapBuilder$TreeSetSupplier(Comparator<? super V> comparator) {
        C4933n.m24795a(comparator);
        this.comparator = comparator;
    }

    @Override // p131c.p161d.p266c.p267a.AbstractC4941s
    public SortedSet<V> get() {
        return new TreeSet(this.comparator);
    }
}
