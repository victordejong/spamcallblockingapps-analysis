package p081h.p203i.p204a.p224e.p259j.p266g;

import p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7583f1;
/* renamed from: h.i.a.e.j.g.e1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/e1.class */
public final class C7576e1 implements AbstractC7620j2 {

    /* renamed from: a */
    public static final C7576e1 f17814a = new C7576e1();

    /* renamed from: a */
    public static C7576e1 m20215a() {
        return f17814a;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7620j2
    /* renamed from: a */
    public final AbstractC7613i2 mo20092a(Class<?> cls) {
        if (!AbstractC7583f1.class.isAssignableFrom(cls)) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unsupported message type: ".concat(valueOf) : new String("Unsupported message type: "));
        }
        try {
            return (AbstractC7613i2) AbstractC7583f1.m20172a((Class<AbstractC7583f1>) cls.asSubclass(AbstractC7583f1.class)).mo20118a(AbstractC7583f1.C7588e.f17843c, (Object) null, (Object) null);
        } catch (Exception e) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(valueOf2.length() != 0 ? "Unable to get message info for ".concat(valueOf2) : new String("Unable to get message info for "), e);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7620j2
    /* renamed from: b */
    public final boolean mo20091b(Class<?> cls) {
        return AbstractC7583f1.class.isAssignableFrom(cls);
    }
}
