package dagger.android.support;

import android.support.p001v4.app.Fragment;
import dagger.MembersInjector;
import dagger.android.DispatchingAndroidInjector;
import javax.inject.Provider;
/* loaded from: classes2-dex2jar.jar:dagger/android/support/DaggerFragment_MembersInjector.class */
public final class DaggerFragment_MembersInjector implements MembersInjector<DaggerFragment> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final Provider<DispatchingAndroidInjector<Fragment>> childFragmentInjectorProvider;

    public DaggerFragment_MembersInjector(Provider<DispatchingAndroidInjector<Fragment>> provider) {
        this.childFragmentInjectorProvider = provider;
    }

    public static MembersInjector<DaggerFragment> create(Provider<DispatchingAndroidInjector<Fragment>> provider) {
        return new DaggerFragment_MembersInjector(provider);
    }

    public static void injectChildFragmentInjector(DaggerFragment daggerFragment, Provider<DispatchingAndroidInjector<Fragment>> provider) {
        daggerFragment.childFragmentInjector = provider.get();
    }

    public void injectMembers(DaggerFragment daggerFragment) {
        if (daggerFragment == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        daggerFragment.childFragmentInjector = this.childFragmentInjectorProvider.get();
    }
}
