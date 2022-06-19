package p193e.p194a.p437c.p438a.p494m.p496b;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.insights.p168ui.C4078R;
import java.util.ArrayList;
import java.util.List;
import p193e.p194a.p437c.p438a.p477g.C9091z1;
import s1.z.c.l;
/* renamed from: e.a.c.a.m.b.u */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/b/u.class */
public final class C9286u extends RecyclerView.AbstractC0317g<C9288w> {

    /* renamed from: a */
    public final List<C9272l> f28257a = new ArrayList();

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f28257a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(C9288w c9288w, int i) {
        C9288w c9288w2 = c9288w;
        l.e(c9288w2, "holder");
        C9272l c9272l = this.f28257a.get(i);
        l.e(c9272l, "item");
        c9288w2.f28259a.setText(c9272l.f28221a.f31281b);
        c9288w2.f28260b.setText(c9272l.f28221a.f31287h);
        c9288w2.f28261c.setChecked(c9272l.f28222b);
        c9288w2.f28261c.setOnClickListener(new View$OnClickListenerC9287v(c9272l));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public C9288w onCreateViewHolder(ViewGroup viewGroup, int i) {
        l.e(viewGroup, "parent");
        l.e(viewGroup, "parent");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(C4078R.layout.qa_updates_view_holder, viewGroup, false);
        int i2 = C4078R.C4080id.addressView;
        TextView textView = (TextView) inflate.findViewById(i2);
        if (textView != null) {
            i2 = C4078R.C4080id.checkBox;
            CheckBox checkBox = (CheckBox) inflate.findViewById(i2);
            if (checkBox != null) {
                i2 = C4078R.C4080id.updatesMessageTextView;
                TextView textView2 = (TextView) inflate.findViewById(i2);
                if (textView2 != null) {
                    C9091z1 c9091z1 = new C9091z1((ConstraintLayout) inflate, textView, checkBox, textView2);
                    l.d(c9091z1, "QaUpdatesViewHolderBindi….context), parent, false)");
                    return new C9288w(c9091z1);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
    }
}
