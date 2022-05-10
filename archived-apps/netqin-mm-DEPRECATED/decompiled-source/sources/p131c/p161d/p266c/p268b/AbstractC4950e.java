package p131c.p161d.p266c.p268b;

import com.google.common.collect.ImmutableMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import p131c.p161d.p266c.p269c.AbstractC5040z;
/* renamed from: c.d.c.b.e */
/* loaded from: classes2-dex2jar.jar:c/d/c/b/e.class */
public abstract class AbstractC4950e<K, V> extends AbstractC5040z implements AbstractC4948c<K, V> {
    @Override // p131c.p161d.p266c.p268b.AbstractC4948c
    public ConcurrentMap<K, V> asMap() {
        return delegate().asMap();
    }

    @Override // p131c.p161d.p266c.p268b.AbstractC4948c
    public void cleanUp() {
        delegate().cleanUp();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5040z
    public abstract AbstractC4948c<K, V> delegate();

    @Override // p131c.p161d.p266c.p269c.AbstractC5040z
    public abstract /* bridge */ /* synthetic */ Object delegate();

    @Override // p131c.p161d.p266c.p268b.AbstractC4948c
    public V get(K k, Callable<? extends V> callable) throws ExecutionException {
        return delegate().get(k, callable);
    }

    @Override // p131c.p161d.p266c.p268b.AbstractC4948c
    public ImmutableMap<K, V> getAllPresent(Iterable<?> iterable) {
        return delegate().getAllPresent(iterable);
    }

    @Override // p131c.p161d.p266c.p268b.AbstractC4948c
    public V getIfPresent(Object obj) {
        return delegate().getIfPresent(obj);
    }

    @Override // p131c.p161d.p266c.p268b.AbstractC4948c
    public void invalidate(Object obj) {
        delegate().invalidate(obj);
    }

    @Override // p131c.p161d.p266c.p268b.AbstractC4948c
    public void invalidateAll() {
        delegate().invalidateAll();
    }

    @Override // p131c.p161d.p266c.p268b.AbstractC4948c
    public void invalidateAll(Iterable<?> iterable) {
        delegate().invalidateAll(iterable);
    }

    @Override // p131c.p161d.p266c.p268b.AbstractC4948c
    public void put(K k, V v) {
        delegate().put(k, v);
    }

    @Override // p131c.p161d.p266c.p268b.AbstractC4948c
    public void putAll(Map<? extends K, ? extends V> map) {
        delegate().putAll(map);
    }

    @Override // p131c.p161d.p266c.p268b.AbstractC4948c
    public long size() {
        return delegate().size();
    }

    @Override // p131c.p161d.p266c.p268b.AbstractC4948c
    public C4949d stats() {
        return delegate().stats();
    }
}
