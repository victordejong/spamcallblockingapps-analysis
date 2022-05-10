package p131c.p161d.p282e.p315q;

import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p367h.AbstractC6376v0;
/* renamed from: c.d.e.q.k0 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/k0.class */
public final class C5508k0 extends GeneratedMessageLite<C5508k0, C5509a> implements AbstractC5511l0 {
    public static final int ACTION_BUTTON_FIELD_NUMBER = 4;
    public static final int ACTION_FIELD_NUMBER = 5;
    public static final int BACKGROUND_HEX_COLOR_FIELD_NUMBER = 6;
    public static final int BODY_FIELD_NUMBER = 2;
    public static final C5508k0 DEFAULT_INSTANCE;
    public static final int IMAGE_URL_FIELD_NUMBER = 3;
    public static volatile AbstractC6376v0<C5508k0> PARSER;
    public static final int TITLE_FIELD_NUMBER = 1;
    public C5488d0 actionButton_;
    public C5885z action_;
    public C5514m0 body_;
    public C5514m0 title_;
    public String imageUrl_ = "";
    public String backgroundHexColor_ = "";

    /* renamed from: c.d.e.q.k0$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/k0$a.class */
    public static final class C5509a extends GeneratedMessageLite.AbstractC7946a<C5508k0, C5509a> implements AbstractC5511l0 {
        public C5509a() {
            super(C5508k0.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C5509a(C5884y yVar) {
            this();
        }
    }

    static {
        C5508k0 k0Var = new C5508k0();
        DEFAULT_INSTANCE = k0Var;
        GeneratedMessageLite.m6949a(C5508k0.class, k0Var);
    }

    /* renamed from: G */
    public static C5508k0 m23650G() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: A */
    public C5514m0 m23655A() {
        C5514m0 m0Var = this.title_;
        C5514m0 m0Var2 = m0Var;
        if (m0Var == null) {
            m0Var2 = C5514m0.m23640y();
        }
        return m0Var2;
    }

    /* renamed from: C */
    public boolean m23654C() {
        return this.action_ != null;
    }

    /* renamed from: D */
    public boolean m23653D() {
        return this.body_ != null;
    }

    /* renamed from: E */
    public boolean m23652E() {
        return this.title_ != null;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C5884y.f19188a[methodToInvoke.ordinal()]) {
            case 1:
                return new C5508k0();
            case 2:
                return new C5509a(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "��\u0006����\u0001\u0006\u0006������\u0001\t\u0002\t\u0003Ȉ\u0004\t\u0005\t\u0006Ȉ", new Object[]{"title_", "body_", "imageUrl_", "actionButton_", "action_", "backgroundHexColor_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C5508k0> v0Var = PARSER;
                AbstractC6376v0<C5508k0> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C5508k0.class) {
                        try {
                            AbstractC6376v0<C5508k0> v0Var3 = PARSER;
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
    public C5885z m23649v() {
        C5885z zVar = this.action_;
        C5885z zVar2 = zVar;
        if (zVar == null) {
            zVar2 = C5885z.m22813x();
        }
        return zVar2;
    }

    /* renamed from: w */
    public C5488d0 m23648w() {
        C5488d0 d0Var = this.actionButton_;
        C5488d0 d0Var2 = d0Var;
        if (d0Var == null) {
            d0Var2 = C5488d0.m23685z();
        }
        return d0Var2;
    }

    /* renamed from: x */
    public String m23647x() {
        return this.backgroundHexColor_;
    }

    /* renamed from: y */
    public C5514m0 m23646y() {
        C5514m0 m0Var = this.body_;
        C5514m0 m0Var2 = m0Var;
        if (m0Var == null) {
            m0Var2 = C5514m0.m23640y();
        }
        return m0Var2;
    }

    /* renamed from: z */
    public String m23645z() {
        return this.imageUrl_;
    }
}
