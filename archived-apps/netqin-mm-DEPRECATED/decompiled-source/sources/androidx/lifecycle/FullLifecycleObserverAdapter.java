package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import p012b.p068o.AbstractC1104b;
import p012b.p068o.AbstractC1107e;
import p012b.p068o.AbstractC1109g;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/FullLifecycleObserverAdapter.class */
public class FullLifecycleObserverAdapter implements AbstractC1107e {

    /* renamed from: a */
    public final AbstractC1104b f1377a;

    /* renamed from: b */
    public final AbstractC1107e f1378b;

    /* renamed from: androidx.lifecycle.FullLifecycleObserverAdapter$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/FullLifecycleObserverAdapter$a.class */
    public static /* synthetic */ class C0231a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f1379a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            f1379a = iArr;
            try {
                iArr[Lifecycle.Event.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1379a[Lifecycle.Event.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1379a[Lifecycle.Event.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1379a[Lifecycle.Event.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f1379a[Lifecycle.Event.ON_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f1379a[Lifecycle.Event.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f1379a[Lifecycle.Event.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    public FullLifecycleObserverAdapter(AbstractC1104b bVar, AbstractC1107e eVar) {
        this.f1377a = bVar;
        this.f1378b = eVar;
    }

    @Override // p012b.p068o.AbstractC1107e
    /* renamed from: a */
    public void mo34664a(AbstractC1109g gVar, Lifecycle.Event event) {
        switch (C0231a.f1379a[event.ordinal()]) {
            case 1:
                this.f1377a.m34670b(gVar);
                break;
            case 2:
                this.f1377a.m34666f(gVar);
                break;
            case 3:
                this.f1377a.m34671a(gVar);
                break;
            case 4:
                this.f1377a.m34669c(gVar);
                break;
            case 5:
                this.f1377a.m34668d(gVar);
                break;
            case 6:
                this.f1377a.m34667e(gVar);
                break;
            case 7:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        AbstractC1107e eVar = this.f1378b;
        if (eVar != null) {
            eVar.mo34664a(gVar, event);
        }
    }
}
