package p131c.p161d.p282e.p340u.p350m;

import com.google.firebase.perf.p494v1.ApplicationProcessState;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.MapFieldLite;
import com.google.protobuf.WireFormat;
import java.util.Map;
import p131c.p161d.p282e.p340u.p350m.C5999a;
import p131c.p161d.p367h.AbstractC6376v0;
import p131c.p161d.p367h.C6319h0;
/* renamed from: c.d.e.u.m.e */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/m/e.class */
public final class C6008e extends GeneratedMessageLite<C6008e, C6010b> implements AbstractC6012f {
    public static final int ANDROID_APP_INFO_FIELD_NUMBER = 3;
    public static final int APPLICATION_PROCESS_STATE_FIELD_NUMBER = 5;
    public static final int APP_INSTANCE_ID_FIELD_NUMBER = 2;
    public static final int CUSTOM_ATTRIBUTES_FIELD_NUMBER = 6;
    public static final C6008e DEFAULT_INSTANCE;
    public static final int GOOGLE_APP_ID_FIELD_NUMBER = 1;
    public static final int IOS_APP_INFO_FIELD_NUMBER = 4;
    public static volatile AbstractC6376v0<C6008e> PARSER;
    public static final int WEB_APP_INFO_FIELD_NUMBER = 7;
    public C5999a androidAppInfo_;
    public int applicationProcessState_;
    public int bitField0_;
    public C6025m iosAppInfo_;
    public C6051z webAppInfo_;
    public MapFieldLite<String, String> customAttributes_ = MapFieldLite.emptyMapField();
    public String googleAppId_ = "";
    public String appInstanceId_ = "";

    /* renamed from: c.d.e.u.m.e$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/u/m/e$a.class */
    public static /* synthetic */ class C6009a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19481a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f19481a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19481a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19481a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19481a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f19481a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f19481a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f19481a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: c.d.e.u.m.e$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/u/m/e$b.class */
    public static final class C6010b extends GeneratedMessageLite.AbstractC7946a<C6008e, C6010b> implements AbstractC6012f {
        public C6010b() {
            super(C6008e.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C6010b(C6009a aVar) {
            this();
        }

        /* renamed from: a */
        public C6010b m22313a(C5999a.C6001b bVar) {
            m6930s();
            ((C6008e) this.f31129b).m22327a(bVar.mo6937a());
            return this;
        }

        /* renamed from: a */
        public C6010b m22312a(ApplicationProcessState applicationProcessState) {
            m6930s();
            ((C6008e) this.f31129b).m22322a(applicationProcessState);
            return this;
        }

        /* renamed from: a */
        public C6010b m22311a(String str) {
            m6930s();
            ((C6008e) this.f31129b).m22320b(str);
            return this;
        }

        /* renamed from: a */
        public C6010b m22310a(Map<String, String> map) {
            m6930s();
            ((C6008e) this.f31129b).m22316x().putAll(map);
            return this;
        }

        /* renamed from: b */
        public C6010b m22309b(String str) {
            m6930s();
            ((C6008e) this.f31129b).m22319c(str);
            return this;
        }

        /* renamed from: w */
        public boolean m22308w() {
            return ((C6008e) this.f31129b).m22314z();
        }
    }

    /* renamed from: c.d.e.u.m.e$c */
    /* loaded from: classes2-dex2jar.jar:c/d/e/u/m/e$c.class */
    public static final class C6011c {

        /* renamed from: a */
        public static final C6319h0<String, String> f19482a;

        static {
            WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
            f19482a = C6319h0.m21476a(fieldType, "", fieldType, "");
        }
    }

    static {
        C6008e eVar = new C6008e();
        DEFAULT_INSTANCE = eVar;
        GeneratedMessageLite.m6949a(C6008e.class, eVar);
    }

    /* renamed from: F */
    public static C6008e m22329F() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: G */
    public static C6010b m22328G() {
        return DEFAULT_INSTANCE.m6945i();
    }

    /* renamed from: A */
    public boolean m22333A() {
        return (this.bitField0_ & 32) != 0;
    }

    /* renamed from: C */
    public boolean m22332C() {
        boolean z = true;
        if ((this.bitField0_ & 1) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: D */
    public final MapFieldLite<String, String> m22331D() {
        if (!this.customAttributes_.isMutable()) {
            this.customAttributes_ = this.customAttributes_.mutableCopy();
        }
        return this.customAttributes_;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C6009a.f19481a[methodToInvoke.ordinal()]) {
            case 1:
                return new C6008e();
            case 2:
                return new C6010b(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "\u0001\u0007��\u0001\u0001\u0007\u0007\u0001����\u0001\b��\u0002\b\u0001\u0003\t\u0002\u0004\t\u0003\u0005\f\u0005\u00062\u0007\t\u0004", new Object[]{"bitField0_", "googleAppId_", "appInstanceId_", "androidAppInfo_", "iosAppInfo_", "applicationProcessState_", ApplicationProcessState.internalGetVerifier(), "customAttributes_", C6011c.f19482a, "webAppInfo_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C6008e> v0Var = PARSER;
                AbstractC6376v0<C6008e> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C6008e.class) {
                        try {
                            AbstractC6376v0<C6008e> v0Var3 = PARSER;
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

    /* renamed from: a */
    public final void m22327a(C5999a aVar) {
        aVar.getClass();
        this.androidAppInfo_ = aVar;
        this.bitField0_ |= 4;
    }

    /* renamed from: a */
    public final void m22322a(ApplicationProcessState applicationProcessState) {
        this.applicationProcessState_ = applicationProcessState.getNumber();
        this.bitField0_ |= 32;
    }

    /* renamed from: b */
    public final void m22320b(String str) {
        str.getClass();
        this.bitField0_ |= 2;
        this.appInstanceId_ = str;
    }

    /* renamed from: c */
    public final void m22319c(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.googleAppId_ = str;
    }

    /* renamed from: v */
    public C5999a m22318v() {
        C5999a aVar = this.androidAppInfo_;
        C5999a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = C5999a.m22346y();
        }
        return aVar2;
    }

    /* renamed from: w */
    public String m22317w() {
        return this.appInstanceId_;
    }

    /* renamed from: x */
    public final Map<String, String> m22316x() {
        return m22331D();
    }

    /* renamed from: y */
    public boolean m22315y() {
        return (this.bitField0_ & 4) != 0;
    }

    /* renamed from: z */
    public boolean m22314z() {
        return (this.bitField0_ & 2) != 0;
    }
}
