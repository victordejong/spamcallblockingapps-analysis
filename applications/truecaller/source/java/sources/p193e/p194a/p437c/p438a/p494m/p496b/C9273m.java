package p193e.p194a.p437c.p438a.p494m.p496b;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.insights.p168ui.C4078R;
import p1727n3.p1744b0.p1745a.AbstractC25615p;
import p1727n3.p1744b0.p1745a.C25586h;
import p193e.p194a.p437c.p438a.p477g.C9072t0;
import p193e.p194a.p437c.p580r.p588i.C10566a;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.c.a.m.b.m */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/b/m.class */
public final class C9273m extends AbstractC25615p<C10566a, C9275n> {

    /* renamed from: e.a.c.a.m.b.m$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/b/m$a.class */
    public static final class C9274a extends C25586h.AbstractC25591e<C10566a> {
        @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25591e
        public boolean areContentsTheSame(C10566a c10566a, C10566a c10566a2) {
            C10566a c10566a3 = c10566a;
            C10566a c10566a4 = c10566a2;
            l.e(c10566a3, "oldItem");
            l.e(c10566a4, "newItem");
            return l.a(c10566a3, c10566a4);
        }

        @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25591e
        public boolean areItemsTheSame(C10566a c10566a, C10566a c10566a2) {
            C10566a c10566a3 = c10566a;
            C10566a c10566a4 = c10566a2;
            l.e(c10566a3, "oldItem");
            l.e(c10566a4, "newItem");
            return c10566a3.f31493a == c10566a4.f31493a;
        }
    }

    public C9273m() {
        super(new C9274a());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        C9275n c9275n = (C9275n) abstractC0313c0;
        l.e(c9275n, "holder");
        C10566a item = getItem(i);
        l.d(item, "getItem(position)");
        C10566a c10566a = item;
        l.e(c10566a, "item");
        TextView textView = c9275n.f28223a.f27683c;
        l.d(textView, "binding.senderTv");
        textView.setText(c10566a.f31494b);
        TextView textView2 = c9275n.f28223a.f27684d;
        l.d(textView2, "binding.type");
        textView2.setText(c10566a.f31499g.toString());
        TextView textView3 = c9275n.f28223a.f27682b;
        l.d(textView3, "binding.grammersTv");
        textView3.setText(i.O(c10566a.f31498f, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        l.e(viewGroup, "parent");
        l.e(viewGroup, "parent");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(C4078R.layout.item_sender_info_filter, viewGroup, false);
        int i2 = C4078R.C4080id.grammersTv;
        TextView textView = (TextView) inflate.findViewById(i2);
        if (textView != null) {
            i2 = C4078R.C4080id.senderTv;
            TextView textView2 = (TextView) inflate.findViewById(i2);
            if (textView2 != null) {
                i2 = C4078R.C4080id.textCategoryContainer;
                LinearLayout linearLayout = (LinearLayout) inflate.findViewById(i2);
                if (linearLayout != null) {
                    i2 = C4078R.C4080id.type;
                    TextView textView3 = (TextView) inflate.findViewById(i2);
                    if (textView3 != null) {
                        C9072t0 c9072t0 = new C9072t0((ConstraintLayout) inflate, textView, textView2, linearLayout, textView3);
                        l.d(c9072t0, "ItemSenderInfoFilterBind….context), parent, false)");
                        return new C9275n(c9072t0);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
    }
}
