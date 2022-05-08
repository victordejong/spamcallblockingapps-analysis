package dagger.internal;

import javax.inject.Provider;
/* loaded from: classes2-dex2jar.jar:dagger/internal/DelegateFactory.class */
public final class DelegateFactory<T> implements Factory<T> {
    private Provider<T> delegate;

    @Override // javax.inject.Provider
    public T get() {
        if (this.delegate != null) {
            return this.delegate.get();
        }
        throw new IllegalStateException();
    }

    public void setDelegatedProvider(Provider<T> provider) {
        if (provider == null) {
            throw new IllegalArgumentException();
        } else if (this.delegate != null) {
            throw new IllegalStateException();
        } else {
            this.delegate = provider;
        }
    }
}
