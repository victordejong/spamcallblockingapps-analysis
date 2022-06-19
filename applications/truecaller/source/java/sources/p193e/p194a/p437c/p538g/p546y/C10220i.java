package p193e.p194a.p437c.p538g.p546y;

import android.database.Cursor;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.insights.categorizer.model.CategorizerModelImpl;
import com.truecaller.insights.categorizer.model.WordProbImpl;
import com.truecaller.insights.models.categorizer.CategorizerWordProb;
import com.truecaller.insights.models.categorizer.ReclassifiedMessage;
import com.truecaller.insights.models.categorizerseed.CategorizerSeedServiceModel;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import org.apache.avro.generic.GenericRecord;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17529f2;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p437c.p524b.AbstractC9686e;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p531c0.AbstractC10011a;
import p193e.p194a.p437c.p538g.p539a0.AbstractC10108a;
import p193e.p194a.p437c.p538g.p539a0.AbstractC10122m;
import p193e.p194a.p437c.p593s.p594a.AbstractC10680a;
import q3.a.x2.d1;
import q3.a.x2.f;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.l;
import s1.z.c.b;
import s1.z.c.j;
/* renamed from: e.a.c.g.y.i */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/y/i.class */
public final class C10220i implements AbstractC10219h {

    /* renamed from: a */
    public boolean f30312a;

    /* renamed from: b */
    public List<Double> f30313b;

    /* renamed from: c */
    public int f30314c = -1;

    /* renamed from: d */
    public final AbstractC19462a f30315d;

    /* renamed from: e */
    public final AbstractC10011a f30316e;

    /* renamed from: f */
    public final AbstractC10211b f30317f;

    /* renamed from: g */
    public final AbstractC9686e f30318g;

    /* renamed from: h */
    public final AbstractC9691j f30319h;

    /* renamed from: i */
    public final AbstractC10680a f30320i;

    @e(c = "com.truecaller.insights.categorizer.datasource.InsightsCategorizerRepositoryImpl", f = "InsightsCategorizerRepositoryImpl.kt", l = {147}, m = "migrateToModelInResources")
    /* renamed from: e.a.c.g.y.i$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/y/i$a.class */
    public static final class C10221a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30321d;

        /* renamed from: e */
        public int f30322e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10221a(d dVar) {
            super(dVar);
            C10220i.this = r4;
        }

