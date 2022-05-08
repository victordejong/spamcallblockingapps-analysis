package dagger.internal;

import javax.inject.Provider;
/* loaded from: classes-dex2jar.jar:dagger/internal/DelegateFactory.class */
public final class DelegateFactory<T> implements Factory<T> {

    /* renamed from: a */
    private Provider<T> f14941a;

    @Override // javax.inject.Provider
    public T get() {
        Provider<T> provider = this.f14941a;
        if (provider != null) {
            return provider.get();
        }
        throw new IllegalStateException();
    }
}
