package p193e.p194a.p679d5;

import com.truecaller.startup_dialogs.StartupDialogDismissReason;
import com.truecaller.startup_dialogs.StartupDialogType;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import n3.b.a.h;
import n3.r.a.k;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1114o5.AbstractC19128x1;
import p193e.p194a.p679d5.p681h.C12638a;
import p193e.p194a.p679d5.p681h.C12641b;
import p193e.p194a.p679d5.p681h.C12643d;
import p193e.p194a.p679d5.p681h.C12645e;
import p193e.p194a.p679d5.p681h.C12646f;
import p193e.p194a.p679d5.p681h.C12647g;
import p193e.p194a.p679d5.p681h.C12648h;
import p193e.p194a.p679d5.p681h.C12651i;
import p193e.p194a.p679d5.p681h.C12652j;
import p193e.p194a.p679d5.p681h.C12653k;
import p193e.p194a.p679d5.p681h.C12656m;
import p193e.p194a.p679d5.p681h.C12659o;
import p193e.p194a.p679d5.p681h.C12666s;
import p193e.p194a.p679d5.p681h.C12668u;
import q3.a.b3.c;
import q3.a.b3.g;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.e0.c0;
import s1.e0.x;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.j;
/* renamed from: e.a.d5.d */
/* loaded from: classes12-dex2jar.jar:e/a/d5/d.class */
public final class C12609d implements AbstractC12608c {

    /* renamed from: a */
    public final List<a<? extends AbstractC12607b>> f36739a;

    /* renamed from: b */
    public final List<a<? extends AbstractC12607b>> f36740b;

    /* renamed from: c */
    public h f36741c;

    /* renamed from: d */
    public final c f36742d = g.a(false, 1);

    /* renamed from: e */
    public final f f36743e;

    /* renamed from: f */
    public final a<C12659o> f36744f;

    /* renamed from: g */
    public final AbstractC19128x1 f36745g;

    /* renamed from: e.a.d5.d$a */
    /* loaded from: classes12-dex2jar.jar:e/a/d5/d$a.class */
    public static final /* synthetic */ class C12610a extends j implements l<a<? extends AbstractC12607b>, AbstractC12607b> {

        /* renamed from: j */
        public static final C12610a f36746j = new C12610a();

        public C12610a() {
            super(1, a.class, "get", "get()Ljava/lang/Object;", 0);
        }

        /* renamed from: d */
        public Object m22825d(Object obj) {
            a aVar = (a) obj;
            s1.z.c.l.e(aVar, "p1");
            return (AbstractC12607b) aVar.get();
        }
    }

    /* renamed from: e.a.d5.d$b */
    /* loaded from: classes12-dex2jar.jar:e/a/d5/d$b.class */
    public static final /* synthetic */ class C12611b extends j implements l<a<? extends AbstractC12607b>, AbstractC12607b> {

        /* renamed from: j */
        public static final C12611b f36747j = new C12611b();

        public C12611b() {
            super(1, a.class, "get", "get()Ljava/lang/Object;", 0);
        }

        /* renamed from: d */
        public Object m22824d(Object obj) {
            a aVar = (a) obj;
            s1.z.c.l.e(aVar, "p1");
            return (AbstractC12607b) aVar.get();
        }
    }

    @e(c = "com.truecaller.startup_dialogs.StartupDialogRouterImpl$showIfNeeded$2", f = "StartupDialogRouter.kt", l = {187, 124}, m = "invokeSuspend")
    /* renamed from: e.a.d5.d$c */
    /* loaded from: classes12-dex2jar.jar:e/a/d5/d$c.class */
    public static final class C12612c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f36748e;

        /* renamed from: f */
        public Object f36749f;

        /* renamed from: g */
        public Object f36750g;

        /* renamed from: h */
        public Object f36751h;

        /* renamed from: i */
        public int f36752i;

        /* renamed from: k */
        public final /* synthetic */ List f36754k;

        /* renamed from: l */
        public final /* synthetic */ boolean f36755l;

        /* renamed from: m */
        public final /* synthetic */ p f36756m;

