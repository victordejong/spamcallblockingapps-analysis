package p131c.p161d.p362g.p363a.p364a.p365a.p366g;

import com.google.protobuf.GeneratedMessageLite;
import java.util.List;
import p131c.p161d.p367h.AbstractC6376v0;
import p131c.p161d.p367h.C6381y;
/* renamed from: c.d.g.a.a.a.g.b */
/* loaded from: classes2-dex2jar.jar:c/d/g/a/a/a/g/b.class */
public final class C6254b extends GeneratedMessageLite<C6254b, C6256b> implements AbstractC6257c {
    public static final int ALREADY_SEEN_CAMPAIGNS_FIELD_NUMBER = 1;
    public static final C6254b DEFAULT_INSTANCE;
    public static volatile AbstractC6376v0<C6254b> PARSER;
    public C6381y.AbstractC6390i<C6251a> alreadySeenCampaigns_ = GeneratedMessageLite.m6940u();

    /* renamed from: c.d.g.a.a.a.g.b$a */
    /* loaded from: classes2-dex2jar.jar:c/d/g/a/a/a/g/b$a.class */
    public static /* synthetic */ class C6255a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19846a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f19846a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19846a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19846a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19846a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f19846a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f19846a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f19846a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: c.d.g.a.a.a.g.b$b */
    /* loaded from: classes2-dex2jar.jar:c/d/g/a/a/a/g/b$b.class */
    public static final class C6256b extends GeneratedMessageLite.AbstractC7946a<C6254b, C6256b> implements AbstractC6257c {
        public C6256b() {
            super(C6254b.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C6256b(C6255a aVar) {
            this();
        }

        /* renamed from: a */
        public C6256b m21736a(C6251a aVar) {
            m6930s();
            ((C6254b) this.f31129b).m21744a(aVar);
            return this;
        }
    }

    static {
        C6254b bVar = new C6254b();
        DEFAULT_INSTANCE = bVar;
        GeneratedMessageLite.m6949a(C6254b.class, bVar);
    }

    /* renamed from: A */
    public static AbstractC6376v0<C6254b> m21745A() {
        return DEFAULT_INSTANCE.mo6943r();
    }

    /* renamed from: a */
    public static C6256b m21743a(C6254b bVar) {
        return DEFAULT_INSTANCE.m6953a(bVar);
    }

    /* renamed from: y */
    public static C6254b m21738y() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: z */
    public static C6256b m21737z() {
        return DEFAULT_INSTANCE.m6945i();
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C6255a.f19846a[methodToInvoke.ordinal()]) {
            case 1:
                return new C6254b();
            case 2:
                return new C6256b(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"alreadySeenCampaigns_", C6251a.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C6254b> v0Var = PARSER;
                AbstractC6376v0<C6254b> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C6254b.class) {
                        try {
                            AbstractC6376v0<C6254b> v0Var3 = PARSER;
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
    public final void m21744a(C6251a aVar) {
        aVar.getClass();
        m21741v();
        this.alreadySeenCampaigns_.add(aVar);
    }

    /* renamed from: v */
    public final void m21741v() {
        if (!this.alreadySeenCampaigns_.mo21000L()) {
            this.alreadySeenCampaigns_ = GeneratedMessageLite.m6958a(this.alreadySeenCampaigns_);
        }
    }

    /* renamed from: w */
    public List<C6251a> m21740w() {
        return this.alreadySeenCampaigns_;
    }
}
