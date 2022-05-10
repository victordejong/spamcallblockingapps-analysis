package p131c.p161d.p282e.p315q;

import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p367h.AbstractC6376v0;
/* renamed from: c.d.e.q.b0 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/b0.class */
public final class C5483b0 extends GeneratedMessageLite<C5483b0, C5484a> implements AbstractC5486c0 {
    public static final int ACTION_FIELD_NUMBER = 4;
    public static final int BACKGROUND_HEX_COLOR_FIELD_NUMBER = 5;
    public static final int BODY_FIELD_NUMBER = 2;
    public static final C5483b0 DEFAULT_INSTANCE;
    public static final int IMAGE_URL_FIELD_NUMBER = 3;
    public static volatile AbstractC6376v0<C5483b0> PARSER;
    public static final int TITLE_FIELD_NUMBER = 1;
    public C5885z action_;
    public C5514m0 body_;
    public C5514m0 title_;
    public String imageUrl_ = "";
    public String backgroundHexColor_ = "";

    /* renamed from: c.d.e.q.b0$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/b0$a.class */
    public static final class C5484a extends GeneratedMessageLite.AbstractC7946a<C5483b0, C5484a> implements AbstractC5486c0 {
        public C5484a() {
            super(C5483b0.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C5484a(C5884y yVar) {
            this();
        }
    }

    static {
        C5483b0 b0Var = new C5483b0();
        DEFAULT_INSTANCE = b0Var;
        GeneratedMessageLite.m6949a(C5483b0.class, b0Var);
    }

    /* renamed from: F */
    public static C5483b0 m23695F() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: A */
    public boolean m23699A() {
        return this.action_ != null;
    }

    /* renamed from: C */
    public boolean m23698C() {
        return this.body_ != null;
    }

    /* renamed from: D */
    public boolean m23697D() {
        return this.title_ != null;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C5884y.f19188a[methodToInvoke.ordinal()]) {
            case 1:
                return new C5483b0();
            case 2:
                return new C5484a(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "��\u0005����\u0001\u0005\u0005������\u0001\t\u0002\t\u0003Ȉ\u0004\t\u0005Ȉ", new Object[]{"title_", "body_", "imageUrl_", "action_", "backgroundHexColor_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C5483b0> v0Var = PARSER;
                AbstractC6376v0<C5483b0> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C5483b0.class) {
                        try {
                            AbstractC6376v0<C5483b0> v0Var3 = PARSER;
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
    public C5885z m23694v() {
        C5885z zVar = this.action_;
        C5885z zVar2 = zVar;
        if (zVar == null) {
            zVar2 = C5885z.m22813x();
        }
        return zVar2;
    }

    /* renamed from: w */
    public String m23693w() {
        return this.backgroundHexColor_;
    }

    /* renamed from: x */
    public C5514m0 m23692x() {
        C5514m0 m0Var = this.body_;
        C5514m0 m0Var2 = m0Var;
        if (m0Var == null) {
            m0Var2 = C5514m0.m23640y();
        }
        return m0Var2;
    }

    /* renamed from: y */
    public String m23691y() {
        return this.imageUrl_;
    }

    /* renamed from: z */
    public C5514m0 m23690z() {
        C5514m0 m0Var = this.title_;
        C5514m0 m0Var2 = m0Var;
        if (m0Var == null) {
            m0Var2 = C5514m0.m23640y();
        }
        return m0Var2;
    }
}
