package p193e.p194a.p437c.p538g.p540b0;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Comparator;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p538g.p546y.AbstractC10236n;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
@Metadata(d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0006\n\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001f\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0096@ø\u0001��¢\u0006\u0002\u0010\nJ\u0016\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\bH\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Lcom/truecaller/insights/categorizer/multiClass/MultiClassProbCalculatorImpl;", "Lcom/truecaller/insights/categorizer/multiClass/MultiClassProbCalculator;", "multiClassMetadataRepository", "Lcom/truecaller/insights/categorizer/datasource/MultiClassMetadataRepository;", "(Lcom/truecaller/insights/categorizer/datasource/MultiClassMetadataRepository;)V", "calculateClassProbabilities", "Lcom/truecaller/insights/categorizer/multiClass/AllKeyWordsAndClassProbs;", "words", "", "", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "calculateNumberOfTokensConsideringMultiWord", "", "probabilities", "Lcom/truecaller/insights/categorizer/multiClass/ClassProbability;", "getDefaultProbForClass", "", "classIdentifier", "insights-categorizer"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.a.c.g.b0.h */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/b0/h.class */
public final class C10133h implements AbstractC10132g {

    /* renamed from: a */
    public final AbstractC10236n f30086a;

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    @e(c = "com.truecaller.insights.categorizer.multiClass.MultiClassProbCalculatorImpl", f = "MultiClassProbCalculator.kt", l = {16, 26, 42}, m = "calculateClassProbabilities")
    /* renamed from: e.a.c.g.b0.h$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/b0/h$a.class */
    public static final class C10134a extends c {

        /* renamed from: d */
        public Object f30087d;

        /* renamed from: e */
        public Object f30088e;

        /* renamed from: f */
        public Object f30089f;

        /* renamed from: g */
        public Object f30090g;

        /* renamed from: h */
        public Object f30091h;

        /* renamed from: i */
        public int f30092i;

        /* renamed from: j */
        public double f30093j;

        /* renamed from: k */
        public /* synthetic */ Object f30094k;

        /* renamed from: m */
        public int f30096m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10134a(d<? super C10134a> dVar) {
            super(dVar);
            C10133h.this = r4;
        }

        /* renamed from: s */
        public final Object m26680s(Object obj) {
            this.f30094k = obj;
            this.f30096m |= Integer.MIN_VALUE;
            return C10133h.this.mo26681a(null, this);
        }
    }

    @Metadata(d1 = {"��\n\n��\n\u0002\u0010\b\n\u0002\b\u0007\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "a", "kotlin.jvm.PlatformType", C22021b.f61237c, "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1"}, k = 3, mv = {1, 5, 1})
    /* renamed from: e.a.c.g.b0.h$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/b0/h$b.class */
    public static final class C10135b<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return C25225a.m4000K(((C10125b) t2).f30066b, ((C10125b) t).f30066b);
        }
    }

    public C10133h(AbstractC10236n abstractC10236n) {
        l.e(abstractC10236n, "multiClassMetadataRepository");
        this.f30086a = abstractC10236n;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0528  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x052e  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0549  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0556  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x035a  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x036a  */
    /* JADX WARN: Type inference failed for: r0v122 */
    /* JADX WARN: Type inference failed for: r0v126, types: [double] */
    /* JADX WARN: Type inference failed for: r0v127 */
    /* JADX WARN: Type inference failed for: r0v262, types: [double] */
    /* JADX WARN: Type inference failed for: r0v53, types: [double] */
    /* JADX WARN: Type inference failed for: r0v55, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v99, types: [double] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x017c -> B:28:0x0182). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x035a -> B:104:0x0544). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:82:0x0408 -> B:104:0x0544). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:96:0x04fc -> B:99:0x0502). Please submit an issue!!! */
    @Override // p193e.p194a.p437c.p538g.p540b0.AbstractC10132g
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26681a(java.util.List<java.lang.String> r8, s1.w.d<? super p193e.p194a.p437c.p538g.p540b0.C10124a> r9) {
        /*
            Method dump skipped, instructions count: 1380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p538g.p540b0.C10133h.mo26681a(java.util.List, s1.w.d):java.lang.Object");
    }
}
