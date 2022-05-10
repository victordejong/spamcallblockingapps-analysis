package p131c.p161d.p282e.p315q;

import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p367h.AbstractC6376v0;
/* renamed from: c.d.e.q.i0 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/i0.class */
public final class C5503i0 extends GeneratedMessageLite<C5503i0, C5504a> implements AbstractC5506j0 {
    public static final int ACTION_FIELD_NUMBER = 2;
    public static final C5503i0 DEFAULT_INSTANCE;
    public static final int IMAGE_URL_FIELD_NUMBER = 1;
    public static volatile AbstractC6376v0<C5503i0> PARSER;
    public C5885z action_;
    public String imageUrl_ = "";

    /* renamed from: c.d.e.q.i0$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/i0$a.class */
    public static final class C5504a extends GeneratedMessageLite.AbstractC7946a<C5503i0, C5504a> implements AbstractC5506j0 {
        public C5504a() {
            super(C5503i0.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C5504a(C5884y yVar) {
            this();
        }
    }

    static {
        C5503i0 i0Var = new C5503i0();
        DEFAULT_INSTANCE = i0Var;
        GeneratedMessageLite.m6949a(C5503i0.class, i0Var);
    }

    /* renamed from: z */
    public static C5503i0 m23656z() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C5884y.f19188a[methodToInvoke.ordinal()]) {
            case 1:
                return new C5503i0();
            case 2:
                return new C5504a(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001Ȉ\u0002\t", new Object[]{"imageUrl_", "action_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C5503i0> v0Var = PARSER;
                AbstractC6376v0<C5503i0> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C5503i0.class) {
                        try {
                            AbstractC6376v0<C5503i0> v0Var3 = PARSER;
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
    public C5885z m23660v() {
        C5885z zVar = this.action_;
        C5885z zVar2 = zVar;
        if (zVar == null) {
            zVar2 = C5885z.m22813x();
        }
        return zVar2;
    }

    /* renamed from: w */
    public String m23659w() {
        return this.imageUrl_;
    }

    /* renamed from: x */
    public boolean m23658x() {
        return this.action_ != null;
    }
}
