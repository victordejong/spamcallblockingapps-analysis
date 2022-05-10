package com.google.common.collect;

import java.util.List;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.C5001l;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/CartesianList$1.class */
public class CartesianList$1 extends ImmutableList<E> {
    public final /* synthetic */ C5001l this$0;
    public final /* synthetic */ int val$index;

    public CartesianList$1(C5001l lVar, int i) {
        this.this$0 = lVar;
        this.val$index = i;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [E, java.lang.Object] */
    @Override // java.util.List
    public E get(int i) {
        int a;
        ImmutableList immutableList;
        C4933n.m24798a(i, size());
        a = this.this$0.m24702a(this.val$index, i);
        immutableList = this.this$0.f17615a;
        return ((List) immutableList.get(i)).get(a);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        ImmutableList immutableList;
        immutableList = this.this$0.f17615a;
        return immutableList.size();
    }
}
