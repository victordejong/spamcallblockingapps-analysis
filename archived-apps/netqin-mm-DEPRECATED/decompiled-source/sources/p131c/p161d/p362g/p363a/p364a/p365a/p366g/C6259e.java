package p131c.p161d.p362g.p363a.p364a.p365a.p366g;

import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p367h.AbstractC6376v0;
/* renamed from: c.d.g.a.a.a.g.e */
/* loaded from: classes2-dex2jar.jar:c/d/g/a/a/a/g/e.class */
public final class C6259e extends GeneratedMessageLite<C6259e, C6261b> implements AbstractC6262f {
    public static final int APP_INSTANCE_ID_FIELD_NUMBER = 2;
    public static final int APP_INSTANCE_ID_TOKEN_FIELD_NUMBER = 3;
    public static final C6259e DEFAULT_INSTANCE;
    public static final int GMP_APP_ID_FIELD_NUMBER = 1;
    public static volatile AbstractC6376v0<C6259e> PARSER;
    public String gmpAppId_ = "";
    public String appInstanceId_ = "";
    public String appInstanceIdToken_ = "";

    /* renamed from: c.d.g.a.a.a.g.e$a */
    /* loaded from: classes2-dex2jar.jar:c/d/g/a/a/a/g/e$a.class */
    public static /* synthetic */ class C6260a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19847a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f19847a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19847a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19847a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19847a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f19847a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f19847a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f19847a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: c.d.g.a.a.a.g.e$b */
    /* loaded from: classes2-dex2jar.jar:c/d/g/a/a/a/g/e$b.class */
    public static final class C6261b extends GeneratedMessageLite.AbstractC7946a<C6259e, C6261b> implements AbstractC6262f {
        public C6261b() {
            super(C6259e.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C6261b(C6260a aVar) {
            this();
        }

        /* renamed from: a */
        public C6261b m21727a(String str) {
            m6930s();
            ((C6259e) this.f31129b).m21733b(str);
            return this;
        }

        /* renamed from: b */
        public C6261b m21726b(String str) {
            m6930s();
            ((C6259e) this.f31129b).m21731c(str);
            return this;
        }

        /* renamed from: c */
        public C6261b m21725c(String str) {
            m6930s();
            ((C6259e) this.f31129b).m21730d(str);
            return this;
        }
    }

    static {
        C6259e eVar = new C6259e();
        DEFAULT_INSTANCE = eVar;
        GeneratedMessageLite.m6949a(C6259e.class, eVar);
    }

    /* renamed from: w */
    public static C6261b m21728w() {
        return DEFAULT_INSTANCE.m6945i();
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C6260a.f19847a[methodToInvoke.ordinal()]) {
            case 1:
                return new C6259e();
            case 2:
                return new C6261b(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "��\u0003����\u0001\u0003\u0003������\u0001Ȉ\u0002Ȉ\u0003Ȉ", new Object[]{"gmpAppId_", "appInstanceId_", "appInstanceIdToken_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C6259e> v0Var = PARSER;
                AbstractC6376v0<C6259e> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C6259e.class) {
                        try {
                            AbstractC6376v0<C6259e> v0Var3 = PARSER;
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
    public final void m21733b(String str) {
        str.getClass();
        this.appInstanceId_ = str;
    }

    /* renamed from: c */
    public final void m21731c(String str) {
        str.getClass();
        this.appInstanceIdToken_ = str;
    }

    /* renamed from: d */
    public final void m21730d(String str) {
        str.getClass();
        this.gmpAppId_ = str;
    }
}
