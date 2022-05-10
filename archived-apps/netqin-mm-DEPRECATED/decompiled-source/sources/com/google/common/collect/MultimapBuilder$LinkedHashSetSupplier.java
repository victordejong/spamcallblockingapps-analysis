package com.google.common.collect;

import java.io.Serializable;
import java.util.Set;
import p131c.p161d.p266c.p267a.AbstractC4941s;
import p131c.p161d.p266c.p269c.C5006n;
import p131c.p161d.p266c.p269c.C5009o0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/MultimapBuilder$LinkedHashSetSupplier.class */
public final class MultimapBuilder$LinkedHashSetSupplier<V> implements AbstractC4941s<Set<V>>, Serializable {
    public final int expectedValuesPerKey;

    public MultimapBuilder$LinkedHashSetSupplier(int i) {
        C5006n.m24663a(i, "expectedValuesPerKey");
        this.expectedValuesPerKey = i;
    }

    @Override // p131c.p161d.p266c.p267a.AbstractC4941s
    public Set<V> get() {
        return C5009o0.m24644d(this.expectedValuesPerKey);
    }
}
