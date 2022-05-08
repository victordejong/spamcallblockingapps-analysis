package androidx.lifecycle;

import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/FullLifecycleObserverAdapter.class */
public class FullLifecycleObserverAdapter implements LifecycleEventObserver {

    /* renamed from: f */
    private final FullLifecycleObserver f3985f;

    /* renamed from: g */
    private final LifecycleEventObserver f3986g;

    /* renamed from: androidx.lifecycle.FullLifecycleObserverAdapter$1 */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/FullLifecycleObserverAdapter$1.class */
    static /* synthetic */ class C03681 {

        /* renamed from: a */
        static final /* synthetic */ int[] f3987a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            f3987a = iArr;
            try {
                iArr[Lifecycle.Event.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3987a[Lifecycle.Event.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3987a[Lifecycle.Event.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3987a[Lifecycle.Event.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f3987a[Lifecycle.Event.ON_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f3987a[Lifecycle.Event.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f3987a[Lifecycle.Event.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FullLifecycleObserverAdapter(FullLifecycleObserver fullLifecycleObserver, LifecycleEventObserver lifecycleEventObserver) {
        this.f3985f = fullLifecycleObserver;
        this.f3986g = lifecycleEventObserver;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    /* renamed from: c */
    public void mo16457c(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
        switch (C03681.f3987a[event.ordinal()]) {
            case 1:
                this.f3985f.m18245b(lifecycleOwner);
                break;
            case 2:
                this.f3985f.m18241g(lifecycleOwner);
                break;
            case 3:
                this.f3985f.m18246a(lifecycleOwner);
                break;
            case 4:
                this.f3985f.m18244d(lifecycleOwner);
                break;
            case 5:
                this.f3985f.m18243e(lifecycleOwner);
                break;
            case 6:
                this.f3985f.m18242f(lifecycleOwner);
                break;
            case 7:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        LifecycleEventObserver lifecycleEventObserver = this.f3986g;
        if (lifecycleEventObserver != null) {
            lifecycleEventObserver.mo16457c(lifecycleOwner, event);
        }
    }
}
