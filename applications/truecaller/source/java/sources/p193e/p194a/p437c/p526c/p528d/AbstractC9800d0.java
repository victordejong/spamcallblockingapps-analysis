package p193e.p194a.p437c.p526c.p528d;

import com.truecaller.insights.models.enrichment.linking.LinkPruneMap;
import com.truecaller.insights.models.pdo.ExtendedPdo;
import com.truecaller.insights.models.pdo.ParsedDataObject;
import com.truecaller.insights.models.pdo.SmsBackup;
import com.truecaller.insights.models.pdo.SmsBackupMessage;
import java.util.Date;
import java.util.List;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import q3.a.x2.f;
import s1.s;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.c.c.d.d0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/d/d0.class */
public abstract class AbstractC9800d0 {

    /* renamed from: e.a.c.c.d.d0$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/d0$a.class */
    public static final class C9801a {

        /* renamed from: a */
        public final int f29440a;

        /* renamed from: b */
        public final long f29441b;

        public C9801a(int i, long j) {
            this.f29440a = i;
            this.f29441b = j;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C9801a)) {
                    return false;
                }
                C9801a c9801a = (C9801a) obj;
                return this.f29440a == c9801a.f29440a && this.f29441b == c9801a.f29441b;
            }
            return true;
        }

        public int hashCode() {
            return (this.f29440a * 31) + C4876d.m34274a(this.f29441b);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("AccountModelReferences(count=");
            m8728C.append(this.f29440a);
            m8728C.append(", accountModelId=");
            return C22128a.m8693K2(m8728C, this.f29441b, ")");
        }
    }

    @e(c = "com.truecaller.insights.database.dao.PdoDao", f = "PdoDao.kt", l = {197}, m = "deletePdoBackUpAndAccounts$suspendImpl")
    /* renamed from: e.a.c.c.d.d0$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/d0$b.class */
    public static final class C9802b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29442d;

        /* renamed from: e */
        public int f29443e;

        /* renamed from: g */
        public Object f29445g;

        /* renamed from: h */
        public Object f29446h;

        /* renamed from: i */
        public Object f29447i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9802b(d dVar) {
            super(dVar);
            AbstractC9800d0.this = r4;
        }

        /* renamed from: s */
        public final Object m27150s(Object obj) {
            this.f29442d = obj;
            this.f29443e |= Integer.MIN_VALUE;
            return AbstractC9800d0.m27151e(AbstractC9800d0.this, null, null, this);
        }
    }

    @e(c = "com.truecaller.insights.database.dao.PdoDao", f = "PdoDao.kt", l = {647, 648, 649, 651, 657, 658, 659}, m = "nukeAllData$insights_release$suspendImpl")
    /* renamed from: e.a.c.c.d.d0$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/d0$c.class */
    public static final class C9803c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29448d;

        /* renamed from: e */
        public int f29449e;

        /* renamed from: g */
        public Object f29451g;

        /* renamed from: h */
        public Object f29452h;

        /* renamed from: i */
        public Object f29453i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9803c(d dVar) {
            super(dVar);
            AbstractC9800d0.this = r4;
        }

        /* renamed from: s */
        public final Object m27149s(Object obj) {
            this.f29448d = obj;
            this.f29449e |= Integer.MIN_VALUE;
            return AbstractC9800d0.m27152c0(AbstractC9800d0.this, null, null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x022d  */
    /* renamed from: c0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object m27152c0(p193e.p194a.p437c.p526c.p528d.AbstractC9800d0 r5, p193e.p194a.p437c.p526c.p528d.AbstractC9945s r6, p193e.p194a.p437c.p526c.p528d.AbstractC9921m0 r7, s1.w.d r8) {
        /*
            Method dump skipped, instructions count: 564
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p526c.p528d.AbstractC9800d0.m27152c0(e.a.c.c.d.d0, e.a.c.c.d.s, e.a.c.c.d.m0, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0136 A[LOOP:1: B:30:0x012d->B:32:0x0136, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x015c  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object m27151e(p193e.p194a.p437c.p526c.p528d.AbstractC9800d0 r6, java.util.List r7, p193e.p194a.p437c.p526c.p528d.AbstractC9793c r8, s1.w.d r9) {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p526c.p528d.AbstractC9800d0.m27151e(e.a.c.c.d.d0, java.util.List, e.a.c.c.d.c, s1.w.d):java.lang.Object");
    }

    /* renamed from: A */
    public abstract Object mo27148A(Date date, long j, d<? super List<Long>> dVar);

    /* renamed from: B */
    public abstract Object mo27147B(Date date, d<? super List<Long>> dVar);

    /* renamed from: C */
    public abstract f<List<ExtendedPdo>> mo27146C(Date date);

    /* renamed from: D */
    public abstract Object mo27145D(long j, d<? super ParsedDataObject> dVar);

    /* renamed from: E */
    public abstract List<ParsedDataObject> mo27144E(Set<Long> set);

    /* renamed from: F */
    public abstract List<ParsedDataObject> mo27143F(Set<Long> set);

    /* renamed from: G */
    public abstract ExtendedPdo mo27142G(long j);

    /* renamed from: H */
    public abstract Object mo27141H(long j, int i, d<? super List<ExtendedPdo>> dVar);

    /* renamed from: I */
    public abstract Object mo27140I(long j, long j2, long j3, d<? super List<ExtendedPdo>> dVar);

    /* renamed from: J */
    public abstract List<ParsedDataObject> mo27139J(long j);

    /* renamed from: K */
    public abstract Object mo27138K(List<String> list, long j, int i, d<? super List<ExtendedPdo>> dVar);

    /* renamed from: L */
    public abstract Object mo27137L(List<String> list, long j, long j2, long j3, d<? super List<ExtendedPdo>> dVar);

    /* renamed from: M */
    public abstract Object mo27136M(List<String> list, Date date, int i, d<? super List<? extends ParsedDataObject>> dVar);

    /* renamed from: N */
    public abstract Object mo27135N(String str, long j, List<Integer> list, d<? super List<ExtendedPdo>> dVar);

    /* renamed from: O */
    public abstract Object mo27134O(long j, d<? super SmsBackupMessage> dVar);

    /* renamed from: P */
    public abstract void mo27133P(List<LinkPruneMap> list);

    /* renamed from: Q */
    public abstract void mo27132Q(List<? extends SmsBackup> list);

    /* renamed from: R */
    public abstract long mo27131R(ParsedDataObject parsedDataObject);

    /* renamed from: S */
    public abstract void mo27130S(List<? extends ParsedDataObject> list);

    /* renamed from: T */
    public abstract List<Long> mo27129T(List<? extends ParsedDataObject> list);

    /* renamed from: U */
    public void mo27128U(List<? extends ParsedDataObject> list) {
        l.e(list, "pdoList");
        mo27129T(list);
    }

    /* renamed from: V */
    public abstract f<List<ExtendedPdo>> mo27127V(long j, long j2, List<String> list);

    /* renamed from: W */
    public abstract f<List<ExtendedPdo>> mo27126W(long j, long j2, String str);

    /* renamed from: X */
    public abstract f<List<ExtendedPdo>> mo27125X(long j, long j2, List<String> list);

    /* renamed from: Y */
    public abstract f<List<ExtendedPdo>> mo27124Y(long j, long j2, List<String> list);

    /* renamed from: Z */
    public abstract f<List<ExtendedPdo>> mo27123Z(long j, long j2, String str);

    /* renamed from: a */
    public abstract void mo27122a(Set<Long> set, String str);

    /* renamed from: a0 */
    public abstract f<List<ExtendedPdo>> mo27121a0(long j, long j2, String str);

    /* renamed from: b */
    public abstract void mo27120b(List<Long> list);

    /* renamed from: b0 */
    public Object mo27119b0(AbstractC9945s abstractC9945s, AbstractC9921m0 abstractC9921m0, d<? super s> dVar) {
        return m27152c0(this, abstractC9945s, abstractC9921m0, dVar);
    }

    /* renamed from: c */
    public abstract void mo27118c(List<Long> list);

    /* renamed from: d */
    public Object mo27117d(List<Long> list, AbstractC9793c abstractC9793c, d<? super s> dVar) {
        return m27151e(this, list, abstractC9793c, dVar);
    }

    /* renamed from: d0 */
    public abstract Object mo27116d0(d<? super s> dVar);

    /* renamed from: e0 */
    public abstract Object mo27115e0(d<? super s> dVar);

    /* renamed from: f */
    public abstract void mo27114f(List<Long> list);

    /* renamed from: f0 */
    public abstract void mo27113f0(List<Long> list);

    /* renamed from: g */
    public abstract void mo27112g(List<Long> list);

    /* renamed from: g0 */
    public abstract void mo27111g0();

    /* renamed from: h */
    public abstract void mo27110h(List<Long> list);

    /* renamed from: h0 */
    public Object mo27109h0(List<Long> list, d<? super s> dVar) {
        mo27101l0(list);
        mo27112g(list);
        mo27118c(list);
        mo27113f0(list);
        return s.a;
    }

    /* renamed from: i */
    public abstract void mo27108i(List<Long> list);

    /* renamed from: i0 */
    public abstract void mo27107i0();

    /* renamed from: j */
    public abstract Object mo27106j(List<Long> list, d<? super List<Long>> dVar);

    /* renamed from: j0 */
    public Object mo27105j0(d<? super s> dVar) {
        mo27103k0("ORIGINAL");
        mo27107i0();
        mo27111g0();
        return s.a;
    }

    /* renamed from: k */
    public abstract List<C9801a> mo27104k(List<Long> list, List<Long> list2);

    /* renamed from: k0 */
    public abstract void mo27103k0(String str);

    /* renamed from: l */
    public abstract List<ParsedDataObject> mo27102l(Date date, int i, List<String> list, List<String> list2);

    /* renamed from: l0 */
    public abstract void mo27101l0(List<Long> list);

    /* renamed from: m */
    public abstract List<ParsedDataObject> mo27100m();

    /* renamed from: m0 */
    public abstract void mo27099m0(List<Long> list, int i);

    /* renamed from: n */
    public abstract List<ParsedDataObject> mo27098n(String str);

    /* renamed from: n0 */
    public abstract void mo27097n0(List<Long> list, List<Long> list2, int i);

    /* renamed from: o */
    public abstract List<ParsedDataObject> mo27096o();

    /* renamed from: p */
    public abstract List<ParsedDataObject> mo27095p(Date date, List<String> list, int i, List<String> list2);

    /* renamed from: q */
    public abstract List<Long> mo27094q(List<Long> list);

    /* renamed from: r */
    public abstract List<Long> mo27093r(List<Long> list);

    /* renamed from: s */
    public abstract Object mo27092s(String str, d<? super List<? extends ParsedDataObject>> dVar);

    /* renamed from: t */
    public abstract int mo27091t(Date date, List<String> list, List<String> list2);

    /* renamed from: u */
    public abstract int mo27090u(Date date, List<String> list, List<String> list2);

    /* renamed from: v */
    public abstract Object mo27089v(d<? super Date> dVar);

    /* renamed from: w */
    public abstract Object mo27088w(List<String> list, d<? super Date> dVar);

    /* renamed from: x */
    public abstract List<LinkPruneMap> mo27087x(long j, long j2, String str);

    /* renamed from: y */
    public abstract Object mo27086y(d<? super Date> dVar);

    /* renamed from: z */
    public abstract Object mo27085z(Date date, d<? super List<String>> dVar);
}
