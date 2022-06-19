package p193e.p194a.p619d.p657v.p658k;

import com.truecaller.voip.groupcall.action.InviteError;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.d.v.k.z */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/z.class */
public abstract class AbstractC12015z {

    /* renamed from: e.a.d.v.k.z$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/z$a.class */
    public static final class C12016a extends AbstractC12015z {

        /* renamed from: a */
        public final InviteError f35233a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12016a(InviteError inviteError) {
            super(null);
            l.e(inviteError, "inviteError");
            this.f35233a = inviteError;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C12016a) && l.a(this.f35233a, ((C12016a) obj).f35233a);
            }
            return true;
        }

        public int hashCode() {
            InviteError inviteError = this.f35233a;
            return inviteError != null ? inviteError.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Error(inviteError=");
            m8728C.append(this.f35233a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.d.v.k.z$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/z$b.class */
    public static final class C12017b extends AbstractC12015z {

        /* renamed from: a */
        public static final C12017b f35234a = new C12017b();

        public C12017b() {
            super(null);
        }
    }

    /* renamed from: e.a.d.v.k.z$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/z$c.class */
    public static final class C12018c extends AbstractC12015z {

        /* renamed from: a */
        public static final C12018c f35235a = new C12018c();

        public C12018c() {
            super(null);
        }
    }

    public AbstractC12015z() {
    }

    public AbstractC12015z(f fVar) {
    }
}
