package androidx.fragment.app;

import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentViewLifecycleOwner.class */
public class FragmentViewLifecycleOwner implements LifecycleOwner {
    public LifecycleRegistry mLifecycleRegistry = null;

    @Override // androidx.lifecycle.LifecycleOwner
    @NonNull
    public Lifecycle getLifecycle() {
        initialize();
        return this.mLifecycleRegistry;
    }

    public void handleLifecycleEvent(@NonNull Lifecycle.Event event) {
        this.mLifecycleRegistry.handleLifecycleEvent(event);
    }

    public void initialize() {
        if (this.mLifecycleRegistry == null) {
            this.mLifecycleRegistry = new LifecycleRegistry(this);
        }
    }

    public boolean isInitialized() {
        return this.mLifecycleRegistry != null;
    }

    public void setCurrentState(@NonNull Lifecycle.State state) {
        this.mLifecycleRegistry.setCurrentState(state);
    }
}
