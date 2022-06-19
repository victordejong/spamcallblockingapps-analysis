package com.hiya.stingray.p030ui.stats;

import android.content.Context;
import android.widget.BaseAdapter;
import com.hiya.stingray.manager.u3;
import com.hiya.stingray.t.d0;
import java.util.List;
import kotlin.s.k;
/* renamed from: com.hiya.stingray.ui.stats.a$c */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/stats/a$c.class */
public final class a$c extends BaseAdapter {

    /* renamed from: f */
    private List<? extends d0> f4926f = k.g();

    /* renamed from: g */
    private final Context f4927g;

    /* renamed from: h */
    private final u3 f4928h;

    public a$c(Context context, u3 u3Var) {
        kotlin.w.c.k.g(context, "context");
        kotlin.w.c.k.g(u3Var, "premiumManager");
        this.f4927g = context;
        this.f4928h = u3Var;
    }

    /* renamed from: a */
    public final void m1036a(List<? extends d0> list) {
        kotlin.w.c.k.g(list, "value");
        this.f4926f = list;
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f4926f.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f4926f.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        Integer m = this.f4926f.get(i).m();
        if (m != null) {
            return m.intValue();
        }
        kotlin.w.c.k.o();
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0156, code lost:
        if (r0.S(r0, r0) == false) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0210  */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r6, android.view.View r7, android.view.ViewGroup r8) {
        /*
            Method dump skipped, instructions count: 549
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hiya.stingray.p030ui.stats.a$c.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }
}
