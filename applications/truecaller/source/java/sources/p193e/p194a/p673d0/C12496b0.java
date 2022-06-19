package p193e.p194a.p673d0;

import com.truecaller.blocking.FilterMatch;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
/* renamed from: e.a.d0.b0 */
/* loaded from: classes6-dex2jar.jar:e/a/d0/b0.class */
public final class C12496b0 implements AbstractC12505c0 {

    /* renamed from: a */
    public final AbstractC19890w f36523a;

    /* renamed from: e.a.d0.b0$b */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/b0$b.class */
    public static class C12498b extends AbstractC19889v<AbstractC12505c0, Void> {

        /* renamed from: b */
        public final C12560v f36524b;

        public C12498b(C19852e c19852e, C12560v c12560v, C12497a c12497a) {
            super(c19852e);
            this.f36524b = c12560v;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC12505c0) obj).mo22930a(this.f36524b);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".onCallerIdUpdated(");
            m8728C.append(AbstractC19889v.m11837b(this.f36524b, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.d0.b0$c */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/b0$c.class */
    public static class C12499c extends AbstractC19889v<AbstractC12505c0, Void> {
        public C12499c(C19852e c19852e, C12497a c12497a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC12505c0) obj).mo22926e();
            return null;
        }

        public String toString() {
            return ".onCallerIdWindowClosed()";
        }
    }

    /* renamed from: e.a.d0.b0$d */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/b0$d.class */
    public static class C12500d extends AbstractC19889v<AbstractC12505c0, Void> {

        /* renamed from: b */
        public final C12560v f36525b;

        public C12500d(C19852e c19852e, C12560v c12560v, C12497a c12497a) {
            super(c19852e);
            this.f36525b = c12560v;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC12505c0) obj).mo22929b(this.f36525b);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".onCallerIdWindowShown(");
            m8728C.append(AbstractC19889v.m11837b(this.f36525b, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.d0.b0$e */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/b0$e.class */
    public static class C12501e extends AbstractC19889v<AbstractC12505c0, Void> {
        public C12501e(C19852e c19852e, C12497a c12497a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC12505c0) obj).onDestroy();
            return null;
        }

        public String toString() {
            return ".onDestroy()";
        }
    }

    /* renamed from: e.a.d0.b0$f */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/b0$f.class */
    public static class C12502f extends AbstractC19889v<AbstractC12505c0, Void> {

        /* renamed from: b */
        public final boolean f36526b;

        public C12502f(C19852e c19852e, boolean z, C12497a c12497a) {
            super(c19852e);
            this.f36526b = z;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC12505c0) obj).mo22927d(this.f36526b);
            return null;
        }

        public String toString() {
            return C22128a.m8566u(this.f36526b, 2, C22128a.m8728C(".onNetworkStateChanged("), ")");
        }
    }

    /* renamed from: e.a.d0.b0$g */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/b0$g.class */
    public static class C12503g extends AbstractC19889v<AbstractC12505c0, Void> {

        /* renamed from: b */
        public final int f36527b;

        /* renamed from: c */
        public final String f36528c;

        /* renamed from: d */
        public final int f36529d;

        /* renamed from: e */
        public final int f36530e;

        /* renamed from: f */
        public final long f36531f;

        /* renamed from: g */
        public final FilterMatch f36532g;

        public C12503g(C19852e c19852e, int i, String str, int i2, int i3, long j, FilterMatch filterMatch, C12497a c12497a) {
            super(c19852e);
            this.f36527b = i;
            this.f36528c = str;
            this.f36529d = i2;
            this.f36530e = i3;
            this.f36531f = j;
            this.f36532g = filterMatch;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC12505c0) obj).mo22928c(this.f36527b, this.f36528c, this.f36529d, this.f36530e, this.f36531f, this.f36532g);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".onStateChanged(");
            m8728C.append(AbstractC19889v.m11837b(Integer.valueOf(this.f36527b), 2));
            m8728C.append(",");
            C22128a.m8719E0(this.f36528c, 1, m8728C, ",");
            m8728C.append(AbstractC19889v.m11837b(Integer.valueOf(this.f36529d), 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(Integer.valueOf(this.f36530e), 2));
            m8728C.append(",");
            C22128a.m8605k0(this.f36531f, 2, m8728C, ",");
            m8728C.append(AbstractC19889v.m11837b(this.f36532g, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public C12496b0(AbstractC19890w abstractC19890w) {
        this.f36523a = abstractC19890w;
    }

    @Override // p193e.p194a.p673d0.AbstractC12505c0
    /* renamed from: a */
    public void mo22930a(C12560v c12560v) {
        this.f36523a.mo11835a(new C12498b(new C19852e(), c12560v, null));
    }

    @Override // p193e.p194a.p673d0.AbstractC12505c0
    /* renamed from: b */
    public void mo22929b(C12560v c12560v) {
        this.f36523a.mo11835a(new C12500d(new C19852e(), c12560v, null));
    }

    @Override // p193e.p194a.p673d0.AbstractC12505c0
    /* renamed from: c */
    public void mo22928c(int i, String str, int i2, int i3, long j, FilterMatch filterMatch) {
        this.f36523a.mo11835a(new C12503g(new C19852e(), i, str, i2, i3, j, filterMatch, null));
    }

    @Override // p193e.p194a.p673d0.AbstractC12505c0
    /* renamed from: d */
    public void mo22927d(boolean z) {
        this.f36523a.mo11835a(new C12502f(new C19852e(), z, null));
    }

    @Override // p193e.p194a.p673d0.AbstractC12505c0
    /* renamed from: e */
    public void mo22926e() {
        this.f36523a.mo11835a(new C12499c(new C19852e(), null));
    }

    @Override // p193e.p194a.p673d0.AbstractC12505c0
    public void onDestroy() {
        this.f36523a.mo11835a(new C12501e(new C19852e(), null));
    }
}
