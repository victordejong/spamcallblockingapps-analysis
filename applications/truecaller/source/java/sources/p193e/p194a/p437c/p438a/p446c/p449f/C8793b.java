package p193e.p194a.p437c.p438a.p446c.p449f;

import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.financepage.view.FinanceActivity;
import com.truecaller.insights.p168ui.models.AdapterItem;
import com.truecaller.insights.utils.HideTrxTempState;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p446c.p450g.C8831a;
import p193e.p194a.p437c.p438a.p446c.p450g.C8832b;
import p193e.p194a.p437c.p438a.p446c.p450g.C8833c;
import p193e.p194a.p437c.p438a.p446c.p451h.p454m.C8867a;
import p193e.p194a.p437c.p438a.p456d.p461d.C8888a;
import p193e.p194a.p437c.p438a.p479i.AbstractC9107c;
import p193e.p194a.p437c.p438a.p493l.AbstractC9235b;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p579q.AbstractC10497d;
import p193e.p194a.p437c.p579q.C10496c;
import q3.a.x2.d1;
import s1.s;
import s1.w.f;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.c.a.c.f.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/f/b.class */
public final class C8793b extends AbstractC9107c<s, C8831a> {

    /* renamed from: b */
    public final AbstractC10497d f26827b;

    /* renamed from: c */
    public final f f26828c;

    /* renamed from: d */
    public final AbstractC9691j f26829d;

    /* renamed from: e */
    public final AbstractC10028o f26830e;

    /* renamed from: f */
    public final C8888a f26831f;

    /* renamed from: g */
    public final AbstractC10060c f26832g;

    /* renamed from: e.a.c.a.c.f.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/c/f/b$a.class */
    public static final class C8794a extends m implements l<Context, s> {

        /* renamed from: b */
        public static final C8794a f26833b = new C8794a();

        public C8794a() {
            super(1);
        }

        /* renamed from: d */
        public Object m28062d(Object obj) {
            Context context = (Context) obj;
            s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
            context.startActivity(new Intent(context, FinanceActivity.class));
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C8793b(AbstractC10497d abstractC10497d, @Named("IO") f fVar, AbstractC9691j abstractC9691j, AbstractC10028o abstractC10028o, C8888a c8888a, AbstractC10060c abstractC10060c) {
        super(fVar);
        s1.z.c.l.e(abstractC10497d, "businessInsightsManager");
        s1.z.c.l.e(fVar, "ioContext");
        s1.z.c.l.e(abstractC9691j, "insightsStatusProvider");
        s1.z.c.l.e(abstractC10028o, "insightsConfig");
        s1.z.c.l.e(c8888a, "financeBoundaryUseCase");
        s1.z.c.l.e(abstractC10060c, "analyticsManager");
        this.f26827b = abstractC10497d;
        this.f26828c = fVar;
        this.f26829d = abstractC9691j;
        this.f26830e = abstractC10028o;
        this.f26831f = c8888a;
        this.f26832g = abstractC10060c;
    }

    @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9107c
    /* renamed from: a */
    public C8831a mo27441a() {
        return new C8831a(new AdapterItem.C4117i(C4078R.string.transactions, null, 0L, m28064d(0), null, null, null, 86), null);
    }

    @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9107c
    /* renamed from: b */
    public q3.a.x2.f<C8831a> mo27440b(s sVar) {
        s1.z.c.l.e(sVar, "input");
        return new d1(new C8790a(this, null));
    }

    /* renamed from: d */
    public final C8833c m28064d(int i) {
        return (!this.f26829d.mo27235y() || i <= 0) ? null : new C8833c(C4078R.string.view_all, C8794a.f26833b);
    }

    /* renamed from: e */
    public final C8831a m28063e(List<C10496c> list) {
        s1.z.c.l.e(list, "items");
        int i = C4078R.string.transactions;
        boolean z = true;
        Integer valueOf = list.isEmpty() ^ true ? Integer.valueOf(C4078R.string.finance_subtitle) : null;
        C8833c m28064d = m28064d(list.size());
        Integer valueOf2 = !this.f26830e.mo26832l0() ? Integer.valueOf(C4078R.string.tap_to_hide_transactions) : null;
        boolean isEmpty = list.isEmpty();
        C8832b c8832b = null;
        if (this.f26829d.mo27270Y()) {
            c8832b = null;
            if (!isEmpty) {
                HideTrxTempState mo26881D = this.f26830e.mo26881D();
                if (mo26881D.isDefault()) {
                    z = this.f26830e.mo26834k0();
                } else if (mo26881D.isShown()) {
                    z = false;
                }
                c8832b = new C8832b(z ? C4078R.string.show_trx : C4078R.string.hide_trx, z ? C4078R.C4079drawable.ic_item_shown : C4078R.C4079drawable.ic_item_hidden, new C8795c(this));
            }
        }
        AdapterItem.C4117i c4117i = new AdapterItem.C4117i(i, valueOf, 0L, m28064d, c8832b, null, valueOf2, 4);
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (C10496c c10496c : list) {
            arrayList.add(new AdapterItem.C4118j(C8867a.m27995d(c10496c), 0L, 2));
        }
        return new C8831a(c4117i, new AbstractC9235b.C9236a(-12121L, arrayList));
    }
}
