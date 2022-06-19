package p193e.p194a.p798g5;

import com.truecaller.data.entity.Contact;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
import p193e.p194a.p1187r2.C19895z;
/* renamed from: e.a.g5.m */
/* loaded from: classes14-dex2jar.jar:e/a/g5/m.class */
public final class C14531m implements AbstractC14535n {

    /* renamed from: a */
    public final AbstractC19890w f41807a;

    /* renamed from: e.a.g5.m$b */
    /* loaded from: classes14-dex2jar.jar:e/a/g5/m$b.class */
    public static class C14533b extends AbstractC19889v<AbstractC14535n, Contact> {

        /* renamed from: b */
        public final Contact f41808b;

        /* renamed from: c */
        public final String f41809c;

        /* renamed from: d */
        public final int f41810d;

        public C14533b(C19852e c19852e, Contact contact, String str, int i, C14532a c14532a) {
            super(c19852e);
            this.f41808b = contact;
            this.f41809c = str;
            this.f41810d = i;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Contact> mo20028a = ((AbstractC14535n) obj).mo20028a(this.f41808b, this.f41809c, this.f41810d);
            m11836c(mo20028a);
            return mo20028a;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".suggestNameForContact(");
            m8728C.append(AbstractC19889v.m11837b(this.f41808b, 1));
            m8728C.append(",");
            C22128a.m8719E0(this.f41809c, 1, m8728C, ",");
            return C22128a.m8694K1(this.f41810d, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.g5.m$c */
    /* loaded from: classes14-dex2jar.jar:e/a/g5/m$c.class */
    public static class C14534c extends AbstractC19889v<AbstractC14535n, Void> {

        /* renamed from: b */
        public final Contact f41811b;

        /* renamed from: c */
        public final long f41812c;

        /* renamed from: d */
        public final long f41813d;

        /* renamed from: e */
        public final int f41814e;

        /* renamed from: f */
        public final int f41815f;

        public C14534c(C19852e c19852e, Contact contact, long j, long j2, int i, int i2, C14532a c14532a) {
            super(c19852e);
            this.f41811b = contact;
            this.f41812c = j;
            this.f41813d = j2;
            this.f41814e = i;
            this.f41815f = i2;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Void> mo20027b = ((AbstractC14535n) obj).mo20027b(this.f41811b, this.f41812c, this.f41813d, this.f41814e, this.f41815f);
            m11836c(mo20027b);
            return mo20027b;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".tagContact(");
            m8728C.append(AbstractC19889v.m11837b(this.f41811b, 1));
            m8728C.append(",");
            C22128a.m8605k0(this.f41812c, 2, m8728C, ",");
            C22128a.m8605k0(this.f41813d, 2, m8728C, ",");
            m8728C.append(AbstractC19889v.m11837b(Integer.valueOf(this.f41814e), 2));
            m8728C.append(",");
            return C22128a.m8694K1(this.f41815f, 2, m8728C, ")");
        }
    }

    public C14531m(AbstractC19890w abstractC19890w) {
        this.f41807a = abstractC19890w;
    }

    @Override // p193e.p194a.p798g5.AbstractC14535n
    /* renamed from: a */
    public AbstractC19891x<Contact> mo20028a(Contact contact, String str, int i) {
        return new C19895z(this.f41807a, new C14533b(new C19852e(), contact, str, i, null));
    }

    @Override // p193e.p194a.p798g5.AbstractC14535n
    /* renamed from: b */
    public AbstractC19891x<Void> mo20027b(Contact contact, long j, long j2, int i, int i2) {
        return new C19895z(this.f41807a, new C14534c(new C19852e(), contact, j, j2, i, i2, null));
    }
}
