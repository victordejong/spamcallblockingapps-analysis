package p131c.p161d.p282e.p315q.p328q0;

import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p367h.AbstractC6376v0;
/* renamed from: c.d.e.q.q0.y2 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/y2.class */
public final class C5835y2 extends GeneratedMessageLite<C5835y2, C5836a> implements AbstractC5840z2 {
    public static final C5835y2 DEFAULT_INSTANCE;
    public static volatile AbstractC6376v0<C5835y2> PARSER;
    public static final int START_TIME_EPOCH_FIELD_NUMBER = 2;
    public static final int VALUE_FIELD_NUMBER = 1;
    public long startTimeEpoch_;
    public long value_;

    /* renamed from: c.d.e.q.q0.y2$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/y2$a.class */
    public static final class C5836a extends GeneratedMessageLite.AbstractC7946a<C5835y2, C5836a> implements AbstractC5840z2 {
        public C5836a() {
            super(C5835y2.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C5836a(C5831x2 x2Var) {
            this();
        }

        /* renamed from: a */
        public C5836a m22927a(long j) {
            m6930s();
            ((C5835y2) this.f31129b).m22938a(j);
            return this;
        }

        /* renamed from: b */
        public C5836a m22926b(long j) {
            m6930s();
            ((C5835y2) this.f31129b).m22935b(j);
            return this;
        }

        /* renamed from: w */
        public C5836a m22925w() {
            m6930s();
            ((C5835y2) this.f31129b).m22932v();
            return this;
        }
    }

    static {
        C5835y2 y2Var = new C5835y2();
        DEFAULT_INSTANCE = y2Var;
        GeneratedMessageLite.m6949a(C5835y2.class, y2Var);
    }

    /* renamed from: A */
    public static C5836a m22939A() {
        return DEFAULT_INSTANCE.m6945i();
    }

    /* renamed from: b */
    public static C5836a m22934b(C5835y2 y2Var) {
        return DEFAULT_INSTANCE.m6953a(y2Var);
    }

    /* renamed from: z */
    public static C5835y2 m22928z() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C5831x2.f19100a[methodToInvoke.ordinal()]) {
            case 1:
                return new C5835y2();
            case 2:
                return new C5836a(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001\u0002\u0002\u0002", new Object[]{"value_", "startTimeEpoch_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C5835y2> v0Var = PARSER;
                AbstractC6376v0<C5835y2> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C5835y2.class) {
                        try {
                            AbstractC6376v0<C5835y2> v0Var3 = PARSER;
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
    public final void m22938a(long j) {
        this.startTimeEpoch_ = j;
    }

    /* renamed from: b */
    public final void m22935b(long j) {
        this.value_ = j;
    }

    /* renamed from: v */
    public final void m22932v() {
        this.value_ = 0L;
    }

    /* renamed from: w */
    public long m22931w() {
        return this.startTimeEpoch_;
    }

    /* renamed from: x */
    public long m22930x() {
        return this.value_;
    }
}
