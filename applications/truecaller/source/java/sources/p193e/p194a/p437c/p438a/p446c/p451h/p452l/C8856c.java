package p193e.p194a.p437c.p438a.p446c.p451h.p452l;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.models.AdapterItem;
import java.util.Objects;
import p1727n3.p1744b0.p1745a.AbstractC25615p;
import p193e.p194a.p372b0.p419m.p422c.AbstractC8511a;
import p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8662b;
import p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8670j;
import p193e.p194a.p437c.p438a.p479i.AbstractC9114h;
import p193e.p194a.p437c.p438a.p493l.AbstractC9235b;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p548h.AbstractC10258h;
import s1.z.c.l;
/* renamed from: e.a.c.a.c.h.l.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/h/l/c.class */
public final class C8856c extends AbstractC25615p<AdapterItem, RecyclerView.AbstractC0313c0> {

    /* renamed from: a */
    public final AbstractC10258h f26972a;

    /* renamed from: b */
    public final AbstractC8511a f26973b;

    /* renamed from: c */
    public final AbstractC9114h f26974c;

    /* renamed from: d */
    public final AbstractC9691j f26975d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8856c(AbstractC10258h abstractC10258h, AbstractC8511a abstractC8511a, AbstractC9114h abstractC9114h, AbstractC9691j abstractC9691j) {
        super(new C8855b());
        l.e(abstractC10258h, "messageLocator");
        l.e(abstractC8511a, "addressProfileLoader");
        l.e(abstractC9114h, "lifeCycleAwareAnalyticsLogger");
        l.e(abstractC9691j, "statusProvider");
        this.f26972a = abstractC10258h;
        this.f26973b = abstractC8511a;
        this.f26974c = abstractC9114h;
        this.f26975d = abstractC9691j;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemViewType(int i) {
        AdapterItem item = getItem(i);
        if (item instanceof AdapterItem.C4118j) {
            if (!(((AdapterItem.C4118j) item).f12882a instanceof AbstractC9235b.C9237b)) {
                throw new IllegalArgumentException("ViewHolder type not supported");
            }
            return C4078R.layout.finance_reminder_item;
        }
        throw new IllegalArgumentException("ViewHolder type not supported");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        l.e(abstractC0313c0, "holder");
        AdapterItem item = getItem(i);
        if (item instanceof AdapterItem.C4118j) {
            AbstractC9235b abstractC9235b = ((AdapterItem.C4118j) item).f12882a;
            if (!(abstractC0313c0 instanceof C8670j)) {
                throw new IllegalArgumentException("Not implemented for this type");
            }
            Objects.requireNonNull(abstractC9235b, "null cannot be cast to non-null type com.truecaller.insights.ui.models.BusinessTabItem.FinanceItem");
            ((C8670j) abstractC0313c0).m28120V4((AbstractC9235b.C9237b) abstractC9235b);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        l.e(viewGroup, "parent");
        if (i == C4078R.layout.finance_reminder_item) {
            return new C8670j(C8670j.m28121U4(viewGroup), this.f26972a, this.f26973b, this.f26974c, new C8662b("recent_transactions", "insights_tab", true), this.f26975d);
        }
        throw new IllegalArgumentException("Not implemented for this type");
    }
}
