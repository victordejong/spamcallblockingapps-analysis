package p193e.p194a.p619d.p628c.p629a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.d.c.a.n */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a/n.class */
public abstract class AbstractC11194n {

    /* renamed from: e.a.d.c.a.n$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/n$a.class */
    public static final class C11195a extends AbstractC11194n {

        /* renamed from: a */
        public final String f33083a;

        public C11195a(String str) {
            super(null);
            this.f33083a = str;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C11195a) && l.a(this.f33083a, ((C11195a) obj).f33083a);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f33083a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8618h(C22128a.m8728C("Assistant(imageUrl="), this.f33083a, ")");
        }
    }

    /* renamed from: e.a.d.c.a.n$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/n$b.class */
    public static final class C11196b extends AbstractC11194n {

        /* renamed from: a */
        public static final C11196b f33084a = new C11196b();

        public C11196b() {
            super(null);
        }
    }

    /* renamed from: e.a.d.c.a.n$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/n$c.class */
    public static final class C11197c extends AbstractC11194n {

        /* renamed from: a */
        public static final C11197c f33085a = new C11197c();

        public C11197c() {
            super(null);
        }
    }

    public AbstractC11194n(f fVar) {
    }
}
