package p193e.p194a.p437c.p526c.p530f;

import com.truecaller.insights.models.pdo.ParsedDataObject;
import e.q.e.a.c;
import java.util.Comparator;
import java.util.HashMap;
import javax.inject.Named;
import p193e.p1681q.p1698e.p1699b.AbstractC25209a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p580r.p587h.AbstractC10542b;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.c.c.f.i */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/f/i.class */
public final class C9997i extends c<Long> {

    /* renamed from: e */
    public final AbstractC9994g f29793e;

    /* renamed from: f */
    public final AbstractC10542b f29794f;

    /* renamed from: g */
    public final AbstractC10009n f29795g;

    /* renamed from: h */
    public final AbstractC10028o f29796h;

    /* renamed from: i */
    public final f f29797i;

    @e(c = "com.truecaller.insights.database.usecases.HardLinkUseCases", f = "HardLinkUseCases.kt", l = {283}, m = "getUnlinkedChildren")
    /* renamed from: e.a.c.c.f.i$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/f/i$a.class */
    public static final class C9998a extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f29798d;

        /* renamed from: e */
        public int f29799e;

        /* renamed from: g */
        public Object f29801g;

        /* renamed from: h */
        public Object f29802h;

        /* renamed from: i */
        public Object f29803i;

        /* renamed from: j */
        public Object f29804j;

        /* renamed from: k */
        public long f29805k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9998a(d dVar) {
            super(dVar);
            C9997i.this = r4;
        }

