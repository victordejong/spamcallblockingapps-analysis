package p131c.p161d.p282e.p340u.p350m;

import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p367h.AbstractC6376v0;
/* renamed from: c.d.e.u.m.i */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/m/i.class */
public final class C6017i extends GeneratedMessageLite<C6017i, C6019b> implements AbstractC6020j {
    public static final int CPU_CLOCK_RATE_KHZ_FIELD_NUMBER = 2;
    public static final int CPU_PROCESSOR_COUNT_FIELD_NUMBER = 6;
    public static final C6017i DEFAULT_INSTANCE;
    public static final int DEVICE_RAM_SIZE_KB_FIELD_NUMBER = 3;
    public static final int MAX_APP_JAVA_HEAP_MEMORY_KB_FIELD_NUMBER = 4;
    public static final int MAX_ENCOURAGED_APP_JAVA_HEAP_MEMORY_KB_FIELD_NUMBER = 5;
    public static volatile AbstractC6376v0<C6017i> PARSER;
    public static final int PROCESS_NAME_FIELD_NUMBER = 1;
    public int bitField0_;
    public int cpuClockRateKhz_;
    public int cpuProcessorCount_;
    public int deviceRamSizeKb_;
    public int maxAppJavaHeapMemoryKb_;
    public int maxEncouragedAppJavaHeapMemoryKb_;
    public String processName_ = "";

    /* renamed from: c.d.e.u.m.i$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/u/m/i$a.class */
    public static /* synthetic */ class C6018a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19484a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f19484a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19484a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19484a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19484a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f19484a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f19484a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f19484a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: c.d.e.u.m.i$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/u/m/i$b.class */
    public static final class C6019b extends GeneratedMessageLite.AbstractC7946a<C6017i, C6019b> implements AbstractC6020j {
        public C6019b() {
            super(C6017i.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C6019b(C6018a aVar) {
            this();
        }

        /* renamed from: a */
        public C6019b m22284a(int i) {
            m6930s();
            ((C6017i) this.f31129b).m22294b(i);
            return this;
        }

        /* renamed from: a */
        public C6019b m22283a(String str) {
            m6930s();
            ((C6017i) this.f31129b).m22292b(str);
            return this;
        }

        /* renamed from: b */
        public C6019b m22282b(int i) {
            m6930s();
            ((C6017i) this.f31129b).m22291c(i);
            return this;
        }

        /* renamed from: c */
        public C6019b m22281c(int i) {
            m6930s();
            ((C6017i) this.f31129b).m22289d(i);
            return this;
        }
    }

    static {
        C6017i iVar = new C6017i();
        DEFAULT_INSTANCE = iVar;
        GeneratedMessageLite.m6949a(C6017i.class, iVar);
    }

    /* renamed from: x */
    public static C6017i m22286x() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: y */
    public static C6019b m22285y() {
        return DEFAULT_INSTANCE.m6945i();
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C6018a.f19484a[methodToInvoke.ordinal()]) {
            case 1:
                return new C6017i();
            case 2:
                return new C6019b(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001\b��\u0002\u0004\u0001\u0003\u0004\u0003\u0004\u0004\u0004\u0005\u0004\u0005\u0006\u0004\u0002", new Object[]{"bitField0_", "processName_", "cpuClockRateKhz_", "deviceRamSizeKb_", "maxAppJavaHeapMemoryKb_", "maxEncouragedAppJavaHeapMemoryKb_", "cpuProcessorCount_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C6017i> v0Var = PARSER;
                AbstractC6376v0<C6017i> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C6017i.class) {
                        try {
                            AbstractC6376v0<C6017i> v0Var3 = PARSER;
                            v0Var2 = v0Var3;
                            if (v0Var3 == null) {
                                v0Var2 = new GeneratedMessageLite.C7947b<>(DEFAULT_INSTANCE);
                                PARSER = v0Var2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return v0Var2;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    /* renamed from: b */
    public final void m22294b(int i) {
        this.bitField0_ |= 8;
        this.deviceRamSizeKb_ = i;
    }

    /* renamed from: b */
    public final void m22292b(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.processName_ = str;
    }

    /* renamed from: c */
    public final void m22291c(int i) {
        this.bitField0_ |= 16;
        this.maxAppJavaHeapMemoryKb_ = i;
    }

    /* renamed from: d */
    public final void m22289d(int i) {
        this.bitField0_ |= 32;
        this.maxEncouragedAppJavaHeapMemoryKb_ = i;
    }

    /* renamed from: v */
    public boolean m22288v() {
        return (this.bitField0_ & 16) != 0;
    }
}
