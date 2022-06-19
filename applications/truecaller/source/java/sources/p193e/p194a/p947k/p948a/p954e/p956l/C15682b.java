package p193e.p194a.p947k.p948a.p954e.p956l;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.videocallerid.C4718R;
import java.util.List;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p947k.p948a.p954e.C15657a;
import p193e.p194a.p947k.p948a.p954e.p956l.C15678a;
import p193e.p194a.p947k.p972m.C16140n;
import s1.u.s;
import s1.z.c.l;
/* renamed from: e.a.k.a.e.l.b */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/e/l/b.class */
public final class C15682b extends RecyclerView.AbstractC0317g<C15678a> {

    /* renamed from: a */
    public List<C15657a> f44252a = s.a;

    /* renamed from: b */
    public C15678a.AbstractC15679a f44253b;

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f44252a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(C15678a c15678a, int i) {
        C15678a c15678a2 = c15678a;
        l.e(c15678a2, "holder");
        C15657a c15657a = this.f44252a.get(i);
        l.e(c15657a, "hiddenContactItem");
        C16140n c16140n = (C16140n) c15678a2.f44246a.getValue();
        c16140n.f45527a.setPresenter((C8243a) c15678a2.f44247b.getValue());
        C8243a.m28739ok((C8243a) c15678a2.f44247b.getValue(), c15657a.f44208d, false, 2, null);
        TextView textView = c16140n.f45529c;
        l.d(textView, "contactName");
        String str = c15657a.f44207c;
        if (str == null) {
            str = c15657a.f44206b;
        }
        textView.setText(str);
        c16140n.f45528b.setOnClickListener(new s(0, c15678a2, c15657a));
        c16140n.f45527a.setOnClickListener(new s(1, c15678a2, c15657a));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public C15678a onCreateViewHolder(ViewGroup viewGroup, int i) {
        l.e(viewGroup, "parent");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(C4718R.layout.item_view_video_caller_id_hidden_contact, viewGroup, false);
        l.d(inflate, "LayoutInflater.from(pare…n_contact, parent, false)");
        return new C15678a(inflate, this.f44253b);
    }
}
