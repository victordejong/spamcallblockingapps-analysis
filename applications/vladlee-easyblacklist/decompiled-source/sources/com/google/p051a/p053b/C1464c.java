package com.google.p051a.p053b;

import com.google.p051a.AbstractC1514q;
import com.google.p051a.p053b.p056b.AbstractC1462b;
import com.google.p051a.p057c.C1493a;
import java.lang.reflect.Constructor;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
/* renamed from: com.google.a.b.c */
/* loaded from: classes-dex2jar.jar:com/google/a/b/c.class */
public final class C1464c {

    /* renamed from: a */
    private final Map<Type, AbstractC1514q<?>> f5634a;

    /* renamed from: b */
    private final AbstractC1462b f5635b = AbstractC1462b.m6287a();

    public C1464c(Map<Type, AbstractC1514q<?>> map) {
        this.f5634a = map;
    }

    /* renamed from: a */
    private <T> AbstractC1491z<T> m6281a(Class<? super T> cls) {
        try {
            Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                this.f5635b.mo6286a(declaredConstructor);
            }
            return new C1472k(this, declaredConstructor);
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    /* renamed from: a */
    public final <T> AbstractC1491z<T> m6282a(C1493a<T> aVar) {
        Type b = aVar.m6251b();
        Class<? super T> a = aVar.m6254a();
        AbstractC1514q<?> qVar = this.f5634a.get(b);
        if (qVar != null) {
            return new C1465d(this, qVar, b);
        }
        AbstractC1514q<?> qVar2 = this.f5634a.get(a);
        if (qVar2 != null) {
            return new C1471j(this, qVar2, b);
        }
        AbstractC1491z<T> a2 = m6281a(a);
        if (a2 != null) {
            return a2;
        }
        AbstractC1491z<T> lVar = Collection.class.isAssignableFrom(a) ? SortedSet.class.isAssignableFrom(a) ? new C1473l(this) : EnumSet.class.isAssignableFrom(a) ? new C1474m(this, b) : Set.class.isAssignableFrom(a) ? new C1475n(this) : Queue.class.isAssignableFrom(a) ? new C1476o(this) : new C1477p(this) : Map.class.isAssignableFrom(a) ? ConcurrentNavigableMap.class.isAssignableFrom(a) ? new C1478q(this) : ConcurrentMap.class.isAssignableFrom(a) ? new C1466e(this) : SortedMap.class.isAssignableFrom(a) ? new C1467f(this) : (!(b instanceof ParameterizedType) || String.class.isAssignableFrom(C1493a.m6252a(((ParameterizedType) b).getActualTypeArguments()[0]).m6254a())) ? new C1469h(this) : new C1468g(this) : null;
        return lVar != null ? lVar : new C1470i(this, a, b);
    }

    public final String toString() {
        return this.f5634a.toString();
    }
}
