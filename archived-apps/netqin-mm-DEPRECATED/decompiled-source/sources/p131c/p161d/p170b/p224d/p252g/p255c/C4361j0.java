package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzcg;
/* renamed from: c.d.b.d.g.c.j0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/j0.class */
public final class C4361j0 implements AbstractC4322b1 {

    /* renamed from: a */
    public static final C4361j0 f16533a = new C4361j0();

    /* renamed from: a */
    public static C4361j0 m25895a() {
        return f16533a;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4322b1
    /* renamed from: a */
    public final boolean mo25633a(Class<?> cls) {
        return zzcg.class.isAssignableFrom(cls);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4322b1
    /* renamed from: b */
    public final AbstractC4317a1 mo25632b(Class<?> cls) {
        if (!zzcg.class.isAssignableFrom(cls)) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unsupported message type: ".concat(valueOf) : new String("Unsupported message type: "));
        }
        try {
            return (AbstractC4317a1) zzcg.m10725a((Class<zzcg>) cls.asSubclass(zzcg.class)).mo10535a(zzcg.zzg.f29254c, (Object) null, (Object) null);
        } catch (Exception e) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(valueOf2.length() != 0 ? "Unable to get message info for ".concat(valueOf2) : new String("Unable to get message info for "), e);
        }
    }
}
