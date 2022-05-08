package android.arch.lifecycle;

import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:android/arch/lifecycle/Lifecycle.class */
public abstract class Lifecycle {

    /* loaded from: classes-dex2jar.jar:android/arch/lifecycle/Lifecycle$Event.class */
    public enum Event {
        ON_CREATE,
        ON_START,
        ON_RESUME,
        ON_PAUSE,
        ON_STOP,
        ON_DESTROY,
        ON_ANY
    }

    /* loaded from: classes-dex2jar.jar:android/arch/lifecycle/Lifecycle$State.class */
    public enum State {
        DESTROYED,
        INITIALIZED,
        CREATED,
        STARTED,
        RESUMED;

        public boolean isAtLeast(@NonNull State state) {
            return compareTo(state) >= 0;
        }
    }

    @MainThread
    public abstract void addObserver(@NonNull LifecycleObserver lifecycleObserver);

    @NonNull
    @MainThread
    public abstract State getCurrentState();

    @MainThread
    public abstract void removeObserver(@NonNull LifecycleObserver lifecycleObserver);
}
