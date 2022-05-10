package p131c.p161d.p367h;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.ProtoSyntax;
/* renamed from: c.d.h.g0 */
/* loaded from: classes2-dex2jar.jar:c/d/h/g0.class */
public final class C6314g0 implements AbstractC6290d1 {

    /* renamed from: b */
    public static final AbstractC6346m0 f19914b = new C6315a();

    /* renamed from: a */
    public final AbstractC6346m0 f19915a;

    /* renamed from: c.d.h.g0$a */
    /* loaded from: classes2-dex2jar.jar:c/d/h/g0$a.class */
    public static final class C6315a implements AbstractC6346m0 {
        @Override // p131c.p161d.p367h.AbstractC6346m0
        /* renamed from: a */
        public AbstractC6341l0 mo21026a(Class<?> cls) {
            throw new IllegalStateException("This should never be called.");
        }

        @Override // p131c.p161d.p367h.AbstractC6346m0
        /* renamed from: b */
        public boolean mo21025b(Class<?> cls) {
            return false;
        }
    }

    /* renamed from: c.d.h.g0$b */
    /* loaded from: classes2-dex2jar.jar:c/d/h/g0$b.class */
    public static class C6316b implements AbstractC6346m0 {

        /* renamed from: a */
        public AbstractC6346m0[] f19916a;

        public C6316b(AbstractC6346m0... m0VarArr) {
            this.f19916a = m0VarArr;
        }

        @Override // p131c.p161d.p367h.AbstractC6346m0
        /* renamed from: a */
        public AbstractC6341l0 mo21026a(Class<?> cls) {
            AbstractC6346m0[] m0VarArr;
            for (AbstractC6346m0 m0Var : this.f19916a) {
                if (m0Var.mo21025b(cls)) {
                    return m0Var.mo21026a(cls);
                }
            }
            throw new UnsupportedOperationException("No factory is available for message type: " + cls.getName());
        }

        @Override // p131c.p161d.p367h.AbstractC6346m0
        /* renamed from: b */
        public boolean mo21025b(Class<?> cls) {
            for (AbstractC6346m0 m0Var : this.f19916a) {
                if (m0Var.mo21025b(cls)) {
                    return true;
                }
            }
            return false;
        }
    }

    public C6314g0() {
        this(m21495a());
    }

    public C6314g0(AbstractC6346m0 m0Var) {
        C6381y.m21007a(m0Var, "messageInfoFactory");
        this.f19915a = m0Var;
    }

    /* renamed from: a */
    public static <T> AbstractC6287c1<T> m21492a(Class<T> cls, AbstractC6341l0 l0Var) {
        if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
            return m21494a(l0Var) ? C6362q0.m21156a(cls, l0Var, C6374u0.m21041b(), AbstractC6294e0.m21627b(), C6298e1.m21586e(), C6367s.m21073b(), C6337k0.m21308b()) : C6362q0.m21156a(cls, l0Var, C6374u0.m21041b(), AbstractC6294e0.m21627b(), C6298e1.m21586e(), (AbstractC6361q<?>) null, C6337k0.m21308b());
        }
        return m21494a(l0Var) ? C6362q0.m21156a(cls, l0Var, C6374u0.m21042a(), AbstractC6294e0.m21628a(), C6298e1.m21594c(), C6367s.m21074a(), C6337k0.m21309a()) : C6362q0.m21156a(cls, l0Var, C6374u0.m21042a(), AbstractC6294e0.m21628a(), C6298e1.m21590d(), (AbstractC6361q<?>) null, C6337k0.m21309a());
    }

    /* renamed from: a */
    public static AbstractC6346m0 m21495a() {
        return new C6316b(C6377w.m21027a(), m21491b());
    }

    /* renamed from: a */
    public static boolean m21494a(AbstractC6341l0 l0Var) {
        return l0Var.mo21266c() == ProtoSyntax.PROTO2;
    }

    /* renamed from: b */
    public static AbstractC6346m0 m21491b() {
        try {
            return (AbstractC6346m0) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return f19914b;
        }
    }

    @Override // p131c.p161d.p367h.AbstractC6290d1
    /* renamed from: a */
    public <T> AbstractC6287c1<T> mo21493a(Class<T> cls) {
        C6298e1.m21606a((Class<?>) cls);
        AbstractC6341l0 a = this.f19915a.mo21026a(cls);
        return a.mo21268a() ? GeneratedMessageLite.class.isAssignableFrom(cls) ? C6366r0.m21087a(C6298e1.m21586e(), C6367s.m21073b(), a.mo21267b()) : C6366r0.m21087a(C6298e1.m21594c(), C6367s.m21074a(), a.mo21267b()) : m21492a(cls, a);
    }
}
