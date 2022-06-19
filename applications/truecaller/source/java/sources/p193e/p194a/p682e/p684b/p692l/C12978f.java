package p193e.p194a.p682e.p684b.p692l;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p372b0.p417k.C8497f;
import p193e.p194a.p682e.p684b.AbstractC12919g;
import p193e.p194a.p937j4.p939b.p941b.C15576b;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
/* renamed from: e.a.e.b.l.f */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/l/f.class */
public final class C12978f extends AbstractC20574a<AbstractC12977e> implements AbstractC12976d {

    /* renamed from: d */
    public String f37664d;

    /* renamed from: e */
    public final f f37665e;

    /* renamed from: f */
    public final f f37666f;

    /* renamed from: g */
    public final C8497f f37667g;

    /* renamed from: h */
    public final AbstractC19223c0 f37668h;

    /* renamed from: i */
    public final AbstractC12919g f37669i;

    /* renamed from: j */
    public final AbstractC12970a f37670j;

    @e(c = "com.truecaller.ui.settings.language.LanguageSettingsPresenter", f = "LanguageSettingsPresenter.kt", l = {43}, m = "getDefaultLanguage")
    /* renamed from: e.a.e.b.l.f$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/l/f$a.class */
    public static final class C12979a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f37671d;

        /* renamed from: e */
        public int f37672e;

        /* renamed from: g */
        public Object f37674g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12979a(d dVar) {
            super(dVar);
            C12978f.this = r4;
        }

