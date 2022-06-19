package p193e.p194a.p682e.p684b.p686b;

import com.truecaller.C2752R;
import com.truecaller.insights.workers.InsightsReSyncWorker;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p235g1.AbstractC6254b;
import q3.a.i0;
import q3.a.j0;
import s1.u.s;
import s1.u.t;
import s1.u.u;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.e.b.b.f */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/b/f.class */
public final class C12884f extends AbstractC20574a<AbstractC12882d> implements AbstractC12881c {

    /* renamed from: d */
    public List<String> f37446d = s.a;

    /* renamed from: e */
    public final AbstractC6392i0 f37447e;

    /* renamed from: f */
    public final AbstractC6254b f37448f;

    /* renamed from: g */
    public final f f37449g;

    /* renamed from: h */
    public final f f37450h;

    /* renamed from: i */
    public final AbstractC19321u f37451i;

    /* renamed from: j */
    public final C20592g f37452j;

    @e(c = "com.truecaller.ui.settings.dataStorage.DataStorageSettingsPresenter$loadLanguages$1", f = "DataStorageSettingsPresenter.kt", l = {63}, m = "invokeSuspend")
    /* renamed from: e.a.e.b.b.f$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/b/f$a.class */
    public static final class C12885a extends i implements p<i0, d<? super s1.s>, Object> {

        /* renamed from: e */
        public Object f37453e;

        /* renamed from: f */
        public int f37454f;

        @e(c = "com.truecaller.ui.settings.dataStorage.DataStorageSettingsPresenter$loadLanguages$1$1", f = "DataStorageSettingsPresenter.kt", l = {64}, m = "invokeSuspend")
        /* renamed from: e.a.e.b.b.f$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/e/b/b/f$a$a.class */
        public static final class C12886a extends i implements p<i0, d<? super List<? extends String>>, Object> {

            /* renamed from: e */
            public int f37456e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C12886a(d dVar) {
                super(2, dVar);
                C12885a.this = r5;
            }

            /* renamed from: i */
            public final d<s1.s> m22482i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C12886a(dVar);
            }

            /* renamed from: k */
            public final Object m22481k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                return new C12886a(dVar).m22480s(s1.s.a);
            }

            /* renamed from: s */
            public final Object m22480s(Object obj) {
                a aVar = a.a;
                int i = this.f37456e;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    AbstractC6254b abstractC6254b = C12884f.this.f37448f;
                    this.f37456e = 1;
                    Object mo31544e = abstractC6254b.mo31544e(this);
                    obj = mo31544e;
                    if (mo31544e == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C25225a.m3932a3(obj);
                }
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : (Iterable) obj) {
                    if (!Boolean.valueOf(l.a((String) obj2, "en")).booleanValue()) {
                        arrayList.add(obj2);
                    }
                }
                return arrayList;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12885a(d dVar) {
            super(2, dVar);
            C12884f.this = r5;
        }