        /* renamed from: s */
        public final Object m26561s(Object obj) {
            this.f30321d = obj;
            this.f30322e |= Integer.MIN_VALUE;
            return C10220i.this.m26563o(this);
        }
    }

    @e(c = "com.truecaller.insights.categorizer.datasource.InsightsCategorizerRepositoryImpl", f = "InsightsCategorizerRepositoryImpl.kt", l = {65, 68, 75, 76}, m = "runMigrationsAndSetupDB")
    /* renamed from: e.a.c.g.y.i$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/y/i$b.class */
    public static final class C10222b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30324d;

        /* renamed from: e */
        public int f30325e;

        /* renamed from: g */
        public Object f30327g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10222b(d dVar) {
            super(dVar);
            C10220i.this = r4;
        }

        /* renamed from: s */
        public final Object m26560s(Object obj) {
            this.f30324d = obj;
            this.f30325e |= Integer.MIN_VALUE;
            return C10220i.this.mo26567k(this);
        }
    }

    @e(c = "com.truecaller.insights.categorizer.datasource.InsightsCategorizerRepositoryImpl", f = "InsightsCategorizerRepositoryImpl.kt", l = {82, 201, 97}, m = "updateCategorizerOverNetwork")
    /* renamed from: e.a.c.g.y.i$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/y/i$c.class */
    public static final class C10223c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30328d;

        /* renamed from: e */
        public int f30329e;

        /* renamed from: g */
        public Object f30331g;

        /* renamed from: h */
        public Object f30332h;

        /* renamed from: i */
        public long f30333i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10223c(d dVar) {
            super(dVar);
            C10220i.this = r4;
        }

        /* renamed from: s */
        public final Object m26559s(Object obj) {
            this.f30328d = obj;
            this.f30329e |= Integer.MIN_VALUE;
            return C10220i.this.m26562p(this);
        }
    }

    /* renamed from: e.a.c.g.y.i$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/y/i$d.class */
    public static final /* synthetic */ class C10224d extends j implements l<d<? super CategorizerSeedServiceModel>, Object> {
        public C10224d(C10220i c10220i) {
            super(1, c10220i, C10220i.class, "getCategorizerFromBackend", "getCategorizerFromBackend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
        }

        /* renamed from: d */
        public Object m26558d(Object obj) {
            C10220i c10220i = (C10220i) ((b) this).b;
            return c10220i.f30320i.mo25753a(c10220i.f30318g.mo27307f(), c10220i.f30318g.mo27306g(), null, (d) obj);
        }
    }

    @e(c = "com.truecaller.insights.categorizer.datasource.InsightsCategorizerRepositoryImpl", f = "InsightsCategorizerRepositoryImpl.kt", l = {164}, m = "updateModel")
    /* renamed from: e.a.c.g.y.i$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/y/i$e.class */
    public static final class C10225e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30334d;

        /* renamed from: e */
        public int f30335e;

        /* renamed from: g */
        public Object f30337g;

        /* renamed from: h */
        public Object f30338h;

        /* renamed from: i */
        public int f30339i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10225e(d dVar) {
            super(dVar);
            C10220i.this = r4;
        }

        /* renamed from: s */
        public final Object m26557s(Object obj) {
            this.f30334d = obj;
            this.f30335e |= Integer.MIN_VALUE;
            return C10220i.this.mo26576b(0, null, null, this);
        }
    }

    @Inject
    public C10220i(AbstractC19462a abstractC19462a, AbstractC10011a abstractC10011a, AbstractC10211b abstractC10211b, AbstractC9686e abstractC9686e, AbstractC9691j abstractC9691j, AbstractC10680a abstractC10680a) {
        s1.z.c.l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        s1.z.c.l.e(abstractC10011a, "assetsReader");
        s1.z.c.l.e(abstractC10211b, "dataSource");
        s1.z.c.l.e(abstractC9686e, "insightsEnvironmentHelper");
        s1.z.c.l.e(abstractC9691j, "insightsStatusProvider");
        s1.z.c.l.e(abstractC10680a, "categorizerRestAdapter");
        this.f30315d = abstractC19462a;
        this.f30316e = abstractC10011a;
        this.f30317f = abstractC10211b;
        this.f30318g = abstractC9686e;
        this.f30319h = abstractC9691j;
        this.f30320i = abstractC10680a;
    }

    @Override // p193e.p194a.p437c.p538g.p546y.AbstractC10219h
    /* renamed from: a */
    public void mo26577a(List<ReclassifiedMessage> list) {
        s1.z.c.l.e(list, "messages");
        AbstractC10211b abstractC10211b = this.f30317f;
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (ReclassifiedMessage reclassifiedMessage : list) {
            arrayList.add(Long.valueOf(reclassifiedMessage.getId()));
        }
        int i = this.f30314c;
        C10216g c10216g = (C10216g) abstractC10211b;
        Objects.requireNonNull(c10216g);
        s1.z.c.l.e(arrayList, "ids");
        c10216g.f30302c.mo27009i(arrayList, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x008c  */
    @Override // p193e.p194a.p437c.p538g.p546y.AbstractC10219h
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26576b(int r10, java.util.List<java.lang.Double> r11, java.util.List<? extends p193e.p194a.p437c.p538g.p539a0.AbstractC10122m> r12, s1.w.d<? super s1.s> r13) {
        /*
            Method dump skipped, instructions count: 423
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p538g.p546y.C10220i.mo26576b(int, java.util.List, java.util.List, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p538g.p542d0.AbstractC10140a
    /* renamed from: c */
    public Object mo26575c(List<? extends AbstractC10122m> list, d<? super s> dVar) {
        s sVar = s.a;
        C10216g c10216g = (C10216g) this.f30317f;
        Objects.requireNonNull(c10216g);
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (AbstractC10122m abstractC10122m : list) {
            arrayList.add(new CategorizerWordProb(abstractC10122m.getWord(), c10216g.m26580c(abstractC10122m.getProbability())));
        }
        s mo27017a = c10216g.f30302c.mo27017a(arrayList, dVar);
        a aVar = a.a;
        if (mo27017a != aVar) {
            mo27017a = sVar;
        }
        return mo27017a == aVar ? mo27017a : sVar;
    }

    @Override // p193e.p194a.p437c.p538g.p542d0.AbstractC10140a
    /* renamed from: d */
    public Object mo26574d(d<? super List<Double>> dVar) {
        List<Double> list = this.f30313b;
        if (list != null) {
            return list;
        }
        s1.z.c.l.l("meta");
        throw null;
    }

    @Override // p193e.p194a.p437c.p538g.p542d0.AbstractC10140a
    /* renamed from: e */
    public Object mo26573e(List<Double> list, d<? super s> dVar) {
        this.f30313b = list;
        Object m26581b = ((C10216g) this.f30317f).m26581b(this.f30314c, list, dVar);
        return m26581b == a.a ? m26581b : s.a;
    }

    @Override // p193e.p194a.p437c.p538g.p546y.AbstractC10219h
    /* renamed from: f */
    public List<ReclassifiedMessage> mo26572f(int i) {
        AbstractC10211b abstractC10211b = this.f30317f;
        return ((C10216g) abstractC10211b).f30302c.mo27016b(this.f30314c, i);
    }

    @Override // p193e.p194a.p437c.p538g.p546y.AbstractC10219h
    /* renamed from: g */
    public int mo26571g() {
        return this.f30314c;
    }

    @Override // p193e.p194a.p437c.p538g.p546y.AbstractC10219h
    /* renamed from: h */
    public boolean mo26570h() {
        return ((C10216g) this.f30317f).f30302c.mo27008j(this.f30314c) > 0;
    }

    @Override // p193e.p194a.p437c.p538g.p542d0.AbstractC10140a
    /* renamed from: i */
    public AbstractC10108a mo26569i() {
        if (this.f30312a) {
            List<CategorizerWordProb> mo27014d = ((C10216g) this.f30317f).f30302c.mo27014d();
            ArrayList arrayList = new ArrayList(C25225a.m4004J(mo27014d, 10));
            for (CategorizerWordProb categorizerWordProb : mo27014d) {
                arrayList.add(new WordProbImpl(categorizerWordProb.getWord(), categorizerWordProb.getProbability().toVector()));
            }
            List<Double> list = this.f30313b;
            if (list != null) {
                return new CategorizerModelImpl(arrayList, list, this.f30314c);
            }
            s1.z.c.l.l("meta");
            throw null;
        }
        throw new IllegalStateException("DB is not setup properly with categorizer model");
    }

    @Override // p193e.p194a.p437c.p538g.p542d0.AbstractC10140a
    /* renamed from: j */
    public Object mo26568j(d<? super f<String>> dVar) {
        Cursor mo27015c = ((C10216g) this.f30317f).f30302c.mo27015c();
        return new q3.a.x2.s(new d1(new C10212c(mo27015c, null)), new C10213d(mo27015c, null));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f0  */
    @Override // p193e.p194a.p437c.p538g.p546y.AbstractC10219h
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26567k(s1.w.d<? super s1.s> r6) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p538g.p546y.C10220i.mo26567k(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p538g.p542d0.AbstractC10140a
    /* renamed from: l */
    public Object mo26566l(d<? super f<String>> dVar) {
        Cursor mo27012f = ((C10216g) this.f30317f).f30302c.mo27012f();
        return new q3.a.x2.s(new d1(new C10214e(mo27012f, null)), new C10215f(mo27012f, null));
    }

    /* renamed from: m */
    public final int m26565m() {
        String mo27306g = this.f30318g.mo27306g();
        int hashCode = mo27306g.hashCode();
        int i = 3;
        if (hashCode != 2210) {
            if (hashCode == 2394) {
                mo27306g.equals("KE");
            } else if (hashCode == 2642 && mo27306g.equals("SE")) {
                i = 5;
            }
        } else if (mo27306g.equals("EG")) {
            i = 4;
        }
        return i;
    }

    /* renamed from: n */
    public final void m26564n(long j, int i) {
        C17529f2.C17531b m15977a = C17529f2.m15977a();
        m15977a.m15975b("on_first_install");
        m15977a.m15974c(j);
        m15977a.m15973d("categorizer");
        m15977a.m15972e(String.valueOf(-1));
        m15977a.m15969h(i);
        m15977a.m15971f(this.f30318g.mo27306g());
        m15977a.m15970g("model");
        GenericRecord build = m15977a.build();
        AbstractC19462a abstractC19462a = this.f30315d;
        s1.z.c.l.d(build, "it");
        abstractC19462a.mo13275a(build);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x016b  */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m26563o(s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 436
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p538g.p546y.C10220i.m26563o(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(18:2|(2:4|(15:6|8|105|(2:10|(2:12|(2:14|(3:16|101|102)(2:17|18))(7:19|20|21|86|87|101|102))(2:22|23))(5:25|103|26|27|(2:29|30)(1:31))|32|33|34|35|36|37|38|39|(4:41|42|43|(27:45|46|47|48|49|50|51|52|53|54|55|56|57|(4:58|59|60|(11:62|63|64|65|66|67|68|69|70|71|72)(1:106))|73|74|75|76|77|78|79|80|81|82|(2:84|85)|86|87)(7:88|89|90|91|92|93|94))|101|102))|7|8|105|(0)(0)|32|33|34|35|36|37|38|39|(0)|101|102|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a9, code lost:
        r16 = e;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x010c  */
    /* JADX WARN: Type inference failed for: r0v136, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0, types: [s1.w.d<? super s1.s>, s1.w.d] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m26562p(s1.w.d<? super s1.s> r7) {
        /*
            Method dump skipped, instructions count: 689
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p538g.p546y.C10220i.m26562p(s1.w.d):java.lang.Object");
    }
}
