package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.C1105aq;
import androidx.recyclerview.widget.RecyclerView;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.recyclerview.widget.ah */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ah.class */
public final class C1095ah implements C1105aq.AbstractC1107b {

    /* renamed from: a */
    final /* synthetic */ RecyclerView.AbstractC1066i f4748a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1095ah(RecyclerView.AbstractC1066i iVar) {
        this.f4748a = iVar;
    }

    @Override // androidx.recyclerview.widget.C1105aq.AbstractC1107b
    /* renamed from: a */
    public final int mo6837a() {
        return this.f4748a.m7097t();
    }

    @Override // androidx.recyclerview.widget.C1105aq.AbstractC1107b
    /* renamed from: a */
    public final int mo6835a(View view) {
        return RecyclerView.AbstractC1066i.m7111i(view) - ((RecyclerView.LayoutParams) view.getLayoutParams()).leftMargin;
    }

    @Override // androidx.recyclerview.widget.C1105aq.AbstractC1107b
    /* renamed from: a */
    public final View mo6836a(int i) {
        return this.f4748a.m7122e(i);
    }

    @Override // androidx.recyclerview.widget.C1105aq.AbstractC1107b
    /* renamed from: b */
    public final int mo6834b() {
        return this.f4748a.m7099r() - this.f4748a.m7095v();
    }

    @Override // androidx.recyclerview.widget.C1105aq.AbstractC1107b
    /* renamed from: b */
    public final int mo6833b(View view) {
        return RecyclerView.AbstractC1066i.m7107k(view) + ((RecyclerView.LayoutParams) view.getLayoutParams()).rightMargin;
    }
}
