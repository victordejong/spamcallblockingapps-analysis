package p193e.p194a.p372b0.p373a;

import com.truecaller.common.p156ui.C3700R;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.b0.a.d */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/d.class */
public final class C8289d extends C8243a {

    /* renamed from: V */
    public final g f25557V;

    /* renamed from: W */
    public final g f25558W;

    /* renamed from: e.a.b0.a.d$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b0/a/d$a.class */
    public static final class C8290a extends m implements a<Integer> {

        /* renamed from: b */
        public final /* synthetic */ int f25559b;

        /* renamed from: c */
        public final /* synthetic */ Object f25560c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8290a(int i, Object obj) {
            super(0);
            this.f25559b = i;
            this.f25560c = obj;
        }

        public final Object invoke() {
            int i = this.f25559b;
            if (i != 0) {
                if (i != 1) {
                    throw null;
                }
                return Integer.valueOf(((AbstractC19233h0) this.f25560c).mo13769a(C3700R.color.tcx_textPrimary_dark));
            }
            return Integer.valueOf(((AbstractC19233h0) this.f25560c).mo13769a(C3700R.color.tcx_brandBackgroundBlue_light));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8289d(AbstractC19233h0 abstractC19233h0) {
        super(abstractC19233h0);
        l.e(abstractC19233h0, "resourceProvider");
        this.f25557V = C25225a.m3978P1(new C8290a(1, abstractC19233h0));
        this.f25558W = C25225a.m3978P1(new C8290a(0, abstractC19233h0));
    }

    @Override // p193e.p194a.p372b0.p373a.p376b.C8243a
    /* renamed from: ak */
    public int mo28686ak() {
        return ((Number) this.f25557V.getValue()).intValue();
    }

    @Override // p193e.p194a.p372b0.p373a.p376b.C8243a
    /* renamed from: ck */
    public int mo28685ck() {
        return ((Number) this.f25558W.getValue()).intValue();
    }

    @Override // p193e.p194a.p372b0.p373a.p376b.C8243a
    /* renamed from: dk */
    public int mo28684dk() {
        return ((Number) this.f25557V.getValue()).intValue();
    }
}
