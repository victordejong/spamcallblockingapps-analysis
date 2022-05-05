package androidx.lifecycle;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: androidx.lifecycle.f */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/f.class */
public abstract class AbstractC0927f {

    /* renamed from: a */
    AtomicReference<Object> f3897a = new AtomicReference<>();

    /* renamed from: androidx.lifecycle.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/f$a.class */
    public enum EnumC0928a {
        ON_CREATE,
        ON_START,
        ON_RESUME,
        ON_PAUSE,
        ON_STOP,
        ON_DESTROY,
        ON_ANY
    }

    /* renamed from: androidx.lifecycle.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/f$b.class */
    public enum EnumC0929b {
        DESTROYED,
        INITIALIZED,
        CREATED,
        STARTED,
        RESUMED;

        /* renamed from: a */
        public final boolean m7585a(EnumC0929b bVar) {
            return compareTo(bVar) >= 0;
        }
    }

    /* renamed from: a */
    public abstract EnumC0929b mo7584a();

    /* renamed from: a */
    public abstract void mo7580a(AbstractC0931h hVar);

    /* renamed from: b */
    public abstract void mo7575b(AbstractC0931h hVar);
}
