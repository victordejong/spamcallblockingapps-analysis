package androidx.recyclerview.widget;

import androidx.recyclerview.widget.C1108ar;
import androidx.recyclerview.widget.RecyclerView;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.recyclerview.widget.ae */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ae.class */
public final class C1092ae implements C1108ar.AbstractC1110b {

    /* renamed from: a */
    final /* synthetic */ RecyclerView f4745a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1092ae(RecyclerView recyclerView) {
        this.f4745a = recyclerView;
    }

    @Override // androidx.recyclerview.widget.C1108ar.AbstractC1110b
    /* renamed from: a */
    public final void mo6814a(RecyclerView.AbstractC1082t tVar) {
        this.f4745a.f4550n.m7139a(tVar.f4658a, this.f4745a.f4541e);
    }

    @Override // androidx.recyclerview.widget.C1108ar.AbstractC1110b
    /* renamed from: a */
    public final void mo6813a(RecyclerView.AbstractC1082t tVar, RecyclerView.AbstractC1061f.C1063b bVar, RecyclerView.AbstractC1061f.C1063b bVar2) {
        this.f4745a.f4541e.m7069b(tVar);
        this.f4745a.m7228b(tVar, bVar, bVar2);
    }

    @Override // androidx.recyclerview.widget.C1108ar.AbstractC1110b
    /* renamed from: b */
    public final void mo6812b(RecyclerView.AbstractC1082t tVar, RecyclerView.AbstractC1061f.C1063b bVar, RecyclerView.AbstractC1061f.C1063b bVar2) {
        this.f4745a.m7245a(tVar, bVar, bVar2);
    }

    @Override // androidx.recyclerview.widget.C1108ar.AbstractC1110b
    /* renamed from: c */
    public final void mo6811c(RecyclerView.AbstractC1082t tVar, RecyclerView.AbstractC1061f.C1063b bVar, RecyclerView.AbstractC1061f.C1063b bVar2) {
        tVar.m7019c(false);
        if (this.f4745a.f4559w) {
            if (this.f4745a.f4561y.mo6847a(tVar, tVar, bVar, bVar2)) {
                this.f4745a.m7208g();
            }
        } else if (this.f4745a.f4561y.mo6845c(tVar, bVar, bVar2)) {
            this.f4745a.m7208g();
        }
    }
}
