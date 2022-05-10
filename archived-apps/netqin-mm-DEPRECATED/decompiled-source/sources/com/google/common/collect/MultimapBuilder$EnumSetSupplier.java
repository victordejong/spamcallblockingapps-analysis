package com.google.common.collect;

import java.io.Serializable;
import java.lang.Enum;
import java.util.EnumSet;
import java.util.Set;
import p131c.p161d.p266c.p267a.AbstractC4941s;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/MultimapBuilder$EnumSetSupplier.class */
public final class MultimapBuilder$EnumSetSupplier<V extends Enum<V>> implements AbstractC4941s<Set<V>>, Serializable {
    public final Class<V> clazz;

    public MultimapBuilder$EnumSetSupplier(Class<V> cls) {
        C4933n.m24795a(cls);
        this.clazz = cls;
    }

    @Override // p131c.p161d.p266c.p267a.AbstractC4941s
    public Set<V> get() {
        return EnumSet.noneOf(this.clazz);
    }
}
