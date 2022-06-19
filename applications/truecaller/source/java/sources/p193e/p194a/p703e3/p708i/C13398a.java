package p193e.p194a.p703e3.p708i;

import com.truecaller.data.entity.Number;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
import p193e.p194a.p1187r2.C19895z;
import p193e.p194a.p703e3.p704e.C13353b;
/* renamed from: e.a.e3.i.a */
/* loaded from: classes6-dex2jar.jar:e/a/e3/i/a.class */
public final class C13398a implements AbstractC13401b {

    /* renamed from: a */
    public final AbstractC19890w f38872a;

    /* renamed from: e.a.e3.i.a$b */
    /* loaded from: classes6-dex2jar.jar:e/a/e3/i/a$b.class */
    public static class C13400b extends AbstractC19889v<AbstractC13401b, C13353b> {

        /* renamed from: b */
        public final String f38873b;

        /* renamed from: c */
        public final Number f38874c;

        public C13400b(C19852e c19852e, String str, Number number, C13399a c13399a) {
            super(c19852e);
            this.f38873b = str;
            this.f38874c = number;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<C13353b> mo21866e = ((AbstractC13401b) obj).mo21866e(this.f38873b, this.f38874c);
            m11836c(mo21866e);
            return mo21866e;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".sendCallerIdNotification(");
            C22128a.m8719E0(this.f38873b, 2, m8728C, ",");
            m8728C.append(AbstractC19889v.m11837b(this.f38874c, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public C13398a(AbstractC19890w abstractC19890w) {
        this.f38872a = abstractC19890w;
    }

    @Override // p193e.p194a.p703e3.p708i.AbstractC13401b
    /* renamed from: e */
    public AbstractC19891x<C13353b> mo21866e(String str, Number number) {
        return new C19895z(this.f38872a, new C13400b(new C19852e(), str, number, null));
    }
}
