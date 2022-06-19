package p193e.p194a.p837h0.p838a;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.C2752R;
import com.truecaller.p183ui.view.TintedImageView;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.a.l;
import s1.b0.c;
import s1.u.s;
/* renamed from: e.a.h0.a.z */
/* loaded from: classes9-dex2jar.jar:e/a/h0/a/z.class */
public final class C14826z extends RecyclerView.AbstractC0317g<C14745a> {

    /* renamed from: c */
    public static final /* synthetic */ l[] f42394c = {C22128a.m8629e0(C14826z.class, "switches", "getSwitches()Ljava/util/List;", 0)};

    /* renamed from: a */
    public final c f42395a;

    /* renamed from: b */
    public final AbstractC14806s f42396b;

    public C14826z(AbstractC14806s abstractC14806s) {
        s1.z.c.l.e(abstractC14806s, "listener");
        this.f42396b = abstractC14806s;
        s sVar = s.a;
        this.f42395a = new C14824x(sVar, sVar, this);
    }

    /* renamed from: e */
    public final List<C14823w> m19615e() {
        return (List) this.f42395a.A1(this, f42394c[0]);
    }

    /* renamed from: g */
    public final void m19614g(List<C14823w> list) {
        s1.z.c.l.e(list, "<set-?>");
        this.f42395a.a(this, f42394c[0], list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return m19615e().size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(C14745a c14745a, int i) {
        C14745a c14745a2 = c14745a;
        s1.z.c.l.e(c14745a2, "viewHolder");
        C14823w c14823w = m19615e().get(i);
        AbstractC14811v abstractC14811v = c14823w.f42389a;
        boolean z = c14823w.f42390b;
        c14745a2.m19695N4().setOnClickListener(null);
        c14745a2.m19693P4().setOnClickListener(null);
        c14745a2.m19692Q4().setOnCheckedChangeListener(null);
        boolean z2 = false;
        ((TextView) c14745a2.f42240b.getValue()).setOnClickListener(new View$OnClickListenerC0001a0(0, c14745a2));
        ((TextView) c14745a2.f42241c.getValue()).setOnClickListener(new View$OnClickListenerC0001a0(1, c14745a2));
        if (abstractC14811v.f42372a == null) {
            c14745a2.m19694O4().setVisibility(8);
        } else {
            c14745a2.m19694O4().setVisibility(0);
            TintedImageView m19694O4 = c14745a2.m19694O4();
            Integer num = abstractC14811v.f42373b;
            if (num == null) {
                num = abstractC14811v.f42372a;
            }
            m19694O4.setImageResource(num.intValue());
        }
        ((TextView) c14745a2.f42240b.getValue()).setText(abstractC14811v.f42374c);
        ((TextView) c14745a2.f42241c.getValue()).setText(abstractC14811v.f42375d);
        c14745a2.m19692Q4().setChecked(z);
        C19286f.m13683U(c14745a2.m19695N4(), abstractC14811v.f42376e);
        C19286f.m13683U(c14745a2.m19693P4(), abstractC14811v.f42377f);
        if (abstractC14811v.f42376e) {
            c14745a2.m19695N4().setOnClickListener(new r0(0, this, abstractC14811v));
        }
        if (abstractC14811v.f42377f) {
            c14745a2.m19693P4().setOnClickListener(new r0(1, this, abstractC14811v));
        }
        c14745a2.m19692Q4().setOnCheckedChangeListener(new C14825y(this, abstractC14811v));
        View view = (View) c14745a2.f42245g.getValue();
        if (i != m19615e().size() - 1) {
            z2 = true;
        }
        C19286f.m13683U(view, z2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public C14745a onCreateViewHolder(ViewGroup viewGroup, int i) {
        s1.z.c.l.e(viewGroup, "viewGroup");
        return new C14745a(LayoutInflater.from(viewGroup.getContext()).inflate(C2752R.layout.item_blocking_switch, viewGroup, false));
    }
}
