package p033i.p034a.p046d.p050e;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: i.a.d.e.r */
/* loaded from: classes2-dex2jar.jar:i/a/d/e/r.class */
final class C0398r {

    /* renamed from: a */
    private final ConcurrentMap<String, AbstractC0391i> f936a = new ConcurrentHashMap();

    /* renamed from: a */
    <I extends AbstractC0391i> I m244a(I i) {
        I i2 = (I) this.f936a.putIfAbsent(i.m261b().m303c().toLowerCase(), i);
        if (i2 == null) {
            return i;
        }
        if (i.getClass().isInstance(i2) && i.equals(i2)) {
            return i2;
        }
        throw new IllegalArgumentException("Instrument with same name and different descriptor already created.");
    }
}
