package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/Lifecycle.class */
public abstract class Lifecycle {
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public AtomicReference<Object> mInternalScopeRef = new AtomicReference<>();

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/Lifecycle$Event.class */
    public enum Event {
        ON_CREATE,
        ON_START,
        ON_RESUME,
        ON_PAUSE,
        ON_STOP,
        ON_DESTROY,
        ON_ANY
    }

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/Lifecycle$State.class */
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