        /* renamed from: s */
        public final Object m26940s(Object obj) {
            this.f29798d = obj;
            this.f29799e |= Integer.MIN_VALUE;
            return C9997i.this.m26947g(0L, null, this);
        }
    }

    @e(c = "com.truecaller.insights.database.usecases.HardLinkUseCases$handleLinkedIds$1", f = "HardLinkUseCases.kt", l = {38, 45, 47, 48, 49, 59, 65}, m = "invokeSuspend")
    /* renamed from: e.a.c.c.f.i$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/f/i$b.class */
    public static final class C9999b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f29806e;

        /* renamed from: f */
        public Object f29807f;

        /* renamed from: g */
        public Object f29808g;

        /* renamed from: h */
        public Object f29809h;

        /* renamed from: i */
        public Object f29810i;

        /* renamed from: j */
        public Object f29811j;

        /* renamed from: k */
        public long f29812k;

        /* renamed from: l */
        public int f29813l;

        /* renamed from: n */
        public final /* synthetic */ HashMap f29815n;

        /* renamed from: e.a.c.c.f.i$b$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/c/f/i$b$a.class */
        public static final class C10000a<T> implements Comparator {
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return C25225a.m4000K(((ParsedDataObject) t).getMsgDate(), ((ParsedDataObject) t2).getMsgDate());
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9999b(HashMap hashMap, d dVar) {
            super(2, dVar);
            C9997i.this = r5;
            this.f29815n = hashMap;
        }

        /* renamed from: i */
        public final d<s> m26939i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C9999b(this.f29815n, dVar);
        }

        /* renamed from: k */
        public final Object m26938k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C9999b(this.f29815n, dVar).m26937s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x01e0  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x02b1  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x035f  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x0361  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x03c1  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x03c3  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x0479  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x047b  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x04a4  */
        /* JADX WARN: Type inference failed for: r0v145, types: [long] */
        /* JADX WARN: Type inference failed for: r0v201, types: [long] */
        /* JADX WARN: Type inference failed for: r0v218, types: [long] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x02ae -> B:20:0x01d6). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x047b -> B:53:0x048b). Please submit an issue!!! */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m26937s(java.lang.Object r9) {
            /*
                Method dump skipped, instructions count: 1253
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p526c.p530f.C9997i.C9999b.m26937s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.insights.database.usecases.HardLinkUseCases", f = "HardLinkUseCases.kt", l = {140, 145}, m = "handleNonTransactionalLinks")
    /* renamed from: e.a.c.c.f.i$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/f/i$c.class */
    public static final class C10001c extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f29816d;

        /* renamed from: e */
        public int f29817e;

        /* renamed from: g */
        public Object f29819g;

        /* renamed from: h */
        public Object f29820h;

        /* renamed from: i */
        public Object f29821i;

        /* renamed from: j */
        public int f29822j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10001c(d dVar) {
            super(dVar);
            C9997i.this = r4;
        }

        /* renamed from: s */
        public final Object m26936s(Object obj) {
            this.f29816d = obj;
            this.f29817e |= Integer.MIN_VALUE;
            return C9997i.this.m26946h(null, null, 0, null, this);
        }
    }

    @e(c = "com.truecaller.insights.database.usecases.HardLinkUseCases", f = "HardLinkUseCases.kt", l = {125, 128, 131}, m = "linkRecords")
    /* renamed from: e.a.c.c.f.i$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/f/i$d.class */
    public static final class C10002d extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f29823d;

        /* renamed from: e */
        public int f29824e;

        /* renamed from: g */
        public Object f29826g;

        /* renamed from: h */
        public Object f29827h;

        /* renamed from: i */
        public Object f29828i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10002d(d dVar) {
            super(dVar);
            C9997i.this = r4;
        }

        /* renamed from: s */
        public final Object m26935s(Object obj) {
            this.f29823d = obj;
            this.f29824e |= Integer.MIN_VALUE;
            return C9997i.this.m26945i(null, null, 0, null, this);
        }
    }

    @e(c = "com.truecaller.insights.database.usecases.HardLinkUseCases", f = "HardLinkUseCases.kt", l = {81}, m = "workOnLinking")
    /* renamed from: e.a.c.c.f.i$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/f/i$e.class */
    public static final class C10003e extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f29829d;

        /* renamed from: e */
        public int f29830e;

        /* renamed from: g */
        public Object f29832g;

        /* renamed from: h */
        public Object f29833h;

        /* renamed from: i */
        public Object f29834i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10003e(d dVar) {
            super(dVar);
            C9997i.this = r4;
        }

        /* renamed from: s */
        public final Object m26934s(Object obj) {
            this.f29829d = obj;
            this.f29830e |= Integer.MIN_VALUE;
            return C9997i.this.m26941m(null, null, 0, null, null, this);
        }
    }

    public C9997i(AbstractC9994g abstractC9994g, AbstractC10542b abstractC10542b, AbstractC10009n abstractC10009n, AbstractC10028o abstractC10028o, @Named("IO") f fVar) {
        l.e(abstractC9994g, "enrichmentUseCases");
        l.e(abstractC10542b, "insightsBinder");
        l.e(abstractC10009n, "stateUseCases");
        l.e(abstractC10028o, "insightConfig");
        l.e(fVar, "coroutineContext");
        this.f29793e = abstractC9994g;
        this.f29794f = abstractC10542b;
        this.f29795g = abstractC10009n;
        this.f29796h = abstractC10028o;
        this.f29797i = fVar;
    }

    /* renamed from: f */
    public void m26948f(HashMap<Long, AbstractC25209a.C25212c<Long>> hashMap) {
        s1.a.a.a.v0.f.d.b3(this.f29797i, new C9999b(hashMap, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0186  */
    /* JADX WARN: Type inference failed for: r0v25, types: [e.a.c.c.f.g] */
    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    /* JADX WARN: Type inference failed for: r1v7, types: [long] */
    /* JADX WARN: Type inference failed for: r1v9, types: [long] */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0149 -> B:23:0x015c). Please submit an issue!!! */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m26947g(long r8, p193e.p1681q.p1698e.p1699b.AbstractC25209a.C25212c<java.lang.Long> r10, s1.w.d<? super java.util.List<java.lang.Long>> r11) {
        /*
            Method dump skipped, instructions count: 396
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p526c.p530f.C9997i.m26947g(long, e.q.e.b.a$c, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01fc A[LOOP:1: B:38:0x01f3->B:40:0x01fc, LOOP_END] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m26946h(com.truecaller.insights.models.pdo.ParsedDataObject r7, java.util.List<? extends com.truecaller.insights.models.pdo.ParsedDataObject> r8, int r9, java.util.Set<java.lang.Long> r10, s1.w.d<? super s1.s> r11) {
        /*
            Method dump skipped, instructions count: 536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p526c.p530f.C9997i.m26946h(com.truecaller.insights.models.pdo.ParsedDataObject, java.util.List, int, java.util.Set, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x02eb  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01c2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01b7 A[SYNTHETIC] */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m26945i(com.truecaller.insights.models.pdo.ParsedDataObject r8, java.util.List<? extends com.truecaller.insights.models.pdo.ParsedDataObject> r9, int r10, java.util.Set<java.lang.Long> r11, s1.w.d<? super s1.s> r12) {
        /*
            Method dump skipped, instructions count: 754
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p526c.p530f.C9997i.m26945i(com.truecaller.insights.models.pdo.ParsedDataObject, java.util.List, int, java.util.Set, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02cb  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02d6  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02f5  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0309  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x030e  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0328  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x032d  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0333  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0347  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x035b  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0360  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0366  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x037a  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x037f  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0385  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0399  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x039e  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x03a4  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x03b8  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x03bd  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x03da  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x03e0  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x03f0  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0401  */
    /* JADX WARN: Removed duplicated region for block: B:176:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x025a  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02ac  */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m26944j(com.truecaller.insights.models.pdo.ParsedDataObject r8, com.truecaller.insights.models.pdo.ParsedDataObject r9, int r10) {
        /*
            Method dump skipped, instructions count: 1037
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p526c.p530f.C9997i.m26944j(com.truecaller.insights.models.pdo.ParsedDataObject, com.truecaller.insights.models.pdo.ParsedDataObject, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00bb, code lost:
        if (s1.z.c.l.a(r7.getState(), "MERGED_SELF_TRANSFER") != false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0137, code lost:
        if (s1.z.c.l.a(r7.getState(), "MERGED_SELF_TRANSFER") != false) goto L38;
     */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m26943k(com.truecaller.insights.models.pdo.ParsedDataObject r6, com.truecaller.insights.models.pdo.ParsedDataObject r7, java.util.List<? extends com.truecaller.insights.models.pdo.ParsedDataObject> r8, int r9) {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p526c.p530f.C9997i.m26943k(com.truecaller.insights.models.pdo.ParsedDataObject, com.truecaller.insights.models.pdo.ParsedDataObject, java.util.List, int):void");
    }

    /* renamed from: l */
    public final String m26942l(String str, String str2) {
        if (!(str.length() > 0)) {
            str = str2;
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x01b7, code lost:
        if (r8.getCreatedAt().compareTo(r12) > 0) goto L59;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0087  */
    /* JADX WARN: Type inference failed for: r0v98, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r7v0, types: [e.a.c.c.f.i] */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m26941m(com.truecaller.insights.models.pdo.ParsedDataObject r8, java.util.List<? extends com.truecaller.insights.models.pdo.ParsedDataObject> r9, int r10, java.util.Set<java.lang.Long> r11, java.util.Date r12, s1.w.d<? super java.util.List<? extends com.truecaller.insights.models.pdo.ParsedDataObject>> r13) {
        /*
            Method dump skipped, instructions count: 525
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p526c.p530f.C9997i.m26941m(com.truecaller.insights.models.pdo.ParsedDataObject, java.util.List, int, java.util.Set, java.util.Date, s1.w.d):java.lang.Object");
    }
}
