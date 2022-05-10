package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzhy;
/* renamed from: c.d.b.d.g.f.h3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/h3.class */
public final class C4506h3 implements AbstractC4624y3 {

    /* renamed from: a */
    public static final C4506h3 f16759a = new C4506h3();

    /* renamed from: a */
    public static C4506h3 m25453a() {
        return f16759a;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4624y3
    /* renamed from: a */
    public final boolean mo25124a(Class<?> cls) {
        return zzhy.class.isAssignableFrom(cls);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4624y3
    /* renamed from: b */
    public final AbstractC4630z3 mo25123b(Class<?> cls) {
        if (!zzhy.class.isAssignableFrom(cls)) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unsupported message type: ".concat(valueOf) : new String("Unsupported message type: "));
        }
        try {
            return (AbstractC4630z3) zzhy.m9667a((Class<zzhy>) cls.asSubclass(zzhy.class)).mo9672a(zzhy.zze.f29504c, (Object) null, (Object) null);
        } catch (Exception e) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(valueOf2.length() != 0 ? "Unable to get message info for ".concat(valueOf2) : new String("Unable to get message info for "), e);
        }
    }
}
