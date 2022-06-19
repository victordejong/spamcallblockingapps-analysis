package p193e.p194a.p613c0;

import java.util.Objects;
import p193e.p194a.p1146q2.p1151d1.AbstractC19494d;
import p193e.p194a.p1220s4.AbstractC20235a;
import s1.z.b.a;
import s1.z.c.f;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.c0.f */
/* loaded from: classes4-dex2jar.jar:e/a/c0/f.class */
public abstract class AbstractC10908f<V> {

    /* renamed from: a */
    public final C10911g f32390a;

    /* renamed from: b */
    public final AbstractC20235a f32391b;

    /* renamed from: c */
    public final AbstractC19494d f32392c;

    /* renamed from: e.a.c0.f$a */
    /* loaded from: classes4-dex2jar.jar:e/a/c0/f$a.class */
    public static final class C10909a extends m implements a<Boolean> {

        /* renamed from: b */
        public static final C10909a f32393b = new C10909a();

        public C10909a() {
            super(0);
        }

        public /* bridge */ /* synthetic */ Object invoke() {
            return Boolean.TRUE;
        }
    }

    /* renamed from: e.a.c0.f$b */
    /* loaded from: classes4-dex2jar.jar:e/a/c0/f$b.class */
    public static final class C10910b extends m implements a<Boolean> {

        /* renamed from: b */
        public static final C10910b f32394b = new C10910b();

        public C10910b() {
            super(0);
        }

        public /* bridge */ /* synthetic */ Object invoke() {
            return Boolean.TRUE;
        }
    }

    public AbstractC10908f(C10911g c10911g, AbstractC20235a abstractC20235a, AbstractC19494d abstractC19494d, f fVar) {
        this.f32390a = c10911g;
        this.f32391b = abstractC20235a;
        this.f32392c = abstractC19494d;
    }

    /* renamed from: d */
    public static void m25508d(AbstractC10908f abstractC10908f, boolean z, a aVar, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            aVar = C10909a.f32393b;
        }
        Objects.requireNonNull(abstractC10908f);
        l.e(aVar, "predicate");
        if (!z) {
            boolean z2 = false;
            if (((C10905c) abstractC10908f).f32383d.f32398d.length() > 0) {
                z2 = true;
            }
            if (!z2 || !abstractC10908f.m25509c() || !((Boolean) aVar.invoke()).booleanValue()) {
                return;
            }
        }
        abstractC10908f.f32392c.mo13282c(((C10905c) abstractC10908f).f32383d.f32398d);
    }

    /* renamed from: e */
    public static void m25507e(AbstractC10908f abstractC10908f, boolean z, a aVar, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            aVar = C10910b.f32394b;
        }
        Objects.requireNonNull(abstractC10908f);
        l.e(aVar, "predicate");
        if (!z) {
            boolean z2 = false;
            if (((C10905c) abstractC10908f).f32383d.f32397c.length() > 0) {
                z2 = true;
            }
            if (!z2 || !abstractC10908f.m25509c() || !((Boolean) aVar.invoke()).booleanValue()) {
                return;
            }
        }
        abstractC10908f.f32392c.mo13282c(((C10905c) abstractC10908f).f32383d.f32397c);
    }

    /* renamed from: a */
    public C10911g mo25497a() {
        return this.f32390a;
    }

    /* renamed from: b */
    public final String m25510b() {
        return this.f32391b.getString(mo25497a().f32396b);
    }

    /* renamed from: c */
    public final boolean m25509c() {
        return m25510b().length() > 0;
    }
}
