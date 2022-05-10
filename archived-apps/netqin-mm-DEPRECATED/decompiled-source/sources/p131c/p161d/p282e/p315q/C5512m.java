package p131c.p161d.p282e.p315q;

import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p367h.AbstractC6376v0;
/* renamed from: c.d.e.q.m */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/m.class */
public final class C5512m extends GeneratedMessageLite<C5512m, C5513a> implements AbstractC5516n {
    public static final C5512m DEFAULT_INSTANCE;
    public static final int EXPERIMENT_ID_FIELD_NUMBER = 1;
    public static volatile AbstractC6376v0<C5512m> PARSER;
    public String experimentId_ = "";

    /* renamed from: c.d.e.q.m$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/m$a.class */
    public static final class C5513a extends GeneratedMessageLite.AbstractC7946a<C5512m, C5513a> implements AbstractC5516n {
        public C5513a() {
            super(C5512m.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C5513a(C5510l lVar) {
            this();
        }
    }

    static {
        C5512m mVar = new C5512m();
        DEFAULT_INSTANCE = mVar;
        GeneratedMessageLite.m6949a(C5512m.class, mVar);
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C5510l.f18465a[methodToInvoke.ordinal()]) {
            case 1:
                return new C5512m();
            case 2:
                return new C5513a(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001������\u0001Ȉ", new Object[]{"experimentId_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C5512m> v0Var = PARSER;
                AbstractC6376v0<C5512m> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C5512m.class) {
                        try {
                            AbstractC6376v0<C5512m> v0Var3 = PARSER;
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
