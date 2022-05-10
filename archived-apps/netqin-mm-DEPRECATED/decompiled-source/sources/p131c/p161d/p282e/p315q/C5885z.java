package p131c.p161d.p282e.p315q;

import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p367h.AbstractC6376v0;
/* renamed from: c.d.e.q.z */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/z.class */
public final class C5885z extends GeneratedMessageLite<C5885z, C5886a> implements AbstractC5479a0 {
    public static final int ACTION_URL_FIELD_NUMBER = 1;
    public static final C5885z DEFAULT_INSTANCE;
    public static volatile AbstractC6376v0<C5885z> PARSER;
    public String actionUrl_ = "";

    /* renamed from: c.d.e.q.z$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/z$a.class */
    public static final class C5886a extends GeneratedMessageLite.AbstractC7946a<C5885z, C5886a> implements AbstractC5479a0 {
        public C5886a() {
            super(C5885z.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C5886a(C5884y yVar) {
            this();
        }
    }

    static {
        C5885z zVar = new C5885z();
        DEFAULT_INSTANCE = zVar;
        GeneratedMessageLite.m6949a(C5885z.class, zVar);
    }

    /* renamed from: x */
    public static C5885z m22813x() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C5884y.f19188a[methodToInvoke.ordinal()]) {
            case 1:
                return new C5885z();
            case 2:
                return new C5886a(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001������\u0001Ȉ", new Object[]{"actionUrl_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C5885z> v0Var = PARSER;
                AbstractC6376v0<C5885z> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C5885z.class) {
                        try {
                            AbstractC6376v0<C5885z> v0Var3 = PARSER;
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

    /* renamed from: v */
    public String m22815v() {
        return this.actionUrl_;
    }
}
