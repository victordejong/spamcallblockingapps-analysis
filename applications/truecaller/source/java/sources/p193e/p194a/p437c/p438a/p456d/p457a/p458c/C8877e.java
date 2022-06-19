package p193e.p194a.p437c.p438a.p456d.p457a.p458c;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.insights.p168ui.C4078R;
import p1727n3.p1744b0.p1745a.AbstractC25615p;
import p193e.p194a.p437c.p438a.p477g.C9011a1;
import p193e.p194a.p437c.p438a.p493l.C9234a;
import s1.z.c.l;
/* renamed from: e.a.c.a.d.a.c.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/d/a/c/e.class */
public final class C8877e extends AbstractC25615p<C9234a, C8875c> {

    /* renamed from: a */
    public final AbstractC8876d f27043a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8877e(AbstractC8876d abstractC8876d) {
        super(new C8873a());
        l.e(abstractC8876d, "onFilterDismissedListener");
        this.f27043a = abstractC8876d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        C8875c c8875c = (C8875c) abstractC0313c0;
        l.e(c8875c, "holder");
        C9234a item = getItem(i);
        l.d(item, "getItem(position)");
        C9234a c9234a = item;
        AbstractC8876d abstractC8876d = this.f27043a;
        l.e(c9234a, "accountUiModel");
        l.e(abstractC8876d, "clickListener");
        C9011a1 c9011a1 = c8875c.f27042a;
        TextView textView = c9011a1.f27370b;
        l.d(textView, "filterName");
        textView.setText(c9234a.f28028b);
        c9011a1.f27369a.setOnClickListener(new View$OnClickListenerC8874b(c9234a, abstractC8876d));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        l.e(viewGroup, "parent");
        l.e(viewGroup, "parent");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(C4078R.layout.layout_dismissable_chip, viewGroup, false);
        int i2 = C4078R.C4080id.filterName;
        TextView textView = (TextView) inflate.findViewById(i2);
        if (textView != null) {
            C9011a1 c9011a1 = new C9011a1((LinearLayout) inflate, textView);
            l.d(c9011a1, "LayoutDismissableChipBin….context), parent, false)");
            return new C8875c(c9011a1);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
    }
}
