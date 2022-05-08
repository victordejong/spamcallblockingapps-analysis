package dagger.android;

import dagger.android.AndroidInjector;
import dagger.internal.Factory;
import java.util.Map;
import javax.inject.Provider;
/* loaded from: classes2-dex2jar.jar:dagger/android/DispatchingAndroidInjector_Factory.class */
public final class DispatchingAndroidInjector_Factory<T> implements Factory<DispatchingAndroidInjector<T>> {
    private final Provider<Map<Class<? extends T>, Provider<AndroidInjector.Factory<? extends T>>>> injectorFactoriesProvider;

    public DispatchingAndroidInjector_Factory(Provider<Map<Class<? extends T>, Provider<AndroidInjector.Factory<? extends T>>>> provider) {
        this.injectorFactoriesProvider = provider;
    }

    public static <T> Factory<DispatchingAndroidInjector<T>> create(Provider<Map<Class<? extends T>, Provider<AndroidInjector.Factory<? extends T>>>> provider) {
        return new DispatchingAndroidInjector_Factory(provider);
    }

    public static <T> DispatchingAndroidInjector<T> newDispatchingAndroidInjector(Map<Class<? extends T>, Provider<AndroidInjector.Factory<? extends T>>> map) {
        return new DispatchingAndroidInjector<>(map);
    }

    @Override // javax.inject.Provider
    public DispatchingAndroidInjector<T> get() {
        return new DispatchingAndroidInjector<>(this.injectorFactoriesProvider.get());
    }
}
