package p193e.p194a.p437c.p438a.p514q.p517c.p518c;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.models.AdapterItem;
import java.util.Objects;
import javax.inject.Inject;
import n3.z.w1;
import p193e.p194a.p372b0.p419m.p422c.AbstractC8511a;
import p193e.p194a.p437c.p438a.p439a.C8685b;
import p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8662b;
import p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8667g;
import p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8680r;
import p193e.p194a.p437c.p438a.p479i.AbstractC9114h;
import p193e.p194a.p437c.p438a.p493l.AbstractC9235b;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p548h.AbstractC10258h;
import s1.z.c.l;
/* renamed from: e.a.c.a.q.c.c.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/q/c/c/a.class */
public final class C9575a extends w1<AdapterItem, RecyclerView.AbstractC0313c0> {

    /* renamed from: c */
    public final AbstractC10258h f28981c;

    /* renamed from: d */
    public final AbstractC8511a f28982d;

    /* renamed from: e */
    public final AbstractC9114h f28983e;

    /* renamed from: f */
    public final AbstractC9691j f28984f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C9575a(AbstractC10258h abstractC10258h, AbstractC8511a abstractC8511a, AbstractC9114h abstractC9114h, AbstractC9691j abstractC9691j) {
        super(new C8685b());
        l.e(abstractC10258h, "messageLocator");
        l.e(abstractC8511a, "addressProfileLoader");
        l.e(abstractC9114h, "lifeCycleAwareAnalyticsLogger");
        l.e(abstractC9691j, "statusProvider");
        this.f28981c = abstractC10258h;
        this.f28982d = abstractC8511a;
        this.f28983e = abstractC9114h;
        this.f28984f = abstractC9691j;
    }

    public int getItemViewType(int i) {
        int i2;
        AdapterItem adapterItem = (AdapterItem) getItem(i);
        if (adapterItem instanceof AdapterItem.C4118j) {
            i2 = C4078R.layout.update_item;
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
            Objects.requireNonNull(abstractC9235b, "null cannot be cast to non-null type com.truecaller.insights.ui.models.BusinessTabItem.UpdateItem");
            ((C8680r) abstractC0313c0).m28116V4((AbstractC9235b.C9243h) abstractC9235b);
        } else if (!(adapterItem instanceof AdapterItem.C4112d)) {
        } else {
            ((C8667g) abstractC0313c0).m28124V4((AdapterItem.C4112d) adapterItem);
        }
    }

    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        C8680r c8680r;
        l.e(viewGroup, "parent");
        if (i == C4078R.layout.update_item) {
            c8680r = new C8680r(C8680r.m28117U4(viewGroup), this.f28981c, this.f28982d, this.f28983e, new C8662b("updates_page_item", "updates_page", false), this.f28984f);
        } else if (i != C4078R.layout.date_header_item) {
            throw new IllegalArgumentException("ViewHolder type not supported");
        } else {
            c8680r = new C8667g(C8667g.m28125U4(viewGroup), null, 2);
        }
        return c8680r;
    }
}
