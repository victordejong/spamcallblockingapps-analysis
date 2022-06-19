package p193e.p194a.p437c.p538g.p546y;

import com.truecaller.insights.categorizer.KeywordMeta;
import e.m.e.k;
import java.util.List;
import javax.inject.Inject;
import p193e.p194a.p437c.p526c.p528d.AbstractC9930p;
import p193e.p194a.p437c.p526c.p530f.AbstractC10009n;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.c.g.y.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/y/g.class */
public final class C10216g implements AbstractC10211b {

    /* renamed from: a */
    public final k f30300a = new k();

    /* renamed from: b */
    public final AbstractC10009n f30301b;

    /* renamed from: c */
    public final AbstractC9930p f30302c;

    @e(c = "com.truecaller.insights.categorizer.datasource.CategorizerDataSourceImpl", f = "CategorizerDataSource.kt", l = {44, 44}, m = "getCategorizerMetaParam")
    /* renamed from: e.a.c.g.y.g$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/y/g$a.class */
    public static final class C10217a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30303d;

        /* renamed from: e */
        public int f30304e;

        /* renamed from: g */
        public Object f30306g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10217a(d dVar) {
            super(dVar);
            C10216g.this = r4;
        }

        /* renamed from: s */
        public final Object m26579s(Object obj) {
            this.f30303d = obj;
            this.f30304e |= Integer.MIN_VALUE;
            return C10216g.this.m26582a(this);
        }
    }

    @e(c = "com.truecaller.insights.categorizer.datasource.CategorizerDataSourceImpl", f = "CategorizerDataSource.kt", l = {107, 108}, m = "saveModelMeta")
    /* renamed from: e.a.c.g.y.g$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/y/g$b.class */
    public static final class C10218b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30307d;

        /* renamed from: e */
        public int f30308e;

        /* renamed from: g */
        public Object f30310g;

        /* renamed from: h */
        public int f30311h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10218b(d dVar) {
            super(dVar);
            C10216g.this = r4;
        }

        /* renamed from: s */
        public final Object m26578s(Object obj) {
            this.f30307d = obj;
            this.f30308e |= Integer.MIN_VALUE;
            return C10216g.this.m26581b(0, null, this);
        }
    }

    @Inject
    public C10216g(AbstractC10009n abstractC10009n, AbstractC9930p abstractC9930p) {
        l.e(abstractC10009n, "stateUseCases");
        l.e(abstractC9930p, "categorizerDao");
        this.f30301b = abstractC10009n;
        this.f30302c = abstractC9930p;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ab  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m26582a(s1.w.d<? super com.truecaller.insights.categorizer.model.MetaParam> r6) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p538g.p546y.C10216g.m26582a(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d2  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m26581b(int r6, java.util.List<java.lang.Double> r7, s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p538g.p546y.C10216g.m26581b(int, java.util.List, s1.w.d):java.lang.Object");
    }

    /* renamed from: c */
    public final KeywordMeta m26580c(List<Double> list) {
        return new KeywordMeta(list.get(0), list.get(1), list.get(2), list.get(3), list.get(4), list.get(5));
    }
}
