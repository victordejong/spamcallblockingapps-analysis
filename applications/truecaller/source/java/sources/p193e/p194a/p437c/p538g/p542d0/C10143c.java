package p193e.p194a.p437c.p538g.p542d0;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p437c.p538g.C10196q;
import p193e.p194a.p437c.p538g.C10197r;
import p193e.p194a.p437c.p538g.p539a0.AbstractC10108a;
import p193e.p194a.p437c.p538g.p539a0.AbstractC10109b;
import p193e.p194a.p437c.p538g.p539a0.AbstractC10122m;
import p193e.p194a.p437c.p538g.p539a0.C10118i;
import p193e.p194a.p437c.p538g.p539a0.C10119j;
import p193e.p194a.p437c.p538g.p542d0.AbstractC10141b;
import p193e.p194a.p437c.p538g.p542d0.AbstractC10153e;
import q3.a.x2.f;
import s1.f0.v;
import s1.s;
import s1.u.i;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
@Metadata(d1 = {"��\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010 \n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0006\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0010\b��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u0019\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0096@ø\u0001��¢\u0006\u0002\u0010\u0019J\u0019\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0096@ø\u0001��¢\u0006\u0002\u0010\u0019J\u0017\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00120\u001cH\u0096@ø\u0001��¢\u0006\u0002\u0010\u001dJ\u0017\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00120\u001cH\u0096@ø\u0001��¢\u0006\u0002\u0010\u001dJ\u0017\u0010\u001f\u001a\u0004\u0018\u00010\u00162\u0006\u0010 \u001a\u00020\u0012H\u0002¢\u0006\u0002\u0010!J\u0012\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010 \u001a\u00020\u0012H\u0016J\u0018\u0010$\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010%2\u0006\u0010 \u001a\u00020\u0012H\u0002J\u0017\u0010&\u001a\u0004\u0018\u00010\u00162\u0006\u0010 \u001a\u00020\u0012H\u0002¢\u0006\u0002\u0010!J\u0016\u0010'\u001a\u00020(2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0016J\u0010\u0010)\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u0012H\u0016J'\u0010*\u001a\u00020\u00142\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010+\u001a\u00020\u0016H\u0096@ø\u0001��¢\u0006\u0002\u0010,J'\u0010-\u001a\u00020\u00142\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010.\u001a\u00020\u0016H\u0096@ø\u0001��¢\u0006\u0002\u0010,J,\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0016002\u0006\u00101\u001a\u00020\u00162\u0006\u00102\u001a\u00020\u00162\u0006\u00103\u001a\u00020\u000fH\u0002J'\u00104\u001a\u00020\u00142\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u00105\u001a\u000206H\u0096@ø\u0001��¢\u0006\u0002\u00107J\u0011\u00108\u001a\u00020\u0014H\u0096@ø\u0001��¢\u0006\u0002\u0010\u001dJ\u0010\u00109\u001a\u00020\u00142\u0006\u00105\u001a\u000206H\u0016J\r\u0010:\u001a\u00020\u0014H��¢\u0006\u0002\b;J\u0018\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020\u00122\u0006\u00105\u001a\u000206H\u0002J\u0015\u0010?\u001a\u00020=2\u0006\u0010 \u001a\u00020\u0012H��¢\u0006\u0002\b@J\u0015\u0010A\u001a\u00020=2\u0006\u0010 \u001a\u00020\u0012H��¢\u0006\u0002\bBJ\u001f\u0010C\u001a\u00020\u00142\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0096@ø\u0001��¢\u0006\u0002\u0010DJ\u001f\u0010E\u001a\u00020\u00142\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0096@ø\u0001��¢\u0006\u0002\u0010DJ\r\u0010F\u001a\u00020\u0014H��¢\u0006\u0002\bGJ\u0018\u0010H\u001a\u00020=2\u0006\u0010>\u001a\u00020\u00122\u0006\u00105\u001a\u000206H\u0002J\u0015\u0010I\u001a\u00020=2\u0006\u0010 \u001a\u00020\u0012H��¢\u0006\u0002\bJJ\u0015\u0010K\u001a\u00020=2\u0006\u0010 \u001a\u00020\u0012H��¢\u0006\u0002\bLR\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006M"}, d2 = {"Lcom/truecaller/insights/categorizer/seed/CategorizerSeedManagerImpl;", "Lcom/truecaller/insights/categorizer/seed/CategorizerSeedManager;", "builder", "Lcom/truecaller/insights/categorizer/seed/CategorizerSeedManager$Builder;", "(Lcom/truecaller/insights/categorizer/seed/CategorizerSeedManager$Builder;)V", "metaParams", "Lcom/truecaller/insights/categorizer/model/MutableMetaParams;", "getMetaParams$insights_categorizer", "()Lcom/truecaller/insights/categorizer/model/MutableMetaParams;", "metaTrie", "Lcom/truecaller/insights/categorizer/seed/MetaTrie;", "Lcom/truecaller/insights/categorizer/model/MutableKeywordMeta;", "repository", "Lcom/truecaller/insights/categorizer/seed/CategorizerRepository;", "calculateNumberOfWordsIdentified", "", "words", "", "", "cleanMetaParamsForTraining", "", "countOfHamProbKeywords", "", "forceFetch", "", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "countOfSpamProbKeywords", "getAllTfHamWords", "Lkotlinx/coroutines/flow/Flow;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAllTfSpamWords", "getKeywordHamProbability", "keyword", "(Ljava/lang/String;)Ljava/lang/Double;", "getKeywordMeta", "Lcom/truecaller/insights/categorizer/model/KeywordMeta;", "getKeywordMetaNode", "Lcom/truecaller/insights/categorizer/seed/TrieNode$EndNode;", "getKeywordSpamProbability", "getSpamHamProbability", "Lcom/truecaller/insights/categorizer/ProbabilityPair;", "isKeywordKnown", "normalizeKeywordHamProbability", "totalHamKeywords", "(Ljava/util/List;DLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "normalizeKeywordSpamProbability", "totalSpamKeywords", "normalizeProbabilities", "Lkotlin/Pair;", "pHam", "pSpam", "noOfKeyWords", "reCalculateTfAndIdf", "category", "Lcom/truecaller/insights/categorizer/model/Category;", "(Ljava/util/List;Lcom/truecaller/insights/categorizer/model/Category;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateAllMetaParams", "updateHamAndSpamCounts", "updateHamWordCount", "updateHamWordCount$insights_categorizer", "updateIdfForWord", "Lcom/truecaller/insights/categorizer/model/WordToProb;", "word", "updateIdfHam", "updateIdfHam$insights_categorizer", "updateIdfSpam", "updateIdfSpam$insights_categorizer", "updateKeywordHamProbability", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateKeywordSpamProbability", "updateSpamWordCount", "updateSpamWordCount$insights_categorizer", "updateTfForWord", "updateTfHam", "updateTfHam$insights_categorizer", "updateTfSpam", "updateTfSpam$insights_categorizer", "insights-categorizer"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.a.c.g.d0.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/d0/c.class */
public final class C10143c implements AbstractC10141b {

    /* renamed from: a */
    public final C10152d<C10118i> f30103a = new C10152d<>();

    /* renamed from: b */
    public final C10119j f30104b;

    /* renamed from: c */
    public final AbstractC10140a f30105c;

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    @e(c = "com.truecaller.insights.categorizer.seed.CategorizerSeedManagerImpl", f = "CategoriserSeedManager.kt", l = {206}, m = "countOfHamProbKeywords")
    /* renamed from: e.a.c.g.d0.c$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/d0/c$a.class */
    public static final class C10144a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30106d;

        /* renamed from: f */
        public int f30108f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10144a(d<? super C10144a> dVar) {
            super(dVar);
            C10143c.this = r4;
        }

        /* renamed from: s */
        public final Object m26663s(Object obj) {
            this.f30106d = obj;
            this.f30108f |= Integer.MIN_VALUE;
            return C10143c.this.mo26665n(false, this);
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    @e(c = "com.truecaller.insights.categorizer.seed.CategorizerSeedManagerImpl", f = "CategoriserSeedManager.kt", l = {202}, m = "countOfSpamProbKeywords")
    /* renamed from: e.a.c.g.d0.c$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/d0/c$b.class */
    public static final class C10145b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30109d;

        /* renamed from: f */
        public int f30111f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10145b(d<? super C10145b> dVar) {
            super(dVar);
            C10143c.this = r4;
        }

        /* renamed from: s */
        public final Object m26662s(Object obj) {
            this.f30109d = obj;
            this.f30111f |= Integer.MIN_VALUE;
            return C10143c.this.mo26674e(false, this);
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    @e(c = "com.truecaller.insights.categorizer.seed.CategorizerSeedManagerImpl", f = "CategoriserSeedManager.kt", l = {271, 272}, m = "normalizeKeywordHamProbability")
    /* renamed from: e.a.c.g.d0.c$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/d0/c$c.class */
    public static final class C10146c extends c {

        /* renamed from: d */
        public Object f30112d;

        /* renamed from: e */
        public /* synthetic */ Object f30113e;

        /* renamed from: g */
        public int f30115g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10146c(d<? super C10146c> dVar) {
            super(dVar);
            C10143c.this = r4;
        }

        /* renamed from: s */
        public final Object m26661s(Object obj) {
            this.f30113e = obj;
            this.f30115g |= Integer.MIN_VALUE;
            return C10143c.this.mo26677b(null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, this);
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    @e(c = "com.truecaller.insights.categorizer.seed.CategorizerSeedManagerImpl", f = "CategoriserSeedManager.kt", l = {241, 242}, m = "normalizeKeywordSpamProbability")
    /* renamed from: e.a.c.g.d0.c$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/d0/c$d.class */
    public static final class C10147d extends c {

        /* renamed from: d */
        public Object f30116d;

        /* renamed from: e */
        public /* synthetic */ Object f30117e;

        /* renamed from: g */
        public int f30119g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10147d(d<? super C10147d> dVar) {
            super(dVar);
            C10143c.this = r4;
        }

        /* renamed from: s */
        public final Object m26660s(Object obj) {
            this.f30117e = obj;
            this.f30119g |= Integer.MIN_VALUE;
            return C10143c.this.mo26666m(null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, this);
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    @e(c = "com.truecaller.insights.categorizer.seed.CategorizerSeedManagerImpl", f = "CategoriserSeedManager.kt", l = {134, 135}, m = "reCalculateTfAndIdf")
    /* renamed from: e.a.c.g.d0.c$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/d0/c$e.class */
    public static final class C10148e extends c {

        /* renamed from: d */
        public Object f30120d;

        /* renamed from: e */
        public /* synthetic */ Object f30121e;

        /* renamed from: g */
        public int f30123g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10148e(d<? super C10148e> dVar) {
            super(dVar);
            C10143c.this = r4;
        }

        /* renamed from: s */
        public final Object m26659s(Object obj) {
            this.f30121e = obj;
            this.f30123g |= Integer.MIN_VALUE;
            return C10143c.this.mo26678a(null, null, this);
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    @e(c = "com.truecaller.insights.categorizer.seed.CategorizerSeedManagerImpl", f = "CategoriserSeedManager.kt", l = {280, 281, 282}, m = "updateAllMetaParams")
    /* renamed from: e.a.c.g.d0.c$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/d0/c$f.class */
    public static final class C10149f extends c {

        /* renamed from: d */
        public Object f30124d;

        /* renamed from: e */
        public Object f30125e;

        /* renamed from: f */
        public /* synthetic */ Object f30126f;

        /* renamed from: h */
        public int f30128h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10149f(d<? super C10149f> dVar) {
            super(dVar);
            C10143c.this = r4;
        }

        /* renamed from: s */
        public final Object m26658s(Object obj) {
            this.f30126f = obj;
            this.f30128h |= Integer.MIN_VALUE;
            return C10143c.this.mo26676c(this);
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    @e(c = "com.truecaller.insights.categorizer.seed.CategorizerSeedManagerImpl", f = "CategoriserSeedManager.kt", l = {257, 258}, m = "updateKeywordHamProbability")
    /* renamed from: e.a.c.g.d0.c$g */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/d0/c$g.class */
    public static final class C10150g extends c {

        /* renamed from: d */
        public Object f30129d;

        /* renamed from: e */
        public /* synthetic */ Object f30130e;

        /* renamed from: g */
        public int f30132g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10150g(d<? super C10150g> dVar) {
            super(dVar);
            C10143c.this = r4;
        }

        /* renamed from: s */
        public final Object m26657s(Object obj) {
            this.f30130e = obj;
            this.f30132g |= Integer.MIN_VALUE;
            return C10143c.this.mo26670i(null, this);
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    @e(c = "com.truecaller.insights.categorizer.seed.CategorizerSeedManagerImpl", f = "CategoriserSeedManager.kt", l = {227, 228}, m = "updateKeywordSpamProbability")
    /* renamed from: e.a.c.g.d0.c$h */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/d0/c$h.class */
    public static final class C10151h extends c {

        /* renamed from: d */
        public Object f30133d;

        /* renamed from: e */
        public /* synthetic */ Object f30134e;

        /* renamed from: g */
        public int f30136g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10151h(d<? super C10151h> dVar) {
            super(dVar);
            C10143c.this = r4;
        }

        /* renamed from: s */
        public final Object m26656s(Object obj) {
            this.f30134e = obj;
            this.f30136g |= Integer.MIN_VALUE;
            return C10143c.this.mo26672g(null, this);
        }
    }

    public C10143c(AbstractC10141b.C10142a c10142a) {
        l.e(c10142a, "builder");
        AbstractC10140a abstractC10140a = c10142a.f30102a;
        if (abstractC10140a == null) {
            l.l("repository");
            throw null;
        }
        this.f30105c = abstractC10140a;
        AbstractC10108a mo26569i = abstractC10140a.mo26569i();
        this.f30104b = C17891a1.C17902k.m15562w1(mo26569i.getMeta());
        for (AbstractC10122m abstractC10122m : mo26569i.getProbabilities()) {
            C10152d<C10118i> c10152d = this.f30103a;
            String word = abstractC10122m.getWord();
            l.e(abstractC10122m, "<this>");
            c10152d.m26654b(word, new C10118i(abstractC10122m.getProbability().get(0), abstractC10122m.getProbability().get(1), abstractC10122m.getProbability().get(2), abstractC10122m.getProbability().get(3), abstractC10122m.getProbability().get(4), abstractC10122m.getProbability().get(5)));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x027e  */
    @Override // p193e.p194a.p437c.p538g.p542d0.AbstractC10141b
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26678a(java.util.List<java.lang.String> r7, p193e.p194a.p437c.p538g.p539a0.AbstractC10109b r8, s1.w.d<? super s1.s> r9) {
        /*
            Method dump skipped, instructions count: 645
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p538g.p542d0.C10143c.mo26678a(java.util.List, e.a.c.g.a0.b, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0167  */
    @Override // p193e.p194a.p437c.p538g.p542d0.AbstractC10141b
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26677b(java.util.List<java.lang.String> r11, double r12, s1.w.d<? super s1.s> r14) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p538g.p542d0.C10143c.mo26677b(java.util.List, double, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x01a5  */
    @Override // p193e.p194a.p437c.p538g.p542d0.AbstractC10141b
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26676c(s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p538g.p542d0.C10143c.mo26676c(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p538g.p542d0.AbstractC10141b
    /* renamed from: d */
    public void mo26675d() {
        C10119j c10119j = this.f30104b;
        c10119j.f30045b = PlaceLikelihood.LIKELIHOOD_MIN_VALUE;
        c10119j.f30044a = PlaceLikelihood.LIKELIHOOD_MIN_VALUE;
        c10119j.f30047d = PlaceLikelihood.LIKELIHOOD_MIN_VALUE;
        c10119j.f30046c = PlaceLikelihood.LIKELIHOOD_MIN_VALUE;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Type inference failed for: r0v12, types: [double] */
    /* JADX WARN: Type inference failed for: r0v17, types: [double] */
    @Override // p193e.p194a.p437c.p538g.p542d0.AbstractC10141b
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26674e(boolean r6, s1.w.d<? super java.lang.Double> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p437c.p538g.p542d0.C10143c.C10145b
            if (r0 == 0) goto L28
            r0 = r7
            e.a.c.g.d0.c$b r0 = (p193e.p194a.p437c.p538g.p542d0.C10143c.C10145b) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f30111f
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f30111f = r1
            r0 = r8
            r7 = r0
            goto L32
        L28:
            e.a.c.g.d0.c$b r0 = new e.a.c.g.d0.c$b
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L32:
            r0 = r7
            java.lang.Object r0 = r0.f30109d
            r8 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r7
            int r0 = r0.f30111f
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L60
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L56
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r8
            r7 = r0
            goto L85
        L56:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L60:
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            if (r0 == 0) goto L94
            r0 = r5
            e.a.c.g.d0.a r0 = r0.f30105c
            r8 = r0
            r0 = r7
            r1 = 1
            r0.f30111f = r1
            r0 = r8
            r1 = r7
            java.lang.Object r0 = r0.mo26574d(r1)
            r8 = r0
            r0 = r8
            r7 = r0
            r0 = r8
            r1 = r10
            if (r0 != r1) goto L85
            r0 = r10
            return r0
        L85:
            r0 = r7
            java.util.List r0 = (java.util.List) r0
            e.a.c.g.a0.j r0 = p193e.p194a.p1053m0.C17891a1.C17902k.m15562w1(r0)
            double r0 = r0.f30048e
            r11 = r0
            goto L9d
        L94:
            r0 = r5
            e.a.c.g.a0.j r0 = r0.f30104b
            double r0 = r0.f30048e
            r11 = r0
        L9d:
            java.lang.Double r0 = new java.lang.Double
            r1 = r0
            r2 = r11
            r1.<init>(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p538g.p542d0.C10143c.mo26674e(boolean, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p538g.p542d0.AbstractC10141b
    /* renamed from: f */
    public void mo26673f(AbstractC10109b abstractC10109b) {
        l.e(abstractC10109b, "category");
        boolean z = abstractC10109b instanceof AbstractC10109b.C10110a;
        Double valueOf = Double.valueOf(1.0d);
        if (z) {
            C17891a1.C17902k.m15639V0(Double.valueOf(this.f30104b.f30053j), valueOf);
        } else if (!(abstractC10109b instanceof AbstractC10109b.C10111b)) {
        } else {
            C17891a1.C17902k.m15639V0(Double.valueOf(this.f30104b.f30053j), valueOf);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01bd  */
    /* JADX WARN: Type inference failed for: r0v62, types: [double] */
    @Override // p193e.p194a.p437c.p538g.p542d0.AbstractC10141b
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26672g(java.util.List<java.lang.String> r15, s1.w.d<? super s1.s> r16) {
        /*
            Method dump skipped, instructions count: 451
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p538g.p542d0.C10143c.mo26672g(java.util.List, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p538g.p542d0.AbstractC10141b
    /* renamed from: h */
    public Object mo26671h(d<? super f<String>> dVar) {
        return this.f30105c.mo26566l(dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01b7  */
    /* JADX WARN: Type inference failed for: r0v60, types: [double] */
    @Override // p193e.p194a.p437c.p538g.p542d0.AbstractC10141b
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26670i(java.util.List<java.lang.String> r14, s1.w.d<? super s1.s> r15) {
        /*
            Method dump skipped, instructions count: 445
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p538g.p542d0.C10143c.mo26670i(java.util.List, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p538g.p542d0.AbstractC10141b
    /* renamed from: j */
    public boolean mo26669j(String str) {
        l.e(str, "keyword");
        return this.f30103a.m26652d(str) != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v101, types: [double] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v77, types: [double] */
    /* JADX WARN: Type inference failed for: r0v79, types: [double] */
    /* JADX WARN: Type inference failed for: r0v80 */
    /* JADX WARN: Type inference failed for: r0v84, types: [double] */
    /* JADX WARN: Type inference failed for: r0v86, types: [double] */
    /* JADX WARN: Type inference failed for: r0v99, types: [double] */
    @Override // p193e.p194a.p437c.p538g.p542d0.AbstractC10141b
    /* renamed from: k */
    public C10196q mo26668k(List<String> list) {
        char c;
        s sVar;
        s sVar2;
        C10118i c10118i;
        C10118i c10118i2;
        s sVar3 = s.a;
        l.e(list, "words");
        Iterator it = list.iterator();
        char c2 = 0;
        ?? r0 = 0;
        while (true) {
            c = r0;
            if (!it.hasNext()) {
                break;
            }
            String str = (String) it.next();
            AbstractC10153e.C10154a<C10118i> m26652d = this.f30103a.m26652d(str);
            Double d = (m26652d == null || (c10118i2 = m26652d.f30139b) == null) ? null : c10118i2.f30039b;
            if (d == null) {
                sVar = null;
            } else {
                c += Math.log(d.doubleValue());
                sVar = sVar3;
            }
            char c3 = c;
            if (sVar == null) {
                C10119j c10119j = this.f30104b;
                c3 = c - Math.log(c10119j.f30047d + c10119j.f30048e);
            }
            AbstractC10153e.C10154a<C10118i> m26652d2 = this.f30103a.m26652d(str);
            Double d2 = (m26652d2 == null || (c10118i = m26652d2.f30139b) == null) ? null : c10118i.f30038a;
            if (d2 == null) {
                sVar2 = null;
            } else {
                c2 += Math.log(d2.doubleValue());
                sVar2 = sVar3;
            }
            char c4 = c2;
            if (sVar2 == null) {
                C10119j c10119j2 = this.f30104b;
                c4 = c2 - Math.log(c10119j2.f30046c + c10119j2.f30049f);
            }
            ?? log = c3 + Math.log(this.f30104b.f30045b);
            c2 = c4 + Math.log(this.f30104b.f30044a);
            r0 = log;
        }
        list.size();
        List<Number> T = i.T(new Double[]{Double.valueOf(c2), Double.valueOf(c)});
        l.e(T, "inputs");
        ArrayList arrayList = new ArrayList(C25225a.m4004J(T, 10));
        for (Number number : T) {
            double doubleValue = number.doubleValue();
            l.e(T, "values");
            ArrayList arrayList2 = new ArrayList(C25225a.m4004J(T, 10));
            for (Number number2 : T) {
                arrayList2.add(Double.valueOf(Math.exp(number2.doubleValue())));
            }
            arrayList.add(Double.valueOf(Math.exp(doubleValue) / i.H0(arrayList2)));
        }
        double doubleValue2 = ((Number) arrayList.get(0)).doubleValue();
        double doubleValue3 = ((Number) arrayList.get(1)).doubleValue();
        double doubleValue4 = Double.valueOf(doubleValue2).doubleValue();
        double doubleValue5 = Double.valueOf(doubleValue3).doubleValue();
        ArrayList arrayList3 = new ArrayList();
        for (String str2 : list) {
            i.b(arrayList3, v.U(str2, new String[]{StringConstant.SPACE}, false, 0, 6));
        }
        return new C10196q(doubleValue4, doubleValue5, new C10197r(arrayList3.size()));
    }

    @Override // p193e.p194a.p437c.p538g.p542d0.AbstractC10141b
    /* renamed from: l */
    public Object mo26667l(d<? super f<String>> dVar) {
        return this.f30105c.mo26568j(dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0166  */
    @Override // p193e.p194a.p437c.p538g.p542d0.AbstractC10141b
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26666m(java.util.List<java.lang.String> r11, double r12, s1.w.d<? super s1.s> r14) {
        /*
            Method dump skipped, instructions count: 365
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p538g.p542d0.C10143c.mo26666m(java.util.List, double, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Type inference failed for: r0v12, types: [double] */
    /* JADX WARN: Type inference failed for: r0v17, types: [double] */
    @Override // p193e.p194a.p437c.p538g.p542d0.AbstractC10141b
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26665n(boolean r6, s1.w.d<? super java.lang.Double> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p437c.p538g.p542d0.C10143c.C10144a
            if (r0 == 0) goto L28
            r0 = r7
            e.a.c.g.d0.c$a r0 = (p193e.p194a.p437c.p538g.p542d0.C10143c.C10144a) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f30108f
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f30108f = r1
            r0 = r8
            r7 = r0
            goto L32
        L28:
            e.a.c.g.d0.c$a r0 = new e.a.c.g.d0.c$a
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L32:
            r0 = r7
            java.lang.Object r0 = r0.f30106d
            r8 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r7
            int r0 = r0.f30108f
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L60
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L56
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r8
            r7 = r0
            goto L85
        L56:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L60:
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            if (r0 == 0) goto L94
            r0 = r5
            e.a.c.g.d0.a r0 = r0.f30105c
            r8 = r0
            r0 = r7
            r1 = 1
            r0.f30108f = r1
            r0 = r8
            r1 = r7
            java.lang.Object r0 = r0.mo26574d(r1)
            r8 = r0
            r0 = r8
            r7 = r0
            r0 = r8
            r1 = r10
            if (r0 != r1) goto L85
            r0 = r10
            return r0
        L85:
            r0 = r7
            java.util.List r0 = (java.util.List) r0
            e.a.c.g.a0.j r0 = p193e.p194a.p1053m0.C17891a1.C17902k.m15562w1(r0)
            double r0 = r0.f30049f
            r11 = r0
            goto L9d
        L94:
            r0 = r5
            e.a.c.g.a0.j r0 = r0.f30104b
            double r0 = r0.f30049f
            r11 = r0
        L9d:
            java.lang.Double r0 = new java.lang.Double
            r1 = r0
            r2 = r11
            r1.<init>(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p538g.p542d0.C10143c.mo26665n(boolean, s1.w.d):java.lang.Object");
    }

    /* renamed from: o */
    public final AbstractC10153e.C10154a<C10118i> m26664o(String str) {
        return this.f30103a.m26652d(str);
    }
}
