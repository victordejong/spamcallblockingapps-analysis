package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.C1085a;
import androidx.recyclerview.widget.RecyclerView;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.recyclerview.widget.ag */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ag.class */
public final class C1094ag implements C1085a.AbstractC1086a {

    /* renamed from: a */
    final /* synthetic */ RecyclerView f4747a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1094ag(RecyclerView recyclerView) {
        this.f4747a = recyclerView;
    }

    /* renamed from: c */
    private void m6854c(C1085a.C1087b bVar) {
        int i = bVar.f4739a;
        if (i == 1) {
            this.f4747a.f4550n.mo6992a(bVar.f4740b, bVar.f4742d);
        } else if (i == 2) {
            this.f4747a.f4550n.mo6963b(bVar.f4740b, bVar.f4742d);
        } else if (i == 4) {
            this.f4747a.f4550n.mo6952c(bVar.f4740b, bVar.f4742d);
        } else if (i == 8) {
            this.f4747a.f4550n.mo6944d(bVar.f4740b, bVar.f4742d);
        }
    }

    @Override // androidx.recyclerview.widget.C1085a.AbstractC1086a
    /* renamed from: a */
    public final RecyclerView.AbstractC1082t mo6861a(int i) {
        RecyclerView.AbstractC1082t tVar;
        RecyclerView recyclerView = this.f4747a;
        int c = recyclerView.f4543g.m6801c();
        int i2 = 0;
        RecyclerView.AbstractC1082t tVar2 = null;
        while (true) {
            tVar = tVar2;
            if (i2 >= c) {
                break;
            }
            RecyclerView.AbstractC1082t d = RecyclerView.m7217d(recyclerView.f4543g.m6800c(i2));
            tVar2 = tVar2;
            if (d != null) {
                tVar2 = tVar2;
                if (!d.m7006p()) {
                    tVar2 = tVar2;
                    if (d.f4660c == i) {
                        if (!recyclerView.f4543g.m6797d(d.f4658a)) {
                            tVar = d;
                            break;
                        }
                        tVar2 = d;
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            }
            i2++;
        }
        if (tVar != null && !this.f4747a.f4543g.m6797d(tVar.f4658a)) {
            return tVar;
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.C1085a.AbstractC1086a
    /* renamed from: a */
    public final void mo6860a(int i, int i2) {
        this.f4747a.m7262a(i, i2, true);
        RecyclerView recyclerView = this.f4747a;
        recyclerView.f4493D = true;
        recyclerView.f4492C.f4635c += i2;
    }

    @Override // androidx.recyclerview.widget.C1085a.AbstractC1086a
    /* renamed from: a */
    public final void mo6859a(int i, int i2, Object obj) {
        int i3;
        RecyclerView recyclerView = this.f4747a;
        int c = recyclerView.f4543g.m6801c();
        int i4 = i2 + i;
        for (int i5 = 0; i5 < c; i5++) {
            View c2 = recyclerView.f4543g.m6800c(i5);
            RecyclerView.AbstractC1082t d = RecyclerView.m7217d(c2);
            if (d != null && !d.m7017e() && d.f4660c >= i && d.f4660c < i4) {
                d.m7020c(2);
                d.m7024a(obj);
                ((RecyclerView.LayoutParams) c2.getLayoutParams()).f4565e = true;
            }
        }
        RecyclerView.C1074n nVar = recyclerView.f4541e;
        for (int size = nVar.f4611c.size() - 1; size >= 0; size--) {
            RecyclerView.AbstractC1082t tVar = nVar.f4611c.get(size);
            if (tVar != null && (i3 = tVar.f4660c) >= i && i3 < i4) {
                tVar.m7020c(2);
                nVar.m7067c(size);
            }
        }
        this.f4747a.f4494E = true;
    }

    @Override // androidx.recyclerview.widget.C1085a.AbstractC1086a
    /* renamed from: a */
    public final void mo6858a(C1085a.C1087b bVar) {
        m6854c(bVar);
    }

    @Override // androidx.recyclerview.widget.C1085a.AbstractC1086a
    /* renamed from: b */
    public final void mo6857b(int i, int i2) {
        this.f4747a.m7262a(i, i2, false);
        this.f4747a.f4493D = true;
    }

    @Override // androidx.recyclerview.widget.C1085a.AbstractC1086a
    /* renamed from: b */
    public final void mo6856b(C1085a.C1087b bVar) {
        m6854c(bVar);
    }

    @Override // androidx.recyclerview.widget.C1085a.AbstractC1086a
    /* renamed from: c */
    public final void mo6855c(int i, int i2) {
        RecyclerView recyclerView = this.f4747a;
        int c = recyclerView.f4543g.m6801c();
        for (int i3 = 0; i3 < c; i3++) {
            RecyclerView.AbstractC1082t d = RecyclerView.m7217d(recyclerView.f4543g.m6800c(i3));
            if (d != null && !d.m7017e() && d.f4660c >= i) {
                d.m7027a(i2, false);
                recyclerView.f4492C.f4638f = true;
            }
        }
        RecyclerView.C1074n nVar = recyclerView.f4541e;
        int size = nVar.f4611c.size();
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView.AbstractC1082t tVar = nVar.f4611c.get(i4);
            if (tVar != null && tVar.f4660c >= i) {
                tVar.m7027a(i2, true);
            }
        }
        recyclerView.requestLayout();
        this.f4747a.f4493D = true;
    }

    @Override // androidx.recyclerview.widget.C1085a.AbstractC1086a
    /* renamed from: d */
    public final void mo6853d(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        RecyclerView recyclerView = this.f4747a;
        int c = recyclerView.f4543g.m6801c();
        if (i < i2) {
            i5 = i;
            i4 = i2;
            i3 = -1;
        } else {
            i4 = i;
            i5 = i2;
            i3 = 1;
        }
        for (int i9 = 0; i9 < c; i9++) {
            RecyclerView.AbstractC1082t d = RecyclerView.m7217d(recyclerView.f4543g.m6800c(i9));
            if (d != null && d.f4660c >= i5 && d.f4660c <= i4) {
                if (d.f4660c == i) {
                    d.m7027a(i2 - i, false);
                } else {
                    d.m7027a(i3, false);
                }
                recyclerView.f4492C.f4638f = true;
            }
        }
        RecyclerView.C1074n nVar = recyclerView.f4541e;
        if (i < i2) {
            i8 = i2;
            i7 = -1;
            i6 = i;
        } else {
            i8 = i;
            i6 = i2;
            i7 = 1;
        }
        int size = nVar.f4611c.size();
        for (int i10 = 0; i10 < size; i10++) {
            RecyclerView.AbstractC1082t tVar = nVar.f4611c.get(i10);
            if (tVar != null && tVar.f4660c >= i6 && tVar.f4660c <= i8) {
                if (tVar.f4660c == i) {
                    tVar.m7027a(i2 - i, false);
                } else {
                    tVar.m7027a(i7, false);
                }
            }
        }
        recyclerView.requestLayout();
        this.f4747a.f4493D = true;
    }
}
