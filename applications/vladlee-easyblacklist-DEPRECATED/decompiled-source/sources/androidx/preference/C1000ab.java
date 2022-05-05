package androidx.preference;

import android.util.SparseArray;
import android.view.View;
import androidx.preference.C1001ac;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.preference.ab */
/* loaded from: classes-dex2jar.jar:androidx/preference/ab.class */
public final class C1000ab extends RecyclerView.AbstractC1082t {

    /* renamed from: q */
    private final SparseArray<View> f4134q = new SparseArray<>(4);

    /* renamed from: r */
    private boolean f4135r;

    /* renamed from: s */
    private boolean f4136s;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1000ab(View view) {
        super(view);
        this.f4134q.put(16908310, view.findViewById(16908310));
        this.f4134q.put(16908304, view.findViewById(16908304));
        this.f4134q.put(16908294, view.findViewById(16908294));
        this.f4134q.put(C1001ac.C1005d.f4152a, view.findViewById(C1001ac.C1005d.f4152a));
        this.f4134q.put(16908350, view.findViewById(16908350));
    }

    /* renamed from: a */
    public final View m7406a(int i) {
        View view = this.f4134q.get(i);
        if (view != null) {
            return view;
        }
        View findViewById = this.f4658a.findViewById(i);
        if (findViewById != null) {
            this.f4134q.put(i, findViewById);
        }
        return findViewById;
    }

    /* renamed from: a */
    public final void m7405a(boolean z) {
        this.f4135r = z;
    }

    /* renamed from: a */
    public final boolean m7407a() {
        return this.f4135r;
    }

    /* renamed from: b */
    public final void m7403b(boolean z) {
        this.f4136s = z;
    }

    /* renamed from: b */
    public final boolean m7404b() {
        return this.f4136s;
    }
}
