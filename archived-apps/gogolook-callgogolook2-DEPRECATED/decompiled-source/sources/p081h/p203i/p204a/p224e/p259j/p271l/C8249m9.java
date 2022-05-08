package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.m9 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/m9.class */
public final class C8249m9 implements AbstractC8410va {

    /* renamed from: a */
    public static final C8249m9 f19088a = new C8249m9();

    /* renamed from: a */
    public static C8249m9 m18278a() {
        return f19088a;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8410va
    /* renamed from: a */
    public final boolean mo18114a(Class<?> cls) {
        return AbstractC8228l9.class.isAssignableFrom(cls);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8410va
    /* renamed from: b */
    public final AbstractC8354sa mo18113b(Class<?> cls) {
        if (!AbstractC8228l9.class.isAssignableFrom(cls)) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unsupported message type: ".concat(valueOf) : new String("Unsupported message type: "));
        }
        try {
            return (AbstractC8354sa) AbstractC8228l9.m18358a((Class<AbstractC8228l9>) cls.asSubclass(AbstractC8228l9.class)).mo17912a(AbstractC8228l9.C8234f.f19067c, (Object) null, (Object) null);
        } catch (Exception e) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(valueOf2.length() != 0 ? "Unable to get message info for ".concat(valueOf2) : new String("Unable to get message info for "), e);
        }
    }
}
