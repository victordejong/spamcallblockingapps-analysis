package com.google.a.b;

import com.google.a.a.d;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/google/a/b/y.class */
final class y extends v<Comparable> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    static final y f3735a = new y();

    private y() {
    }

    @Override // com.google.a.b.v
    public final <S extends Comparable> v<S> a() {
        return t.f3725a;
    }

    @Override // com.google.a.b.v, java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        d.a(comparable);
        return comparable == comparable2 ? 0 : comparable2.compareTo(comparable);
    }

    public final String toString() {
        return "Ordering.natural().reverse()";
    }
}
