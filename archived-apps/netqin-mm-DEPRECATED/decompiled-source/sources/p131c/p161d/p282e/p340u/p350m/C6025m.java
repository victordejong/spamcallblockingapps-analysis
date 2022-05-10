package p131c.p161d.p282e.p340u.p350m;

import com.google.firebase.perf.p494v1.NetworkConnectionInfo;
import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p367h.AbstractC6376v0;
/* renamed from: c.d.e.u.m.m */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/m/m.class */
public final class C6025m extends GeneratedMessageLite<C6025m, C6027b> implements AbstractC6028n {
    public static final int BUNDLE_SHORT_VERSION_FIELD_NUMBER = 3;
    public static final C6025m DEFAULT_INSTANCE;
    public static final int MCC_MNC_FIELD_NUMBER = 4;
    public static final int NETWORK_CONNECTION_INFO_FIELD_NUMBER = 5;
    public static volatile AbstractC6376v0<C6025m> PARSER;
    public static final int SDK_VERSION_FIELD_NUMBER = 2;
    public int bitField0_;
    public NetworkConnectionInfo networkConnectionInfo_;
    public String sdkVersion_ = "";
    public String bundleShortVersion_ = "";
    public String mccMnc_ = "";

    /* renamed from: c.d.e.u.m.m$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/u/m/m$a.class */
    public static /* synthetic */ class C6026a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19486a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f19486a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19486a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19486a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19486a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f19486a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f19486a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f19486a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: c.d.e.u.m.m$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/u/m/m$b.class */
    public static final class C6027b extends GeneratedMessageLite.AbstractC7946a<C6025m, C6027b> implements AbstractC6028n {
        public C6027b() {
            super(C6025m.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C6027b(C6026a aVar) {
            this();
        }
    }

    static {
        C6025m mVar = new C6025m();
        DEFAULT_INSTANCE = mVar;
        GeneratedMessageLite.m6949a(C6025m.class, mVar);
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C6026a.f19486a[methodToInvoke.ordinal()]) {
            case 1:
                return new C6025m();
            case 2:
                return new C6027b(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "\u0001\u0004��\u0001\u0002\u0005\u0004������\u0002\b��\u0003\b\u0001\u0004\b\u0002\u0005\t\u0003", new Object[]{"bitField0_", "sdkVersion_", "bundleShortVersion_", "mccMnc_", "networkConnectionInfo_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C6025m> v0Var = PARSER;
                AbstractC6376v0<C6025m> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C6025m.class) {
                        try {
                            AbstractC6376v0<C6025m> v0Var3 = PARSER;
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
}
