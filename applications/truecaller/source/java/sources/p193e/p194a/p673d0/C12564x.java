package p193e.p194a.p673d0;

import com.truecaller.aftercall.PromotionType;
import com.truecaller.blocking.FilterMatch;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.settings.CallingSettings;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
import p193e.p194a.p1187r2.C19895z;
/* renamed from: e.a.d0.x */
/* loaded from: classes6-dex2jar.jar:e/a/d0/x.class */
public final class C12564x implements AbstractC12574y {

    /* renamed from: a */
    public final AbstractC19890w f36691a;

    /* renamed from: e.a.d0.x$b */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/x$b.class */
    public static class C12566b extends AbstractC19889v<AbstractC12574y, Void> {
        public C12566b(C19852e c19852e, C12565a c12565a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC12574y) obj).mo22862h();
            return null;
        }

        public String toString() {
            return ".closeAfterCallScreen()";
        }
    }

    /* renamed from: e.a.d0.x$c */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/x$c.class */
    public static class C12567c extends AbstractC19889v<AbstractC12574y, Void> {
        public C12567c(C19852e c19852e, C12565a c12565a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC12574y) obj).mo22864f();
            return null;
        }

        public String toString() {
            return ".dismissCallerIdUI()";
        }
    }

    /* renamed from: e.a.d0.x$d */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/x$d.class */
    public static class C12568d extends AbstractC19889v<AbstractC12574y, Boolean> {
        public C12568d(C19852e c19852e, C12565a c12565a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo22863g = ((AbstractC12574y) obj).mo22863g();
            m11836c(mo22863g);
            return mo22863g;
        }

        public String toString() {
            return ".isCallerIdShown()";
        }
    }

    /* renamed from: e.a.d0.x$e */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/x$e.class */
    public static class C12569e extends AbstractC19889v<AbstractC12574y, Void> {

        /* renamed from: b */
        public final PromotionType f36692b;

        /* renamed from: c */
        public final HistoryEvent f36693c;

        /* renamed from: d */
        public final CallingSettings f36694d;

        public C12569e(C19852e c19852e, PromotionType promotionType, HistoryEvent historyEvent, CallingSettings callingSettings, C12565a c12565a) {
            super(c19852e);
            this.f36692b = promotionType;
            this.f36693c = historyEvent;
            this.f36694d = callingSettings;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC12574y) obj).mo22868a(this.f36692b, this.f36693c, this.f36694d);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".showAfterCallPromo(");
            m8728C.append(AbstractC19889v.m11837b(this.f36692b, 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f36693c, 1));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f36694d, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.d0.x$f */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/x$f.class */
    public static class C12570f extends AbstractC19889v<AbstractC12574y, Void> {

        /* renamed from: b */
        public final HistoryEvent f36695b;

        /* renamed from: c */
        public final FilterMatch f36696c;

        public C12570f(C19852e c19852e, HistoryEvent historyEvent, FilterMatch filterMatch, C12565a c12565a) {
            super(c19852e);
            this.f36695b = historyEvent;
            this.f36696c = filterMatch;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC12574y) obj).mo22866c(this.f36695b, this.f36696c);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".showRegularAfterCallScreen(");
            m8728C.append(AbstractC19889v.m11837b(this.f36695b, 1));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f36696c, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.d0.x$g */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/x$g.class */
    public static class C12571g extends AbstractC19889v<AbstractC12574y, Void> {
        public C12571g(C19852e c19852e, C12565a c12565a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC12574y) obj).mo22867b();
            return null;
        }

        public String toString() {
            return ".stopService()";
        }
    }

    /* renamed from: e.a.d0.x$h */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/x$h.class */
    public static class C12572h extends AbstractC19889v<AbstractC12574y, Void> {

        /* renamed from: b */
        public final C12560v f36697b;

        /* renamed from: c */
        public final boolean f36698c;

        public C12572h(C19852e c19852e, C12560v c12560v, boolean z, C12565a c12565a) {
            super(c19852e);
            this.f36697b = c12560v;
            this.f36698c = z;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC12574y) obj).mo22865e(this.f36697b, this.f36698c);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".updateCallerId(");
            m8728C.append(AbstractC19889v.m11837b(this.f36697b, 1));
            m8728C.append(",");
            return C22128a.m8566u(this.f36698c, 2, m8728C, ")");
        }
    }

    public C12564x(AbstractC19890w abstractC19890w) {
        this.f36691a = abstractC19890w;
    }

    @Override // p193e.p194a.p673d0.AbstractC12574y
    /* renamed from: a */
    public void mo22868a(PromotionType promotionType, HistoryEvent historyEvent, CallingSettings callingSettings) {
        this.f36691a.mo11835a(new C12569e(new C19852e(), promotionType, historyEvent, callingSettings, null));
    }

    @Override // p193e.p194a.p673d0.AbstractC12574y
    /* renamed from: b */
    public void mo22867b() {
        this.f36691a.mo11835a(new C12571g(new C19852e(), null));
    }

    @Override // p193e.p194a.p673d0.AbstractC12574y
    /* renamed from: c */
    public void mo22866c(HistoryEvent historyEvent, FilterMatch filterMatch) {
        this.f36691a.mo11835a(new C12570f(new C19852e(), historyEvent, filterMatch, null));
    }

    @Override // p193e.p194a.p673d0.AbstractC12574y
    /* renamed from: e */
    public void mo22865e(C12560v c12560v, boolean z) {
        this.f36691a.mo11835a(new C12572h(new C19852e(), c12560v, z, null));
    }

    @Override // p193e.p194a.p673d0.AbstractC12574y
    /* renamed from: f */
    public void mo22864f() {
        this.f36691a.mo11835a(new C12567c(new C19852e(), null));
    }

    @Override // p193e.p194a.p673d0.AbstractC12574y
    /* renamed from: g */
    public AbstractC19891x<Boolean> mo22863g() {
        return new C19895z(this.f36691a, new C12568d(new C19852e(), null));
    }

    @Override // p193e.p194a.p673d0.AbstractC12574y
    /* renamed from: h */
    public void mo22862h() {
        this.f36691a.mo11835a(new C12566b(new C19852e(), null));
    }
}