        /* renamed from: i */
        public final d<s1.s> m22485i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12885a(dVar);
        }

        /* renamed from: k */
        public final Object m22484k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12885a(dVar).m22483s(s1.s.a);
        }

        /* renamed from: s */
        public final Object m22483s(Object obj) {
            Object obj2;
            C12884f c12884f;
            a aVar = a.a;
            int i = this.f37454f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C12884f c12884f2 = C12884f.this;
                f fVar = c12884f2.f37450h;
                C12886a c12886a = new C12886a(null);
                this.f37453e = c12884f2;
                this.f37454f = 1;
                obj2 = s1.a.a.a.v0.f.d.a4(fVar, c12886a, this);
                if (obj2 == aVar) {
                    return aVar;
                }
                c12884f = c12884f2;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                c12884f = (C12884f) this.f37453e;
                C25225a.m3932a3(obj);
                obj2 = obj;
            }
            c12884f.f37446d = (List) obj2;
            AbstractC12882d abstractC12882d = (AbstractC12882d) C12884f.this.f57683a;
            if (abstractC12882d != null) {
                abstractC12882d.mo22503A9();
            }
            C12884f c12884f3 = C12884f.this;
            AbstractC12882d abstractC12882d2 = (AbstractC12882d) c12884f3.f57683a;
            if (abstractC12882d2 != null) {
                abstractC12882d2.mo22495ks(!((ArrayList) c12884f3.m22491Ij()).isEmpty());
            }
            return s1.s.a;
        }
    }

    /* renamed from: e.a.e.b.b.f$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/b/f$b.class */
    public static final class C12887b extends m implements s1.z.b.l<Boolean, s1.s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12887b() {
            super(1);
            C12884f.this = r4;
        }

        /* renamed from: d */
        public Object m22479d(Object obj) {
            if (((Boolean) obj).booleanValue()) {
                InsightsReSyncWorker.C4131a.m35138c(InsightsReSyncWorker.f12965g, "re_run_context_translations", true, false, 4);
                AbstractC12882d abstractC12882d = (AbstractC12882d) C12884f.this.f57683a;
                if (abstractC12882d != null) {
                    abstractC12882d.mo22499a(C2752R.string.ConversationDownloadCompleted);
                }
                C12884f.this.mo22490Q8();
            }
            return s1.s.a;
        }
    }

    /* renamed from: e.a.e.b.b.f$c */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/b/f$c.class */
    public static final class C12888c extends m implements s1.z.b.a<s1.s> {

        /* renamed from: c */
        public final /* synthetic */ String f37460c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12888c(String str) {
            super(0);
            C12884f.this = r4;
            this.f37460c = str;
        }

        public Object invoke() {
            C12884f c12884f = C12884f.this;
            c12884f.f37448f.mo31540i(this.f37460c, new C12883e(c12884f));
            return s1.s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C12884f(AbstractC6392i0 abstractC6392i0, AbstractC6254b abstractC6254b, @Named("UI") f fVar, @Named("IO") f fVar2, AbstractC19321u abstractC19321u, C20592g c20592g) {
        super(fVar);
        l.e(abstractC6392i0, "messagingSettings");
        l.e(abstractC6254b, "translator");
        l.e(fVar, "uiContext");
        l.e(fVar2, "ioContext");
        l.e(abstractC19321u, "networkUtil");
        l.e(c20592g, "featuresRegistry");
        this.f37447e = abstractC6392i0;
        this.f37448f = abstractC6254b;
        this.f37449g = fVar;
        this.f37450h = fVar2;
        this.f37451i = abstractC19321u;
        this.f37452j = c20592g;
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12881c
    /* renamed from: F8 */
    public void mo22493F8(String str, boolean z) {
        l.e(str, "languageCode");
        if (!z && !this.f37451i.mo13430c()) {
            AbstractC12882d abstractC12882d = (AbstractC12882d) this.f57683a;
            if (abstractC12882d != null) {
                abstractC12882d.mo22499a(C2752R.string.ConversationDownloadConnectToWiFi);
            }
        } else if (!z || this.f37451i.mo13429d()) {
            AbstractC12882d abstractC12882d2 = (AbstractC12882d) this.f57683a;
            if (abstractC12882d2 != null) {
                abstractC12882d2.mo22499a(C2752R.string.ConversationDownloadStarted);
            }
        } else {
            AbstractC12882d abstractC12882d3 = (AbstractC12882d) this.f57683a;
            if (abstractC12882d3 != null) {
                abstractC12882d3.mo22499a(C2752R.string.ConversationDownloadWillStartLater);
            }
        }
        this.f37448f.mo31539j(str, z, !l.a(this.f37447e.mo31051j2(), "wifiOrMobile"), new C12887b());
        AbstractC12882d abstractC12882d4 = (AbstractC12882d) this.f57683a;
        if (abstractC12882d4 != null) {
            String mo31051j2 = this.f37447e.mo31051j2();
            l.d(mo31051j2, "messagingSettings.autoDownloadTranslations");
            abstractC12882d4.mo22494nf(mo31051j2);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12881c
    /* renamed from: Gg */
    public void mo22492Gg(String str) {
        l.e(str, "languageCode");
        AbstractC12882d abstractC12882d = (AbstractC12882d) this.f57683a;
        if (abstractC12882d != null) {
            abstractC12882d.mo22501E9(str);
        }
    }

    /* renamed from: Ij */
    public final List<String> m22491Ij() {
        List<String> mo31541h = this.f37448f.mo31541h();
        ArrayList arrayList = new ArrayList();
        for (Object obj : mo31541h) {
            String str = (String) obj;
            if (!(this.f37446d.contains(str) || l.a(str, "en"))) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12881c
    /* renamed from: Q8 */
    public void mo22490Q8() {
        s1.a.a.a.v0.f.d.w2(this, this.f37449g, (j0) null, new C12885a(null), 2, (Object) null);
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12881c
    /* renamed from: Wh */
    public void mo22489Wh(String str) {
        l.e(str, "value");
        this.f37447e.mo31058i1(str);
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12881c
    /* renamed from: X9 */
    public void mo22488X9(String str) {
        l.e(str, "value");
        this.f37447e.mo31232B0(str);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.e.b.b.d] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC12882d abstractC12882d) {
        AbstractC12882d abstractC12882d2 = abstractC12882d;
        l.e(abstractC12882d2, "presenterView");
        this.f57683a = abstractC12882d2;
        String mo30993t2 = this.f37447e.mo30993t2();
        l.d(mo30993t2, "messagingSettings.autoDownloadMedia");
        abstractC12882d2.mo22502BA(mo30993t2);
        AbstractC12882d abstractC12882d3 = (AbstractC12882d) this.f57683a;
        if (abstractC12882d3 != null) {
            C20592g c20592g = this.f37452j;
            abstractC12882d3.mo22498b8(c20592g.f57821R5.m10941a(c20592g, C20592g.f57695p6[361]).isEnabled());
        }
        AbstractC12882d abstractC12882d4 = (AbstractC12882d) this.f57683a;
        if (abstractC12882d4 != null) {
            String mo31051j2 = this.f37447e.mo31051j2();
            l.d(mo31051j2, "messagingSettings.autoDownloadTranslations");
            abstractC12882d4.mo22494nf(mo31051j2);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12890h
    /* renamed from: e1 */
    public List<String> mo22475e1() {
        return this.f37446d;
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12890h
    /* renamed from: f1 */
    public Set<String> mo22474f1() {
        return u.a;
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12890h
    /* renamed from: if */
    public Map<String, Long> mo22473if() {
        return t.a;
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12889g
    /* renamed from: k6 */
    public boolean mo22478k6(String str) {
        l.e(str, "languageCode");
        return false;
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12889g
    /* renamed from: p3 */
    public boolean mo22477p3(String str) {
        l.e(str, "languageCode");
        return false;
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12881c
    /* renamed from: u7 */
    public void mo22487u7() {
        AbstractC12882d abstractC12882d = (AbstractC12882d) this.f57683a;
        if (abstractC12882d != null) {
            abstractC12882d.mo22500Ha(m22491Ij());
        }
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12889g
    /* renamed from: w5 */
    public boolean mo22476w5(String str) {
        l.e(str, "languageCode");
        AbstractC12882d abstractC12882d = (AbstractC12882d) this.f57683a;
        if (abstractC12882d != null) {
            abstractC12882d.mo22496fi(this.f37448f.mo31547b(str), new C12888c(str));
            return true;
        }
        return true;
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12881c
    /* renamed from: y4 */
    public void mo22486y4() {
        AbstractC12882d abstractC12882d = (AbstractC12882d) this.f57683a;
        if (abstractC12882d != null) {
            abstractC12882d.mo22497do();
        }
    }
}
