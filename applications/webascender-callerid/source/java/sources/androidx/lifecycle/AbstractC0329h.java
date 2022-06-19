package androidx.lifecycle;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: androidx.lifecycle.h */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/h.class */
public abstract class AbstractC0329h {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.lifecycle.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/h$a.class */
    public static /* synthetic */ class C0330a {

        /* renamed from: a */
        static final /* synthetic */ int[] f1707a;

        /* renamed from: b */
        static final /* synthetic */ int[] f1708b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0099 -> B:44:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009d -> B:62:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a1 -> B:56:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a5 -> B:48:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a9 -> B:42:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00ad -> B:60:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b1 -> B:16:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b5 -> B:46:0x006c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b9 -> B:40:0x0077). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00bd -> B:58:0x0082). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c1 -> B:52:0x008d). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC0331b.values().length];
            f1708b = iArr;
            try {
                iArr[EnumC0331b.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1708b[EnumC0331b.ON_STOP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1708b[EnumC0331b.ON_START.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1708b[EnumC0331b.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f1708b[EnumC0331b.ON_RESUME.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f1708b[EnumC0331b.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f1708b[EnumC0331b.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            int[] iArr2 = new int[EnumC0332c.values().length];
            f1707a = iArr2;
            try {
                iArr2[EnumC0332c.CREATED.ordinal()] = 1;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f1707a[EnumC0332c.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f1707a[EnumC0332c.RESUMED.ordinal()] = 3;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f1707a[EnumC0332c.DESTROYED.ordinal()] = 4;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f1707a[EnumC0332c.INITIALIZED.ordinal()] = 5;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    /* renamed from: androidx.lifecycle.h$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/h$b.class */
    public enum EnumC0331b {
        ON_CREATE,
        ON_START,
        ON_RESUME,
        ON_PAUSE,
        ON_STOP,
        ON_DESTROY,
        ON_ANY;

        public static EnumC0331b downFrom(EnumC0332c enumC0332c) {
            int i = C0330a.f1707a[enumC0332c.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return ON_STOP;
                }
                if (i == 3) {
                    return ON_PAUSE;
                }
                return null;
            }
            return ON_DESTROY;
        }

        public static EnumC0331b downTo(EnumC0332c enumC0332c) {
            int i = C0330a.f1707a[enumC0332c.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return ON_PAUSE;
                }
                if (i == 4) {
                    return ON_DESTROY;
                }
                return null;
            }
            return ON_STOP;
        }

        public static EnumC0331b upFrom(EnumC0332c enumC0332c) {
            int i = C0330a.f1707a[enumC0332c.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return ON_RESUME;
                }
                if (i == 5) {
                    return ON_CREATE;
                }
                return null;
            }
            return ON_START;
        }

        public static EnumC0331b upTo(EnumC0332c enumC0332c) {
            int i = C0330a.f1707a[enumC0332c.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return ON_START;
                }
                if (i == 3) {
                    return ON_RESUME;
                }
                return null;
            }
            return ON_CREATE;
        }

        public EnumC0332c getTargetState() {
            switch (C0330a.f1708b[ordinal()]) {
                case 1:
                case 2:
                    return EnumC0332c.CREATED;
                case 3:
                case 4:
                    return EnumC0332c.STARTED;
                case 5:
                    return EnumC0332c.RESUMED;
                case 6:
                    return EnumC0332c.DESTROYED;
                default:
                    throw new IllegalArgumentException(this + " has no target state");
            }
        }
    }

    /* renamed from: androidx.lifecycle.h$c */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/h$c.class */
    public enum EnumC0332c {
        DESTROYED,
        INITIALIZED,
        CREATED,
        STARTED,
        RESUMED;

        public boolean isAtLeast(EnumC0332c enumC0332c) {
            return compareTo(enumC0332c) >= 0;
        }
    }

    public AbstractC0329h() {
        new AtomicReference();
    }

    /* renamed from: a */
    public abstract void m5439a(AbstractC0339m abstractC0339m);

    /* renamed from: b */
    public abstract EnumC0332c m5438b();

    /* renamed from: c */
    public abstract void m5437c(AbstractC0339m abstractC0339m);
}
