package p193e.p194a.p437c.p438a.p494m.p497c;

import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.insights.models.categorizerseed.CategorizerSeedServiceModel;
import e.m.e.k;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p494m.p495a.AbstractC9246a;
import p193e.p194a.p437c.p438a.p494m.p495a.C9248b;
import p193e.p194a.p437c.p524b.AbstractC9686e;
import p193e.p194a.p437c.p538g.AbstractC10159f;
import p193e.p194a.p437c.p593s.p594a.AbstractC10680a;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b=\u0010\u001dJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0006\u0010\u0004J)\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00022\b\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u000b\u0010\fR\"\u0010\u0014\u001a\u00020\r8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R(\u0010\u001e\u001a\u00020\u00158\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b\u0016\u0010\u0017\u0012\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u0016\u0010*\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\"\u00102\u001a\u00020+8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R(\u00107\u001a\u00020\u00158\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b3\u0010\u0017\u0012\u0004\b6\u0010\u001d\u001a\u0004\b4\u0010\u0019\"\u0004\b5\u0010\u001bR\u001e\u0010<\u001a\n 9*\u0004\u0018\u000108088\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;¨\u0006>"}, d2 = {"Le/a/c/a/m/c/e;", "Le/a/c/a/m/c/g;", "", "SA", "()Ljava/lang/String;", "PA", "RA", "appVersion", "countryCode", "offsetVersion", "Ls1/s;", "OA", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Le/a/c/s/a/a;", "g", "Le/a/c/s/a/a;", "getCategorizerRestAdapter", "()Le/a/c/s/a/a;", "setCategorizerRestAdapter", "(Le/a/c/s/a/a;)V", "categorizerRestAdapter", "Ls1/w/f;", "d", "Ls1/w/f;", "UA", "()Ls1/w/f;", "setContextUI", "(Ls1/w/f;)V", "getContextUI$annotations", "()V", "contextUI", "Le/a/c/b/e;", "f", "Le/a/c/b/e;", "getEnvironmentHelper", "()Le/a/c/b/e;", "setEnvironmentHelper", "(Le/a/c/b/e;)V", "environmentHelper", "Lq3/a/i0;", "i", "Lq3/a/i0;", "coroutineScope", "Le/a/c/g/f;", "e", "Le/a/c/g/f;", "getCategorizer", "()Le/a/c/g/f;", "setCategorizer", "(Le/a/c/g/f;)V", "categorizer", AbstractC2405c.f7629a, "getContextIO", "setContextIO", "getContextIO$annotations", "contextIO", "Le/m/e/k;", "kotlin.jvm.PlatformType", "h", "Le/m/e/k;", "gson", "<init>", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.m.c.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/e.class */
public final class C9309e extends AbstractC9319g {
    @Inject

    /* renamed from: c */
    public f f28301c;
    @Inject

    /* renamed from: d */
    public f f28302d;
    @Inject

    /* renamed from: e */
    public AbstractC10159f f28303e;
    @Inject

    /* renamed from: f */
    public AbstractC9686e f28304f;
    @Inject

    /* renamed from: g */
    public AbstractC10680a f28305g;

    /* renamed from: h */
    public final k f28306h;

    /* renamed from: i */
    public i0 f28307i;

    @e(c = "com.truecaller.insights.ui.qa.view.InsightsCategorizerSeedFetchFragment$fetchSeedData$1", f = "InsightsCategorizerSeedFetchFragment.kt", l = {51, 58, 60, 64}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.m.c.e$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/e$a.class */
    public static final class C9310a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f28308e;

        /* renamed from: f */
        public Object f28309f;

        /* renamed from: g */
        public int f28310g;

        /* renamed from: i */
        public final /* synthetic */ String f28312i;

        /* renamed from: j */
        public final /* synthetic */ String f28313j;

        /* renamed from: k */
        public final /* synthetic */ String f28314k;

        @e(c = "com.truecaller.insights.ui.qa.view.InsightsCategorizerSeedFetchFragment$fetchSeedData$1$1", f = "InsightsCategorizerSeedFetchFragment.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.c.a.m.c.e$a$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/e$a$a.class */
        public static final class C9311a extends i implements p<i0, d<? super s>, Object> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C9311a(d dVar) {
                super(2, dVar);
                C9310a.this = r5;
            }

            /* renamed from: i */
            public final d<s> m27723i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C9311a(dVar);
            }

            /* renamed from: k */
            public final Object m27722k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C9310a c9310a = C9310a.this;
                dVar.getContext();
                s sVar = s.a;
                C25225a.m3932a3(sVar);
                C9309e.this.m27696TA("Fetching...");
                return sVar;
            }

            /* renamed from: s */
            public final Object m27721s(Object obj) {
                C25225a.m3932a3(obj);
                C9309e.this.m27696TA("Fetching...");
                return s.a;
            }
        }

        @e(c = "com.truecaller.insights.ui.qa.view.InsightsCategorizerSeedFetchFragment$fetchSeedData$1$2", f = "InsightsCategorizerSeedFetchFragment.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.c.a.m.c.e$a$b */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/e$a$b.class */
        public static final class C9312b extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: f */
            public final /* synthetic */ c0 f28317f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C9312b(c0 c0Var, d dVar) {
                super(2, dVar);
                C9310a.this = r5;
                this.f28317f = c0Var;
            }

            /* renamed from: i */
            public final d<s> m27720i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C9312b(this.f28317f, dVar);
            }

            /* renamed from: k */
            public final Object m27719k(Object obj, Object obj2) {
                s sVar = s.a;
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C9310a c9310a = C9310a.this;
                c0 c0Var = this.f28317f;
                dVar.getContext();
                C25225a.m3932a3(sVar);
                C9309e c9309e = C9309e.this;
                String m = c9309e.f28306h.m((CategorizerSeedServiceModel) c0Var.a);
                l.d(m, "gson.toJson(categorizerSeedData)");
                c9309e.m27696TA(m);
                return sVar;
            }

            /* renamed from: s */
            public final Object m27718s(Object obj) {
                C25225a.m3932a3(obj);
                C9309e c9309e = C9309e.this;
                String m = c9309e.f28306h.m((CategorizerSeedServiceModel) this.f28317f.a);
                l.d(m, "gson.toJson(categorizerSeedData)");
                c9309e.m27696TA(m);
                return s.a;
            }
        }

        @e(c = "com.truecaller.insights.ui.qa.view.InsightsCategorizerSeedFetchFragment$fetchSeedData$1$3", f = "InsightsCategorizerSeedFetchFragment.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.c.a.m.c.e$a$c */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/e$a$c.class */
        public static final class C9313c extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: f */
            public final /* synthetic */ Throwable f28319f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C9313c(Throwable th, d dVar) {
                super(2, dVar);
                C9310a.this = r5;
                this.f28319f = th;
            }

            /* renamed from: i */
            public final d<s> m27717i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C9313c(this.f28319f, dVar);
            }

            /* renamed from: k */
            public final Object m27716k(Object obj, Object obj2) {
                s sVar = s.a;
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C9310a c9310a = C9310a.this;
                Throwable th = this.f28319f;
                dVar.getContext();
                C25225a.m3932a3(sVar);
                C9309e c9309e = C9309e.this;
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                c9309e.m27696TA(message);
                return sVar;
            }

            /* renamed from: s */
            public final Object m27715s(Object obj) {
                C25225a.m3932a3(obj);
                C9309e c9309e = C9309e.this;
                String message = this.f28319f.getMessage();
                if (message == null) {
                    message = "";
                }
                c9309e.m27696TA(message);
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9310a(String str, String str2, String str3, d dVar) {
            super(2, dVar);
            C9309e.this = r5;
            this.f28312i = str;
            this.f28313j = str2;
            this.f28314k = str3;
        }

        /* renamed from: i */
        public final d<s> m27726i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C9310a(this.f28312i, this.f28313j, this.f28314k, dVar);
        }

        /* renamed from: k */
        public final Object m27725k(Object obj, Object obj2) {
            return m27726i(obj, (d) obj2).m27724s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x00ce  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00dc  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00df  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0107  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x0109  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x0149  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m27724s(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 393
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p494m.p497c.C9309e.C9310a.m27724s(java.lang.Object):java.lang.Object");
        }
    }

    public C9309e() {
        e.m.e.l lVar = new e.m.e.l();
        lVar.k = true;
        this.f28306h = lVar.a();
        int i = AbstractC9246a.f28129a;
        AbstractC9246a abstractC9246a = AbstractC9246a.C9247a.f28130a;
        if (abstractC9246a == null) {
            l.l("instance");
            throw null;
        }
        C9248b c9248b = (C9248b) abstractC9246a;
        f mo12793B1 = c9248b.f28142f.mo12793B1();
        Objects.requireNonNull(mo12793B1, "Cannot return null from a non-@Nullable component method");
        this.f28301c = mo12793B1;
        f mo12378g = c9248b.f28142f.mo12378g();
        Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
        this.f28302d = mo12378g;
        AbstractC10159f mo12711H1 = c9248b.f28140d.mo12711H1();
        Objects.requireNonNull(mo12711H1, "Cannot return null from a non-@Nullable component method");
        this.f28303e = mo12711H1;
        AbstractC9686e mo12141x6 = c9248b.f28140d.mo12141x6();
        Objects.requireNonNull(mo12141x6, "Cannot return null from a non-@Nullable component method");
        this.f28304f = mo12141x6;
        AbstractC10680a mo12464Z7 = c9248b.f28140d.mo12464Z7();
        Objects.requireNonNull(mo12464Z7, "Cannot return null from a non-@Nullable component method");
        this.f28305g = mo12464Z7;
        f fVar = this.f28301c;
        if (fVar != null) {
            this.f28307i = s1.a.a.a.v0.f.d.h(fVar);
        } else {
            l.l("contextIO");
            throw null;
        }
    }

    @Override // p193e.p194a.p437c.p438a.p494m.p497c.AbstractC9319g
    /* renamed from: OA */
    public void mo27701OA(String str, String str2, String str3) {
        l.e(str, "appVersion");
        l.e(str2, "countryCode");
        i0 i0Var = this.f28307i;
        f fVar = this.f28301c;
        if (fVar != null) {
            s1.a.a.a.v0.f.d.w2(i0Var, fVar, (j0) null, new C9310a(str, str2, str3, null), 2, (Object) null);
        } else {
            l.l("contextIO");
            throw null;
        }
    }

    @Override // p193e.p194a.p437c.p438a.p494m.p497c.AbstractC9319g
    /* renamed from: PA */
    public String mo27700PA() {
        AbstractC9686e abstractC9686e = this.f28304f;
        if (abstractC9686e != null) {
            return abstractC9686e.mo27307f();
        }
        l.l("environmentHelper");
        throw null;
    }

    @Override // p193e.p194a.p437c.p438a.p494m.p497c.AbstractC9319g
    /* renamed from: RA */
    public String mo27698RA() {
        AbstractC9686e abstractC9686e = this.f28304f;
        if (abstractC9686e != null) {
            return abstractC9686e.mo27306g();
        }
        l.l("environmentHelper");
        throw null;
    }

    @Override // p193e.p194a.p437c.p438a.p494m.p497c.AbstractC9319g
    /* renamed from: SA */
    public String mo27697SA() {
        AbstractC10159f abstractC10159f = this.f28303e;
        if (abstractC10159f != null) {
            return String.valueOf(abstractC10159f.getVersion());
        }
        l.l("categorizer");
        throw null;
    }

    /* renamed from: UA */
    public final f m27727UA() {
        f fVar = this.f28302d;
        if (fVar != null) {
            return fVar;
        }
        l.l("contextUI");
        throw null;
    }
}
