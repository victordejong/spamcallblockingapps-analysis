package com.google.common.collect;

import java.util.LinkedList;
import java.util.List;
import p131c.p161d.p266c.p267a.AbstractC4941s;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/MultimapBuilder$LinkedListSupplier.class */
public enum MultimapBuilder$LinkedListSupplier implements AbstractC4941s<List<Object>> {
    INSTANCE;

    public static <V> AbstractC4941s<List<V>> instance() {
        return INSTANCE;
    }

    @Override // p131c.p161d.p266c.p267a.AbstractC4941s
    public List<Object> get() {
        return new LinkedList();
    }
}
