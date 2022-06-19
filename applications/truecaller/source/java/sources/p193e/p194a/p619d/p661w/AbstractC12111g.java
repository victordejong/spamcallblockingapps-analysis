package p193e.p194a.p619d.p661w;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11592d;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.d.w.g */
/* loaded from: classes15-dex2jar.jar:e/a/d/w/g.class */
public abstract class AbstractC12111g {

    /* renamed from: e.a.d.w.g$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/w/g$a.class */
    public static final class C12112a extends AbstractC12111g {

        /* renamed from: a */
        public final AbstractC12093b f35449a;

        /* renamed from: b */
        public final AbstractC11592d f35450b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12112a(AbstractC12093b abstractC12093b, AbstractC11592d abstractC11592d) {
            super(null);
            l.e(abstractC12093b, "invitation");
            l.e(abstractC11592d, "callInfo");
            this.f35449a = abstractC12093b;
            this.f35450b = abstractC11592d;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C12112a)) {
                    return false;
                }
                C12112a c12112a = (C12112a) obj;
                return l.a(this.f35449a, c12112a.f35449a) && l.a(this.f35450b, c12112a.f35450b);
            }
            return true;
        }

        public int hashCode() {
            AbstractC12093b abstractC12093b = this.f35449a;
            int i = 0;
            int hashCode = abstractC12093b != null ? abstractC12093b.hashCode() : 0;
            AbstractC11592d abstractC11592d = this.f35450b;
            if (abstractC11592d != null) {
                i = abstractC11592d.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Active(invitation=");
            m8728C.append(this.f35449a);
            m8728C.append(", callInfo=");
            m8728C.append(this.f35450b);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.d.w.g$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/w/g$b.class */
    public static final class C12113b extends AbstractC12111g {

        /* renamed from: a */
        public static final C12113b f35451a = new C12113b();

        public C12113b() {
            super(null);
        }
    }

    public AbstractC12111g() {
    }

    public AbstractC12111g(f fVar) {
    }
}