        /* renamed from: s */
        public final Object m22298s(Object obj) {
            this.f37671d = obj;
            this.f37672e |= Integer.MIN_VALUE;
            return C12978f.this.m22303Ij(null, this);
        }
    }

    @e(c = "com.truecaller.ui.settings.language.LanguageSettingsPresenter", f = "LanguageSettingsPresenter.kt", l = {53, 57, 65, 71}, m = "initAppLanguage")
    /* renamed from: e.a.e.b.l.f$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/l/f$b.class */
    public static final class C12980b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f37675d;

        /* renamed from: e */
        public int f37676e;

        /* renamed from: g */
        public Object f37678g;

        /* renamed from: h */
        public Object f37679h;

        /* renamed from: i */
        public Object f37680i;

        /* renamed from: j */
        public Object f37681j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12980b(d dVar) {
            super(dVar);
            C12978f.this = r4;
        }

        /* renamed from: s */
        public final Object m22297s(Object obj) {
            this.f37675d = obj;
            this.f37676e |= Integer.MIN_VALUE;
            return C12978f.this.m22302Jj(this);
        }
    }

    @e(c = "com.truecaller.ui.settings.language.LanguageSettingsPresenter$initAppLanguage$4", f = "LanguageSettingsPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.e.b.l.f$c */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/l/f$c.class */
    public static final class C12981c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ c0 f37683f;

        /* renamed from: g */
        public final /* synthetic */ c0 f37684g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12981c(c0 c0Var, c0 c0Var2, d dVar) {
            super(2, dVar);
            C12978f.this = r5;
            this.f37683f = c0Var;
            this.f37684g = c0Var2;
        }

        /* renamed from: i */
        public final d<s> m22296i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12981c(this.f37683f, this.f37684g, dVar);
        }

        /* renamed from: k */
        public final Object m22295k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C12978f c12978f = C12978f.this;
            c0 c0Var = this.f37683f;
            c0 c0Var2 = this.f37684g;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            AbstractC12977e abstractC12977e = (AbstractC12977e) c12978f.f57683a;
            if (abstractC12977e != null) {
                abstractC12977e.mo22309Lf((List) c0Var.a, (C15576b) c0Var2.a);
            } else {
                sVar = null;
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m22294s(Object obj) {
            s sVar;
            C25225a.m3932a3(obj);
            AbstractC12977e abstractC12977e = (AbstractC12977e) C12978f.this.f57683a;
            if (abstractC12977e != null) {
                abstractC12977e.mo22309Lf((List) this.f37683f.a, (C15576b) this.f37684g.a);
                sVar = s.a;
            } else {
                sVar = null;
            }
            return sVar;
        }
    }

    @e(c = "com.truecaller.ui.settings.language.LanguageSettingsPresenter", f = "LanguageSettingsPresenter.kt", l = {78, 82, 89, 91}, m = "initT9Language")
    /* renamed from: e.a.e.b.l.f$d */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/l/f$d.class */
    public static final class C12982d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f37685d;

        /* renamed from: e */
        public int f37686e;

        /* renamed from: g */
        public Object f37688g;

        /* renamed from: h */
        public Object f37689h;

        /* renamed from: i */
        public Object f37690i;

        /* renamed from: j */
        public Object f37691j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12982d(d dVar) {
            super(dVar);
            C12978f.this = r4;
        }

        /* renamed from: s */
        public final Object m22293s(Object obj) {
            this.f37685d = obj;
            this.f37686e |= Integer.MIN_VALUE;
            return C12978f.this.m22301Kj(this);
        }
    }

    @e(c = "com.truecaller.ui.settings.language.LanguageSettingsPresenter$initT9Language$3", f = "LanguageSettingsPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.e.b.l.f$e */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/l/f$e.class */
    public static final class C12983e extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ c0 f37693f;

        /* renamed from: g */
        public final /* synthetic */ c0 f37694g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12983e(c0 c0Var, c0 c0Var2, d dVar) {
            super(2, dVar);
            C12978f.this = r5;
            this.f37693f = c0Var;
            this.f37694g = c0Var2;
        }

        /* renamed from: i */
        public final d<s> m22292i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12983e(this.f37693f, this.f37694g, dVar);
        }

        /* renamed from: k */
        public final Object m22291k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C12978f c12978f = C12978f.this;
            c0 c0Var = this.f37693f;
            c0 c0Var2 = this.f37694g;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            AbstractC12977e abstractC12977e = (AbstractC12977e) c12978f.f57683a;
            if (abstractC12977e != null) {
                abstractC12977e.mo22307Rp((List) c0Var.a, (C15576b) c0Var2.a);
            } else {
                sVar = null;
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m22290s(Object obj) {
            s sVar;
            C25225a.m3932a3(obj);
            AbstractC12977e abstractC12977e = (AbstractC12977e) C12978f.this.f57683a;
            if (abstractC12977e != null) {
                abstractC12977e.mo22307Rp((List) this.f37693f.a, (C15576b) this.f37694g.a);
                sVar = s.a;
            } else {
                sVar = null;
            }
            return sVar;
        }
    }

    @e(c = "com.truecaller.ui.settings.language.LanguageSettingsPresenter$setAppLanguage$1", f = "LanguageSettingsPresenter.kt", l = {99, 108}, m = "invokeSuspend")
    /* renamed from: e.a.e.b.l.f$f */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/l/f$f.class */
    public static final class C12984f extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f37695e;

        /* renamed from: f */
        public int f37696f;

        /* renamed from: h */
        public final /* synthetic */ C15576b f37698h;

        /* renamed from: i */
        public final /* synthetic */ Context f37699i;

        @e(c = "com.truecaller.ui.settings.language.LanguageSettingsPresenter$setAppLanguage$1$1", f = "LanguageSettingsPresenter.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.e.b.l.f$f$a */
        /* loaded from: classes15-dex2jar.jar:e/a/e/b/l/f$f$a.class */
        public static final class C12985a extends i implements p<i0, d<? super s>, Object> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C12985a(d dVar) {
                super(2, dVar);
                C12984f.this = r5;
            }

            /* renamed from: i */
            public final d<s> m22286i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C12985a(dVar);
            }

            /* renamed from: k */
            public final Object m22285k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C12984f c12984f = C12984f.this;
                dVar.getContext();
                s sVar = s.a;
                C25225a.m3932a3(sVar);
                AbstractC12977e abstractC12977e = (AbstractC12977e) C12978f.this.f57683a;
                if (abstractC12977e != null) {
                    abstractC12977e.mo22306Sj();
                }
                return sVar;
            }

            /* renamed from: s */
            public final Object m22284s(Object obj) {
                C25225a.m3932a3(obj);
                AbstractC12977e abstractC12977e = (AbstractC12977e) C12978f.this.f57683a;
                if (abstractC12977e != null) {
                    abstractC12977e.mo22306Sj();
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12984f(C15576b c15576b, Context context, d dVar) {
            super(2, dVar);
            C12978f.this = r5;
            this.f37698h = c15576b;
            this.f37699i = context;
        }

        /* renamed from: i */
        public final d<s> m22289i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12984f(this.f37698h, this.f37699i, dVar);
        }

        /* renamed from: k */
        public final Object m22288k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12984f(this.f37698h, this.f37699i, dVar).m22287s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x008b  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0096  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00a1  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00bb  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x011c  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m22287s(java.lang.Object r6) {
            /*
                Method dump skipped, instructions count: 290
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p682e.p684b.p692l.C12978f.C12984f.m22287s(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C12978f(@Named("IO") f fVar, @Named("UI") f fVar2, C8497f c8497f, AbstractC19223c0 abstractC19223c0, AbstractC12919g abstractC12919g, AbstractC12970a abstractC12970a) {
        super(fVar);
        l.e(fVar, "asyncContext");
        l.e(fVar2, "uiContext");
        l.e(c8497f, "languageUtil");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC12919g, "settingsUIPref");
        l.e(abstractC12970a, "languageDaoHelper");
        this.f37665e = fVar;
        this.f37666f = fVar2;
        this.f37667g = c8497f;
        this.f37668h = abstractC19223c0;
        this.f37669i = abstractC12919g;
        this.f37670j = abstractC12970a;
    }

    @Override // p193e.p194a.p682e.p684b.p692l.AbstractC12976d
    /* renamed from: D8 */
    public void mo22305D8(C15576b c15576b) {
        l.e(c15576b, "language");
        String mo22416d1 = this.f37669i.mo22416d1("auto");
        String str = c15576b.f44042j.f26267b;
        if (!l.a(str, mo22416d1)) {
            this.f37664d = str;
        }
    }

    @Override // p193e.p194a.p682e.p684b.p692l.AbstractC12976d
    /* renamed from: G7 */
    public void mo22304G7() {
        String str = this.f37664d;
        if (str != null) {
            this.f37669i.mo22410j1(str);
            this.f37670j.mo22312c(str);
            this.f37664d = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
    /* renamed from: Ij */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m22303Ij(java.util.Locale r8, s1.w.d<? super p193e.p194a.p937j4.p939b.p941b.C15576b> r9) {
        /*
            Method dump skipped, instructions count: 196
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p682e.p684b.p692l.C12978f.m22303Ij(java.util.Locale, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x039c  */
    /* renamed from: Jj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m22302Jj(s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 931
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p682e.p684b.p692l.C12978f.m22302Jj(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0269  */
    /* renamed from: Kj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m22301Kj(s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 624
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p682e.p684b.p692l.C12978f.m22301Kj(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p682e.p684b.p692l.AbstractC12976d
    /* renamed from: La */
    public void mo22300La(Context context, C15576b c15576b) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(c15576b, "language");
        s1.a.a.a.v0.f.d.w2(this, this.f37665e, (j0) null, new C12984f(c15576b, context, null), 2, (Object) null);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.e.b.l.e, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC12977e abstractC12977e) {
        AbstractC12977e abstractC12977e2 = abstractC12977e;
        l.e(abstractC12977e2, "presenterView");
        this.f57683a = abstractC12977e2;
        s1.a.a.a.v0.f.d.w2(this, this.f37665e, (j0) null, new C12986g(this, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p682e.p684b.p692l.AbstractC12976d
    /* renamed from: l1 */
    public void mo22299l1(String str) {
        AbstractC12977e abstractC12977e;
        if (str != null && str.hashCode() == -1863774898 && str.equals("show_lang_selector") && (abstractC12977e = (AbstractC12977e) this.f57683a) != null) {
            abstractC12977e.mo22308Mn();
        }
    }
}
