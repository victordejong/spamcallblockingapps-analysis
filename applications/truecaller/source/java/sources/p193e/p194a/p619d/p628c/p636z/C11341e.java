package p193e.p194a.p619d.p628c.p636z;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.voip.C4781R;
import java.util.List;
import p193e.p194a.p619d.p628c.p636z.AbstractC11358p;
import s1.u.s;
import s1.z.c.l;
/* renamed from: e.a.d.c.z.e */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/z/e.class */
public final class C11341e extends RecyclerView.AbstractC0317g<AbstractC11348j<? extends AbstractC11358p>> {

    /* renamed from: a */
    public List<? extends AbstractC11358p> f33360a = s.a;

    /* renamed from: b */
    public AbstractC11340d f33361b;

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f33360a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemViewType(int i) {
        AbstractC11358p abstractC11358p = this.f33360a.get(i);
        return abstractC11358p instanceof AbstractC11358p.C11359a ? 1 : abstractC11358p instanceof AbstractC11358p.C11360b ? 2 : 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0337  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0352  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0380  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x03a5  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x03e0  */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBindViewHolder(p193e.p194a.p619d.p628c.p636z.AbstractC11348j<? extends p193e.p194a.p619d.p628c.p636z.AbstractC11358p> r22, int r23) {
        /*
            Method dump skipped, instructions count: 1235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p628c.p636z.C11341e.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$c0, int):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public AbstractC11348j<? extends AbstractC11358p> onCreateViewHolder(ViewGroup viewGroup, int i) {
        C11342f c11342f;
        l.e(viewGroup, "parent");
        if (i == 1) {
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(C4781R.layout.item_view_header_call_history, viewGroup, false);
            l.d(inflate, "LayoutInflater.from(pare…l_history, parent, false)");
            c11342f = new C11342f(inflate);
        } else if (i == 2) {
            View inflate2 = LayoutInflater.from(viewGroup.getContext()).inflate(C4781R.layout.list_item_voip_call_history, viewGroup, false);
            l.d(inflate2, "LayoutInflater.from(pare…l_history, parent, false)");
            c11342f = new C11346i(inflate2, this.f33361b);
        } else {
            View inflate3 = LayoutInflater.from(viewGroup.getContext()).inflate(C4781R.layout.list_item_loading_peer, viewGroup, false);
            l.d(inflate3, "LayoutInflater.from(pare…ding_peer, parent, false)");
            c11342f = new C11344g(inflate3);
        }
        return c11342f;
    }
}
