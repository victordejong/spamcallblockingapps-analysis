package p193e.p194a.p773g.p774a.p777c;

import com.truecaller.acs.C2778R;
import com.truecaller.acs.analytics.AnalyticsContext;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p773g.p785j.C14318y;
import q3.a.i0;
import q3.a.j0;
import s1.o;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.g.a.c.e */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/c/e.class */
public final class C14179e extends AbstractC20574a<AbstractC14178d> implements AbstractC14177c {

    /* renamed from: d */
    public String f40916d;

    /* renamed from: e */
    public String f40917e;

    /* renamed from: f */
    public String f40918f;

    /* renamed from: g */
    public long f40919g = -1;

    /* renamed from: h */
    public long f40920h = -1;

    /* renamed from: i */
    public String f40921i;

    /* renamed from: j */
    public final C14318y f40922j;

    @e(c = "com.truecaller.acs.ui.reply.AfterCallReplyPresenter$onSendReplyClicked$1", f = "AfterCallReplyPresenter.kt", l = {58}, m = "invokeSuspend")
    /* renamed from: e.a.g.a.c.e$a */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/c/e$a.class */
    public static final class C14180a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f40923e;

        /* renamed from: g */
        public final /* synthetic */ String f40925g;

        /* renamed from: h */
        public final /* synthetic */ int f40926h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14180a(String str, int i, d dVar) {
            super(2, dVar);
            C14179e.this = r5;
            this.f40925g = str;
            this.f40926h = i;
        }

        /* renamed from: i */
        public final d<s> m20603i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C14180a(this.f40925g, this.f40926h, dVar);
        }

        /* renamed from: k */
        public final Object m20602k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C14180a(this.f40925g, this.f40926h, dVar).m20601s(s.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v20, types: [long] */
        /* JADX WARN: Type inference failed for: r0v23, types: [long] */
        /* JADX WARN: Type inference failed for: r16v0 */
        /* JADX WARN: Type inference failed for: r16v1 */
        /* JADX WARN: Type inference failed for: r16v2 */
        /* JADX WARN: Type inference failed for: r18v0 */
        /* JADX WARN: Type inference failed for: r18v1 */
        /* JADX WARN: Type inference failed for: r18v2 */
        /* JADX WARN: Type inference failed for: r1v0 */
        /* JADX WARN: Type inference failed for: r2v0 */
        /* renamed from: s */
        public final Object m20601s(Object obj) {
            a aVar = a.a;
            int i = this.f40923e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C14179e c14179e = C14179e.this;
                C14318y c14318y = c14179e.f40922j;
                String str = this.f40925g;
                String str2 = c14179e.f40916d;
                if (str2 == null) {
                    l.l("phoneNumber");
                    throw null;
                }
                String str3 = c14179e.f40918f;
                if (str3 == null) {
                    l.l("analyticsContext");
                    throw null;
                }
                int i2 = this.f40926h;
                this.f40923e = 1;
                Object m30450a = c14318y.f41407a.m30450a(str, str2, 1, str3, new Integer(i2), this);
                obj = m30450a;
                if (m30450a == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            o oVar = (o) obj;
            C14179e c14179e2 = C14179e.this;
            Long l = (Long) oVar.a;
            ?? longValue = l != null ? l.longValue() : true;
            Long l2 = (Long) oVar.b;
            ?? longValue2 = l2 != null ? l2.longValue() : true;
            c14179e2.m20604Kj(longValue == true ? 1L : 0L, longValue2 == true ? 1L : 0L, (Boolean) oVar.c, this.f40925g);
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C14179e(@Named("UI") f fVar, C14318y c14318y) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(c14318y, "replyHelper");
        this.f40922j = c14318y;
    }

    /* renamed from: Ij */
    public final boolean m20606Ij() {
        String str = this.f40918f;
        if (str != null) {
            return l.a(str, AnalyticsContext.FACS.getValue());
        }
        l.l("analyticsContext");
        throw null;
    }

    /* renamed from: Jj */
    public void m20605Jj(String str, int i) {
        l.e(str, "text");
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C14180a(str, i, null), 3, (Object) null);
    }

    /* renamed from: Kj */
    public final void m20604Kj(long j, long j2, Boolean bool, String str) {
        this.f40920h = j;
        this.f40919g = j2;
        Boolean bool2 = Boolean.FALSE;
        this.f40921i = l.a(bool, bool2) ? str : null;
        if (!l.a(bool, bool2)) {
            int i = (j == -1 || j2 == -1) ? C2778R.string.acs_reply_failed : C2778R.string.acs_reply_sent;
            AbstractC14178d abstractC14178d = (AbstractC14178d) this.f57683a;
            if (abstractC14178d == null) {
                return;
            }
            abstractC14178d.mo20608xq(i, str, m20606Ij());
            return;
        }
        AbstractC14178d abstractC14178d2 = (AbstractC14178d) this.f57683a;
        if (abstractC14178d2 == null) {
            return;
        }
        String str2 = this.f40916d;
        if (str2 == null) {
            l.l("phoneNumber");
            throw null;
        }
        String str3 = this.f40921i;
        String str4 = this.f40918f;
        if (str4 != null) {
            abstractC14178d2.mo20610sr(str2, str3, str4);
        } else {
            l.l("analyticsContext");
            throw null;
        }
    }
}
