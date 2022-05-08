package dagger.internal;

import java.util.Map;
import javax.inject.Provider;
/* loaded from: classes-dex2jar.jar:dagger/internal/AbstractMapFactory.class */
abstract class AbstractMapFactory<K, V, V2> implements Factory<Map<K, V2>> {

    /* renamed from: a */
    private final Map<K, Provider<V>> f14940a;

    /* loaded from: classes-dex2jar.jar:dagger/internal/AbstractMapFactory$Builder.class */
    public static abstract class Builder<K, V, V2> {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final Map<K, Provider<V>> m4644a() {
        return this.f14940a;
    }
}
