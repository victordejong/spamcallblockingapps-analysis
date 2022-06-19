package p193e.p194a.p437c.p438a.p446c.p451h.p452l;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.models.AdapterItem;
import java.util.Objects;
import p1727n3.p1744b0.p1745a.AbstractC25615p;
import p193e.p194a.p372b0.p419m.p422c.AbstractC8511a;
import p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8662b;
import p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8680r;
import p193e.p194a.p437c.p438a.p479i.AbstractC9114h;
import p193e.p194a.p437c.p438a.p493l.AbstractC9235b;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p548h.AbstractC10258h;
import s1.z.c.l;
/* renamed from: e.a.c.a.c.h.l.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/h/l/d.class */
public final class C8857d extends AbstractC25615p<AdapterItem, RecyclerView.AbstractC0313c0> {

    /* renamed from: a */
    public final AbstractC10258h f26976a;

    /* renamed from: b */
    public final AbstractC8511a f26977b;

    /* renamed from: c */
    public final AbstractC9114h f26978c;

    /* renamed from: d */
    public final AbstractC9691j f26979d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8857d(AbstractC10258h abstractC10258h, AbstractC8511a abstractC8511a, AbstractC9114h abstractC9114h, AbstractC9691j abstractC9691j) {
        super(new C8855b());
        l.e(abstractC10258h, "messageLocator");
        l.e(abstractC8511a, "addressProfileLoader");
        l.e(abstractC9114h, "lifeCycleAwareAnalyticsLogger");
        l.e(abstractC9691j, "statusProvider");
        this.f26976a = abstractC10258h;
        this.f26977b = abstractC8511a;
        this.f26978c = abstractC9114h;
        this.f26979d = abstractC9691j;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemViewType(int i) {
        AdapterItem item = getItem(i);
        if (item instanceof AdapterItem.C4118j) {
            if (!(((AdapterItem.C4118j) item).f12882a instanceof AbstractC9235b.C9243h)) {
                throw new IllegalArgumentException("ViewHolder type not supported");
            }
            return C4078R.layout.update_item;
        }
        throw new IllegalArgumentException("ViewHolder type not supported");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        l.e(abstractC0313c0, "holder");
        AdapterItem item = getItem(i);
        if (item instanceof AdapterItem.C4118j) {
            AbstractC9235b abstractC9235b = ((AdapterItem.C4118j) item).f12882a;
            if (!(abstractC0313c0 instanceof C8680r)) {
                throw new IllegalArgumentException("Not implemented for this type");
            }
            Objects.requireNonNull(abstractC9235b, "null cannot be cast to non-null type com.truecaller.insights.ui.models.BusinessTabItem.UpdateItem");
            ((C8680r) abstractC0313c0).m28116V4((AbstractC9235b.C9243h) abstractC9235b);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        l.e(viewGroup, "parent");
        if (i == C4078R.layout.update_item) {
            return new C8680r(C8680r.m28117U4(viewGroup), this.f26976a, this.f26977b, this.f26978c, new C8662b("recent_updates", "insights_tab", false), this.f26979d);
        }
        throw new IllegalArgumentException("Not implemented for this type");
    }
}
