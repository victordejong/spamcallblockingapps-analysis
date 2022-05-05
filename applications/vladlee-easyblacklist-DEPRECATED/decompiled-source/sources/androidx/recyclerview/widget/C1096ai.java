package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.C1105aq;
import androidx.recyclerview.widget.RecyclerView;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.recyclerview.widget.ai */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ai.class */
public final class C1096ai implements C1105aq.AbstractC1107b {

    /* renamed from: a */
    final /* synthetic */ RecyclerView.AbstractC1066i f4749a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1096ai(RecyclerView.AbstractC1066i iVar) {
        this.f4749a = iVar;
    }

    @Override // androidx.recyclerview.widget.C1105aq.AbstractC1107b
    /* renamed from: a */
    public final int mo6837a() {
        return this.f4749a.m7096u();
    }

    @Override // androidx.recyclerview.widget.C1105aq.AbstractC1107b
    /* renamed from: a */
    public final int mo6835a(View view) {
        return RecyclerView.AbstractC1066i.m7109j(view) - ((RecyclerView.LayoutParams) view.getLayoutParams()).topMargin;
    }

    @Override // androidx.recyclerview.widget.C1105aq.AbstractC1107b
    /* renamed from: a */
    public final View mo6836a(int i) {
        return this.f4749a.m7122e(i);
    }

    @Override // androidx.recyclerview.widget.C1105aq.AbstractC1107b
    /* renamed from: b */
    public final int mo6834b() {
        return this.f4749a.m7098s() - this.f4749a.m7094w();
    }

    @Override // androidx.recyclerview.widget.C1105aq.AbstractC1107b
    /* renamed from: b */
    public final int mo6833b(View view) {
        return RecyclerView.AbstractC1066i.m7105l(view) + ((RecyclerView.LayoutParams) view.getLayoutParams()).bottomMargin;
    }
}
