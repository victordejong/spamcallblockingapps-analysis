package android.arch.lifecycle;

import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.p001v4.app.Fragment;
import android.support.p001v4.app.FragmentActivity;
/* loaded from: classes-dex2jar.jar:android/arch/lifecycle/ViewModelStores.class */
public class ViewModelStores {
    private ViewModelStores() {
    }

    @NonNull
    @MainThread
    /* renamed from: of */
    public static ViewModelStore m431of(@NonNull Fragment fragment) {
        return fragment instanceof ViewModelStoreOwner ? fragment.getViewModelStore() : HolderFragment.holderFragmentFor(fragment).getViewModelStore();
    }

    @NonNull
    @MainThread
    /* renamed from: of */
    public static ViewModelStore m430of(@NonNull FragmentActivity fragmentActivity) {
        return fragmentActivity instanceof ViewModelStoreOwner ? fragmentActivity.getViewModelStore() : HolderFragment.holderFragmentFor(fragmentActivity).getViewModelStore();
    }
}
