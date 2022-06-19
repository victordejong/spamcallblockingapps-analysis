package p193e.p194a.p437c.p438a.p456d.p457a;

import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.lifecycle.LiveData;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.insights.p168ui.financepage.models.FinanceTab;
import com.truecaller.insights.p168ui.models.AdapterItem;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.v.i0;
import p1727n3.p1868v.AbstractC27012l0;
import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.C27010k0;
import p1727n3.p1868v.C27020r;
import p1727n3.p1909z.AbstractC27592q1;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p456d.p461d.AbstractC8890c;
import p193e.p194a.p437c.p438a.p456d.p461d.C8925j;
import p193e.p194a.p437c.p438a.p479i.AbstractC9114h;
import p193e.p194a.p437c.p438a.p479i.C9116j;
import p193e.p194a.p437c.p438a.p493l.C9234a;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0006\b\u0007\u0018��2\u00020\u0001B1\b\u0007\u0012\u0006\u0010;\u001a\u000208\u0012\u0006\u0010\u001c\u001a\u00020\u0019\u0012\u0006\u0010?\u001a\u00020<\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u00107\u001a\u000204¢\u0006\u0004\bD\u0010EJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J#\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002¢\u0006\u0004\b\b\u0010\tR\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\"\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u000f0\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\"\u0010\u0018\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u000f0\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0012R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u001d0%8\u0006@\u0006¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u001c\u0010.\u001a\b\u0012\u0004\u0012\u00020\u001d0+8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R\"\u00100\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u0010\u0012R\"\u00102\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050+8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u0010-R\"\u00103\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u000f0\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0012R\u0016\u00107\u001a\u0002048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u0010;\u001a\u0002088\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010:R\u0016\u0010?\u001a\u00020<8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>R\u001c\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00060@8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u0010B¨\u0006F"}, d2 = {"Le/a/c/a/d/a/a;", "Ln3/v/y0;", "Ls1/s;", "d", "()V", "", "Le/a/c/a/l/a;", "accounts", AbstractC2405c.f7629a, "(Ljava/util/List;)Ljava/util/List;", "Le/a/c/c0/o;", "n", "Le/a/c/c0/o;", "insightConfig", "Ln3/v/i0;", "Ln3/z/q1;", "Lcom/truecaller/insights/ui/models/AdapterItem;", C22021b.f61237c, "Ln3/v/i0;", "allTrxLiveData", "Ln3/z/q1$c;", "a", "Ln3/z/q1$c;", DTBMetricsConfiguration.CONFIG_DIR, "debitTrxLiveData", "Le/a/c/a/i/h;", "l", "Le/a/c/a/i/h;", "lifeCycleAwareAnalyticsLogger", "", "j", "Z", "getSelectedChanged", "()Z", "setSelectedChanged", "(Z)V", "selectedChanged", "Landroidx/lifecycle/LiveData;", "i", "Landroidx/lifecycle/LiveData;", "getEmptyStateLv", "()Landroidx/lifecycle/LiveData;", "emptyStateLv", "Ln3/v/k0;", "h", "Ln3/v/k0;", "_emptyStateLv", "e", "accountsLiveData", "f", "filtersLiveData", "creditTrxLiveData", "Le/a/c/a/d/d/j;", "o", "Le/a/c/a/d/d/j;", "getFinanceAccountsUseCase", "Le/a/c/a/d/d/c;", "k", "Le/a/c/a/d/d/c;", "financeDataSourceRepo", "Le/a/c/a/i/j;", "m", "Le/a/c/a/i/j;", "analyticsUsecase", "", "g", "Ljava/util/List;", "selectedAccounts", "<init>", "(Le/a/c/a/d/d/c;Le/a/c/a/i/h;Le/a/c/a/i/j;Le/a/c/c0/o;Le/a/c/a/d/d/j;)V", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.d.a.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/d/a/a.class */
public final class C8869a extends AbstractC27040y0 {

    /* renamed from: a */
    public final AbstractC27592q1.C27595c f27023a = new AbstractC27592q1.C27595c(45, 45, false, 45, Integer.MAX_VALUE);

    /* renamed from: b */
    public final i0<AbstractC27592q1<AdapterItem>> f27024b = new i0<>();

    /* renamed from: c */
    public final i0<AbstractC27592q1<AdapterItem>> f27025c = new i0<>();

    /* renamed from: d */
    public final i0<AbstractC27592q1<AdapterItem>> f27026d = new i0<>();

    /* renamed from: e */
    public final i0<List<C9234a>> f27027e = new i0<>();

    /* renamed from: f */
    public final C27010k0<List<C9234a>> f27028f = new C27010k0<>();

