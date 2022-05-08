package androidx.lifecycle;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/SavedStateHandleController.class */
public final class SavedStateHandleController implements LifecycleEventObserver {

    /* renamed from: f */
    private final String f4081f;

    /* renamed from: g */
    private boolean f4082g = false;

    /* renamed from: h */
    private final SavedStateHandle f4083h;

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/SavedStateHandleController$OnRecreation.class */
    static final class OnRecreation implements SavedStateRegistry.AutoRecreated {
        OnRecreation() {
        }

        @Override // androidx.savedstate.SavedStateRegistry.AutoRecreated
        /* renamed from: a */
        public void mo17010a(@NonNull SavedStateRegistryOwner savedStateRegistryOwner) {
            if (savedStateRegistryOwner instanceof ViewModelStoreOwner) {
                ViewModelStore viewModelStore = ((ViewModelStoreOwner) savedStateRegistryOwner).getViewModelStore();
                SavedStateRegistry savedStateRegistry = savedStateRegistryOwner.getSavedStateRegistry();
                for (String str : viewModelStore.m18136c()) {
                    SavedStateHandleController.m18162h(viewModelStore.m18137b(str), savedStateRegistry, savedStateRegistryOwner.getLifecycle());
                }
                if (!viewModelStore.m18136c().isEmpty()) {
                    savedStateRegistry.m17011e(OnRecreation.class);
                    return;
                }
                return;
            }
            throw new IllegalStateException("Internal error: OnRecreation should be registered only on componentsthat implement ViewModelStoreOwner");
        }
    }

    SavedStateHandleController(String str, SavedStateHandle savedStateHandle) {
        this.f4081f = str;
        this.f4083h = savedStateHandle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static void m18162h(ViewModel viewModel, SavedStateRegistry savedStateRegistry, Lifecycle lifecycle) {
        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) viewModel.m18147c("androidx.lifecycle.savedstate.vm.tag");
        if (savedStateHandleController != null && !savedStateHandleController.m18158l()) {
            savedStateHandleController.m18161i(savedStateRegistry, lifecycle);
            m18157m(savedStateRegistry, lifecycle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static SavedStateHandleController m18160j(SavedStateRegistry savedStateRegistry, Lifecycle lifecycle, String str, Bundle bundle) {
        SavedStateHandleController savedStateHandleController = new SavedStateHandleController(str, SavedStateHandle.m18164a(savedStateRegistry.m17015a(str), bundle));
        savedStateHandleController.m18161i(savedStateRegistry, lifecycle);
        m18157m(savedStateRegistry, lifecycle);
        return savedStateHandleController;
    }

    /* renamed from: m */
    private static void m18157m(final SavedStateRegistry savedStateRegistry, final Lifecycle lifecycle) {
        Lifecycle.State b = lifecycle.mo18230b();
        if (b == Lifecycle.State.INITIALIZED || b.isAtLeast(Lifecycle.State.STARTED)) {
            savedStateRegistry.m17011e(OnRecreation.class);
        } else {
            lifecycle.mo18231a(new LifecycleEventObserver() { // from class: androidx.lifecycle.SavedStateHandleController.1
                @Override // androidx.lifecycle.LifecycleEventObserver
                /* renamed from: c */
                public void mo16457c(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
                    if (event == Lifecycle.Event.ON_START) {
                        Lifecycle.this.mo18229c(this);
                        savedStateRegistry.m17011e(OnRecreation.class);
                    }
                }
            });
        }
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    /* renamed from: c */
    public void mo16457c(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY) {
            this.f4082g = false;
            lifecycleOwner.getLifecycle().mo18229c(this);
        }
    }

    /* renamed from: i */
    void m18161i(SavedStateRegistry savedStateRegistry, Lifecycle lifecycle) {
        if (!this.f4082g) {
            this.f4082g = true;
            lifecycle.mo18231a(this);
            savedStateRegistry.m17012d(this.f4081f, this.f4083h.m18163b());
            return;
        }
        throw new IllegalStateException("Already attached to lifecycleOwner");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public SavedStateHandle m18159k() {
        return this.f4083h;
    }

    /* renamed from: l */
    boolean m18158l() {
        return this.f4082g;
    }
}