        /* renamed from: e.a.d5.d$c$a */
        /* loaded from: classes12-dex2jar.jar:e/a/d5/d$c$a.class */
        public static final /* synthetic */ class C12613a extends j implements l<a<? extends AbstractC12607b>, AbstractC12607b> {

            /* renamed from: j */
            public static final C12613a f36757j = new C12613a();

            public C12613a() {
                super(1, a.class, "get", "get()Ljava/lang/Object;", 0);
            }

            /* renamed from: d */
            public Object m22820d(Object obj) {
                a aVar = (a) obj;
                s1.z.c.l.e(aVar, "p1");
                return (AbstractC12607b) aVar.get();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12612c(List list, boolean z, p pVar, d dVar) {
            super(2, dVar);
            C12609d.this = r5;
            this.f36754k = list;
            this.f36755l = z;
            this.f36756m = pVar;
        }

        /* renamed from: i */
        public final d<s> m22823i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C12612c(this.f36754k, this.f36755l, this.f36756m, dVar);
        }

        /* renamed from: k */
        public final Object m22822k(Object obj, Object obj2) {
            return m22823i(obj, (d) obj2).m22821s(s.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:144:0x039d, code lost:
            if (r15 != null) goto L162;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x0195, code lost:
            if (r0.mo22763g() != false) goto L62;
         */
        /* JADX WARN: Removed duplicated region for block: B:50:0x014d  */
        /* JADX WARN: Removed duplicated region for block: B:83:0x0211  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x0221  */
        /* JADX WARN: Removed duplicated region for block: B:90:0x0271  */
        /* JADX WARN: Removed duplicated region for block: B:91:0x0281  */
        /* JADX WARN: Removed duplicated region for block: B:93:0x0298  */
        /* JADX WARN: Removed duplicated region for block: B:97:0x02ad  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x01de -> B:80:0x0203). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:86:0x023e -> B:87:0x025e). Please submit an issue!!! */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m22821s(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 1063
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p679d5.C12609d.C12612c.m22821s(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: e.a.d5.d$d */
    /* loaded from: classes12-dex2jar.jar:e/a/d5/d$d.class */
    public static final /* synthetic */ class C12614d extends j implements p<AbstractC12607b, k, Boolean> {

        /* renamed from: j */
        public static final C12614d f36758j = new C12614d();

        public C12614d() {
            super(2, C12616f.class, "nullCurrentFragOrTypeMatch", "nullCurrentFragOrTypeMatch(Lcom/truecaller/startup_dialogs/StartupDialogResolver;Landroidx/fragment/app/DialogFragment;)Z", 1);
        }

        /* renamed from: k */
        public Object m22819k(Object obj, Object obj2) {
            AbstractC12607b abstractC12607b = (AbstractC12607b) obj;
            k kVar = (k) obj2;
            s1.z.c.l.e(abstractC12607b, "p1");
            return Boolean.valueOf(kVar == null || C12616f.m22817a(kVar) == abstractC12607b.mo22768b());
        }
    }

    @Inject
    public C12609d(@Named("UI") f fVar, a<C12646f> aVar, a<C12668u> aVar2, a<C12666s> aVar3, a<C12647g> aVar4, a<C12643d> aVar5, a<C12656m> aVar6, a<C12651i> aVar7, a<C12638a> aVar8, a<C12653k> aVar9, a<C12652j> aVar10, a<C12641b> aVar11, a<C12645e> aVar12, a<C12648h> aVar13, a<C12659o> aVar14, AbstractC19128x1 abstractC19128x1) {
        s1.z.c.l.e(fVar, "uiContext");
        s1.z.c.l.e(aVar, "legalRegionCDialogResolver");
        s1.z.c.l.e(aVar2, "whatsNewDialogResolver");
        s1.z.c.l.e(aVar3, "softwareUpdateDialogResolver");
        s1.z.c.l.e(aVar4, "mdauDialogResolver");
        s1.z.c.l.e(aVar5, "fillProfileDialogResolver");
        s1.z.c.l.e(aVar6, "premiumPopupDialogResolver");
        s1.z.c.l.e(aVar7, "onboardingDialogResolver");
        s1.z.c.l.e(aVar8, "backupOnboardingResolver");
        s1.z.c.l.e(aVar9, "pinDialerShortcutDialogResolver");
        s1.z.c.l.e(aVar10, "onboardingPremiumPopupDialogResolver");
        s1.z.c.l.e(aVar11, "defaultDialerPromoResolver");
        s1.z.c.l.e(aVar12, "inCallUIPromoResolver");
        s1.z.c.l.e(aVar13, "numberSearchCallDialogResolver");
        s1.z.c.l.e(aVar14, "referralDialogResolver");
        s1.z.c.l.e(abstractC19128x1, "usageChecker");
        this.f36743e = fVar;
        this.f36744f = aVar14;
        this.f36745g = abstractC19128x1;
        this.f36739a = s1.u.i.T(new a[]{aVar, aVar7, aVar8, aVar12, aVar10, aVar9, aVar4, aVar3, aVar2, aVar5, aVar6, aVar11, aVar14});
        this.f36740b = C25225a.m3962T1(aVar13);
    }

    /* renamed from: f */
    public static /* synthetic */ void m22827f(C12609d c12609d, List list, boolean z, p pVar, int i) {
        p<? super AbstractC12607b, ? super k, Boolean> pVar2 = null;
        List<? extends a<? extends AbstractC12607b>> list2 = (i & 1) != 0 ? c12609d.f36739a : null;
        if ((i & 4) != 0) {
            pVar2 = C12615e.f36759j;
        }
        c12609d.m22828e(list2, z, pVar2);
    }

    @Override // p193e.p194a.p679d5.AbstractC12608c
    /* renamed from: a */
    public void mo22832a(StartupDialogType startupDialogType, StartupDialogDismissReason startupDialogDismissReason) {
        Object obj;
        s1.z.c.l.e(startupDialogType, "type");
        c0 k = x.k(s1.u.i.h(this.f36739a), C12611b.f36747j);
        Iterator it = k.a.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            Object d = k.b.d(it.next());
            if (((AbstractC12607b) d).mo22768b() == startupDialogType) {
                obj = d;
                break;
            }
        }
        AbstractC12607b abstractC12607b = (AbstractC12607b) obj;
        if (abstractC12607b != null) {
            abstractC12607b.mo22767c(startupDialogDismissReason);
            if (!abstractC12607b.mo22762h(startupDialogDismissReason)) {
                m22827f(this, null, false, null, 5);
                return;
            }
            h hVar = this.f36741c;
            if (hVar == null) {
                return;
            }
            hVar.finish();
        }
    }

    @Override // p193e.p194a.p679d5.AbstractC12608c
    /* renamed from: b */
    public void mo22831b() {
        m22827f(this, null, true, null, 5);
    }

    @Override // p193e.p194a.p679d5.AbstractC12608c
    /* renamed from: c */
    public void mo22830c(h hVar) {
        s1.z.c.l.e(hVar, "activity");
        this.f36741c = hVar;
        ((C12659o) this.f36744f.get()).f36895j = hVar;
    }

    @Override // p193e.p194a.p679d5.AbstractC12608c
    /* renamed from: d */
    public void mo22829d() {
        m22828e(this.f36740b, true, C12614d.f36758j);
    }

    /* renamed from: e */
    public final void m22828e(List<? extends a<? extends AbstractC12607b>> list, boolean z, p<? super AbstractC12607b, ? super k, Boolean> pVar) {
        s1.a.a.a.v0.f.d.w2(h1.a, this.f36743e, (j0) null, new C12612c(list, z, pVar, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p679d5.AbstractC12608c
    /* renamed from: q */
    public boolean mo22826q(int i) {
        boolean z;
        Object obj;
        c0 k = x.k(s1.u.i.h(this.f36739a), C12610a.f36746j);
        Iterator it = k.a.iterator();
        while (true) {
            z = true;
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = k.b.d(it.next());
            if (((AbstractC12607b) obj).mo22768b().requestCode() == i) {
                break;
            }
        }
        AbstractC12607b abstractC12607b = (AbstractC12607b) obj;
        if (abstractC12607b != null) {
            abstractC12607b.mo22767c(StartupDialogDismissReason.USER_PRESSED_DISMISS_BUTTON);
            m22827f(this, null, false, null, 5);
        } else {
            z = false;
        }
        return z;
    }
}