    /* renamed from: g */
    public final List<C9234a> f27029g = new ArrayList();

    /* renamed from: h */
    public final C27010k0<Boolean> f27030h;

    /* renamed from: i */
    public final LiveData<Boolean> f27031i;

    /* renamed from: j */
    public boolean f27032j;

    /* renamed from: k */
    public final AbstractC8890c f27033k;

    /* renamed from: l */
    public final AbstractC9114h f27034l;

    /* renamed from: m */
    public final C9116j f27035m;

    /* renamed from: n */
    public final AbstractC10028o f27036n;

    /* renamed from: o */
    public final C8925j f27037o;

    @e(c = "com.truecaller.insights.ui.financepage.presentation.FinancePageViewModel$configureLiveData$4", f = "FinancePageViewModel.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.d.a.a$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/a/a$b.class */
    public static final class C8870b extends i implements p<q3.a.i0, d<? super s>, Object> {

        /* renamed from: e.a.c.a.d.a.a$b$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/a/a$b$a.class */
        public static final class C8871a<T> implements AbstractC27012l0<List<? extends C9234a>> {
            public C8871a() {
                C8870b.this = r4;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // p1727n3.p1868v.AbstractC27012l0
            public void onChanged(List<? extends C9234a> list) {
                List<? extends C9234a> list2 = list;
                C8869a c8869a = C8869a.this;
                i0<List<C9234a>> i0Var = c8869a.f27027e;
                l.d(list2, "it");
                i0Var.mo1000l(c8869a.m27992c(list2));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8870b(d dVar) {
            super(2, dVar);
            C8869a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m27990i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8870b(dVar);
        }

        /* renamed from: k */
        public final Object m27989k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C8870b c8870b = new C8870b(dVar);
            s sVar = s.a;
            c8870b.m27988s(sVar);
            return sVar;
        }

        /* renamed from: s */
        public final Object m27988s(Object obj) {
            C25225a.m3932a3(obj);
            C8869a c8869a = C8869a.this;
            i0<List<C9234a>> i0Var = c8869a.f27027e;
            C8925j c8925j = c8869a.f27037o;
            s sVar = s.a;
            i0Var.m(C27020r.m995a(c8925j.m27874c(sVar), null, 0L, 3), new C8871a());
            return sVar;
        }
    }

    @Inject
    public C8869a(AbstractC8890c abstractC8890c, AbstractC9114h abstractC9114h, C9116j c9116j, AbstractC10028o abstractC10028o, C8925j c8925j) {
        l.e(abstractC8890c, "financeDataSourceRepo");
        l.e(abstractC9114h, "lifeCycleAwareAnalyticsLogger");
        l.e(c9116j, "analyticsUsecase");
        l.e(abstractC10028o, "insightConfig");
        l.e(c8925j, "getFinanceAccountsUseCase");
        this.f27033k = abstractC8890c;
        this.f27034l = abstractC9114h;
        this.f27035m = c9116j;
        this.f27036n = abstractC10028o;
        this.f27037o = c8925j;
        C27010k0<Boolean> c27010k0 = new C27010k0<>(Boolean.TRUE);
        this.f27030h = c27010k0;
        this.f27031i = c27010k0;
        m27991d();
    }

    /* renamed from: c */
    public final List<C9234a> m27992c(List<C9234a> list) {
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (C9234a c9234a : list) {
            int indexOf = this.f27029g.indexOf(c9234a);
            arrayList.add(indexOf == -1 ? C9234a.m27783a(c9234a, null, null, null, null, false, null, false, 111) : this.f27029g.get(indexOf));
        }
        return arrayList;
    }

    /* renamed from: d */
    public final void m27991d() {
        this.f27024b.m(MediaSessionCompat.m43305F1(C10480a.m26035P(this.f27033k, FinanceTab.ALL, this.f27029g, this.f27030h, null, 8, null), this.f27023a, null, null, null, 14), new a(0, this));
        this.f27025c.m(MediaSessionCompat.m43305F1(C10480a.m26035P(this.f27033k, FinanceTab.CREDIT, this.f27029g, null, null, 12, null), this.f27023a, null, null, null, 14), new a(1, this));
        this.f27026d.m(MediaSessionCompat.m43305F1(C10480a.m26035P(this.f27033k, FinanceTab.DEBIT, this.f27029g, null, null, 12, null), this.f27023a, null, null, null, 14), new a(2, this));
        s1.a.a.a.v0.f.d.w2(MediaSessionCompat.m43315C0(this), (f) null, (j0) null, new C8870b(null), 3, (Object) null);
    }
}
