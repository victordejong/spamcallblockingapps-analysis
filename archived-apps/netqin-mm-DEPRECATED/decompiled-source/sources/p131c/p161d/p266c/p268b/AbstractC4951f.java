package p131c.p161d.p266c.p268b;

import com.google.common.collect.ImmutableMap;
import java.util.concurrent.ExecutionException;
import p131c.p161d.p266c.p267a.AbstractC4920g;
/* renamed from: c.d.c.b.f */
/* loaded from: classes2-dex2jar.jar:c/d/c/b/f.class */
public interface AbstractC4951f<K, V> extends AbstractC4948c<K, V>, AbstractC4920g<K, V> {
    @Override // p131c.p161d.p266c.p267a.AbstractC4920g
    @Deprecated
    V apply(K k);

    V get(K k) throws ExecutionException;

    ImmutableMap<K, V> getAll(Iterable<? extends K> iterable) throws ExecutionException;

    V getUnchecked(K k);

    void refresh(K k);
}
