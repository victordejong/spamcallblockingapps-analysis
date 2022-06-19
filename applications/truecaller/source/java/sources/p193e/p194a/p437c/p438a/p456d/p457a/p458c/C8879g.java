package p193e.p194a.p437c.p438a.p456d.p457a.p458c;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.financepage.models.FinanceTab;
import com.truecaller.insights.p168ui.models.AdapterItem;
import java.util.Objects;
import javax.inject.Inject;
import n3.z.w1;
import p193e.p194a.p372b0.p419m.p422c.AbstractC8511a;
import p193e.p194a.p437c.p438a.p439a.C8685b;
import p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8662b;
import p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8667g;
import p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8670j;
import p193e.p194a.p437c.p438a.p477g.C9014b0;
import p193e.p194a.p437c.p438a.p479i.AbstractC9114h;
import p193e.p194a.p437c.p438a.p493l.AbstractC9235b;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p548h.AbstractC10258h;
import s1.i;
import s1.z.c.l;
/* renamed from: e.a.c.a.d.a.c.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/d/a/c/g.class */
public final class C8879g extends w1<AdapterItem, RecyclerView.AbstractC0313c0> {

    /* renamed from: c */
    public FinanceTab f27045c;

    /* renamed from: d */
    public final AbstractC10258h f27046d;

    /* renamed from: e */
    public final AbstractC8511a f27047e;

    /* renamed from: f */
    public final AbstractC9114h f27048f;

    /* renamed from: g */
    public final AbstractC9691j f27049g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C8879g(AbstractC10258h abstractC10258h, AbstractC8511a abstractC8511a, AbstractC9114h abstractC9114h, AbstractC9691j abstractC9691j) {
        super(new C8685b());
        l.e(abstractC10258h, "messageLocator");
        l.e(abstractC8511a, "addressProfileLoader");
        l.e(abstractC9114h, "lifeCycleAwareAnalyticsLogger");
        l.e(abstractC9691j, "statusProvider");
        this.f27046d = abstractC10258h;
        this.f27047e = abstractC8511a;
        this.f27048f = abstractC9114h;
        this.f27049g = abstractC9691j;
    }

    public int getItemViewType(int i) {
        int i2;
        AdapterItem adapterItem = (AdapterItem) getItem(i);
        if (adapterItem instanceof AdapterItem.C4118j) {
            i2 = C4078R.layout.finance_reminder_item;
        } else if (!(adapterItem instanceof AdapterItem.C4112d)) {
            throw new IllegalArgumentException("ViewHolder type not supported");
        } else {
            i2 = C4078R.layout.date_header_item;
        }
        return i2;
    }

    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        l.e(abstractC0313c0, "holder");
        AdapterItem adapterItem = (AdapterItem) getItem(i);
        if (adapterItem instanceof AdapterItem.C4118j) {
            AbstractC9235b abstractC9235b = ((AdapterItem.C4118j) adapterItem).f12882a;
            Objects.requireNonNull(abstractC9235b, "null cannot be cast to non-null type com.truecaller.insights.ui.models.BusinessTabItem.FinanceItem");
            ((C8670j) abstractC0313c0).m28120V4((AbstractC9235b.C9237b) abstractC9235b);
        } else if (!(adapterItem instanceof AdapterItem.C4112d)) {
        } else {
            ((C8667g) abstractC0313c0).m28124V4((AdapterItem.C4112d) adapterItem);
        }
    }

    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        C8670j c8670j;
        String str;
        l.e(viewGroup, "parent");
        if (i == C4078R.layout.finance_reminder_item) {
            C9014b0 m28121U4 = C8670j.m28121U4(viewGroup);
            AbstractC10258h abstractC10258h = this.f27046d;
            AbstractC8511a abstractC8511a = this.f27047e;
            AbstractC9114h abstractC9114h = this.f27048f;
            FinanceTab financeTab = this.f27045c;
            if (financeTab == null) {
                l.l("financeTab");
                throw null;
            }
            int ordinal = financeTab.ordinal();
            if (ordinal == 0) {
                str = "all_tab";
            } else if (ordinal == 1) {
                str = "credit_tab";
            } else if (ordinal != 2) {
                throw new i();
            } else {
                str = "debit_tab";
            }
            c8670j = new C8670j(m28121U4, abstractC10258h, abstractC8511a, abstractC9114h, new C8662b("finance_page_transactions", str, false), this.f27049g);
        } else if (i != C4078R.layout.date_header_item) {
            throw new IllegalArgumentException("ViewHolder type not supported");
        } else {
            c8670j = new C8667g(C8667g.m28125U4(viewGroup), null, 2);
        }
        return c8670j;
    }
}
