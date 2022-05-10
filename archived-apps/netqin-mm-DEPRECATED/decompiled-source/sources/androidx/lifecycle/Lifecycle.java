package androidx.lifecycle;

import java.util.concurrent.atomic.AtomicReference;
import p012b.p068o.AbstractC1108f;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/Lifecycle.class */
public abstract class Lifecycle {

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

        public boolean isAtLeast(State state) {
            return compareTo(state) >= 0;
        }
    }

    public Lifecycle() {
        new AtomicReference();
    }

    /* renamed from: a */
    public abstract State mo34663a();

    /* renamed from: a */
    public abstract void mo34659a(AbstractC1108f fVar);

    /* renamed from: b */
    public abstract void mo34654b(AbstractC1108f fVar);
}
