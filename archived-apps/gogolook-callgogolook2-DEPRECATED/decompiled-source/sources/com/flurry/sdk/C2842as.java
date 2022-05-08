package com.flurry.sdk;

import java.util.ArrayList;
/* renamed from: com.flurry.sdk.as */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/as.class */
public final class C2842as<K> extends ArrayList<K> {

    /* renamed from: a */
    public int f4077a = 2;

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(K k) {
        if (contains(k)) {
            remove(k);
        }
        boolean add = super.add(k);
        if (size() > this.f4077a) {
            removeRange(0, (size() - this.f4077a) - 1);
        }
        return add;
    }
}
