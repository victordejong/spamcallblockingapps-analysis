package p193e.p194a.p751f4.p753b;

import javax.inject.Inject;
import p193e.p194a.p1272u3.C20592g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.f4.b.d */
/* loaded from: classes11-dex2jar.jar:e/a/f4/b/d.class */
public class C13956d extends C13953a {

    /* renamed from: e.a.f4.b.d$a */
    /* loaded from: classes11-dex2jar.jar:e/a/f4/b/d$a.class */
    public static final class C13957a extends m implements a<Boolean> {

        /* renamed from: b */
        public final /* synthetic */ o3.a f40376b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13957a(o3.a aVar) {
            super(0);
            this.f40376b = aVar;
        }

        public Object invoke() {
            C20592g c20592g = (C20592g) this.f40376b.get();
            return Boolean.valueOf(c20592g.f57910e.m10941a(c20592g, C20592g.f57695p6[1]).isEnabled());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C13956d(o3.a<C20592g> aVar) {
        super(new C13957a(aVar));
        l.e(aVar, "featuresRegistry");
    }
}
