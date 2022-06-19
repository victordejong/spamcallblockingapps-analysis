package p193e.p194a.p673d0;

import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
import p193e.p194a.p1187r2.C19895z;
import p193e.p194a.p751f4.p762g.C14022p;
/* renamed from: e.a.d0.i0 */
/* loaded from: classes6-dex2jar.jar:e/a/d0/i0.class */
public final class C12518i0 implements AbstractC12522j0 {

    /* renamed from: a */
    public final AbstractC19890w f36599a;

    /* renamed from: e.a.d0.i0$b */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/i0$b.class */
    public static class C12520b extends AbstractC19889v<AbstractC12522j0, Contact> {

        /* renamed from: b */
        public final Number f36600b;

        /* renamed from: c */
        public final boolean f36601c;

        /* renamed from: d */
        public final int f36602d;

        /* renamed from: e */
        public final C14022p f36603e;

        public C12520b(C19852e c19852e, Number number, boolean z, int i, C14022p c14022p, C12519a c12519a) {
            super(c19852e);
            this.f36600b = number;
            this.f36601c = z;
            this.f36602d = i;
            this.f36603e = c14022p;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Contact> mo22907a = ((AbstractC12522j0) obj).mo22907a(this.f36600b, this.f36601c, this.f36602d, this.f36603e);
            m11836c(mo22907a);
            return mo22907a;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".performSearch(");
            m8728C.append(AbstractC19889v.m11837b(this.f36600b, 1));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(Boolean.valueOf(this.f36601c), 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(Integer.valueOf(this.f36602d), 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f36603e, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public C12518i0(AbstractC19890w abstractC19890w) {
        this.f36599a = abstractC19890w;
    }

    @Override // p193e.p194a.p673d0.AbstractC12522j0
    /* renamed from: a */
    public AbstractC19891x<Contact> mo22907a(Number number, boolean z, int i, C14022p c14022p) {
        return new C19895z(this.f36599a, new C12520b(new C19852e(), number, z, i, c14022p, null));
    }
}
