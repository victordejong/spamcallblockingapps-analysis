package p193e.p194a.p947k.p969c;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p947k.p948a.p964k.AbstractC15816a;
import p193e.p194a.p947k.p948a.p964k.AbstractC15836l;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.k.c.b */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/b.class */
public abstract class AbstractC15952b {

    /* renamed from: e.a.k.c.b$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/b$a.class */
    public static final class C15953a extends AbstractC15952b {

        /* renamed from: a */
        public final AbstractC15816a f44969a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15953a(AbstractC15816a abstractC15816a) {
            super(null);
            l.e(abstractC15816a, "avatarVideoConfig");
            this.f44969a = abstractC15816a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C15953a) && l.a(this.f44969a, ((C15953a) obj).f44969a);
            }
            return true;
        }

        public int hashCode() {
            AbstractC15816a abstractC15816a = this.f44969a;
            return abstractC15816a != null ? abstractC15816a.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("AvatarVideo(avatarVideoConfig=");
            m8728C.append(this.f44969a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.k.c.b$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/b$b.class */
    public static final class C15954b extends AbstractC15952b {

        /* renamed from: a */
        public final AbstractC15836l f44970a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15954b(AbstractC15836l abstractC15836l) {
            super(null);
            l.e(abstractC15836l, "fullScreenVideoConfig");
            this.f44970a = abstractC15836l;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C15954b) && l.a(this.f44970a, ((C15954b) obj).f44970a);
            }
            return true;
        }

        public int hashCode() {
            AbstractC15836l abstractC15836l = this.f44970a;
            return abstractC15836l != null ? abstractC15836l.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("FullScreenVideo(fullScreenVideoConfig=");
            m8728C.append(this.f44970a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public AbstractC15952b(f fVar) {
    }
}
