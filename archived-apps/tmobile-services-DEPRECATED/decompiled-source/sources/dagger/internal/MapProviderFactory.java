package dagger.internal;

import dagger.Lazy;
import dagger.internal.AbstractMapFactory;
import java.util.Map;
import javax.inject.Provider;
/* loaded from: classes-dex2jar.jar:dagger/internal/MapProviderFactory.class */
public final class MapProviderFactory<K, V> extends AbstractMapFactory<K, V, Provider<V>> implements Lazy<Map<K, Provider<V>>> {

    /* loaded from: classes-dex2jar.jar:dagger/internal/MapProviderFactory$Builder.class */
    public static final class Builder<K, V> extends AbstractMapFactory.Builder<K, V, Provider<V>> {
    }

    /* renamed from: b */
    public Map<K, Provider<V>> get() {
        return m4644a();
    }
}
