package p193e.p194a.p798g5.p799b0;

import androidx.appcompat.widget.SearchView;
import s1.z.b.l;
/* renamed from: e.a.g5.b0.b */
/* loaded from: classes14-dex2jar.jar:e/a/g5/b0/b.class */
public final class C14463b implements SearchView.AbstractC0071l {

    /* renamed from: a */
    public final /* synthetic */ l f41651a;

    public C14463b(l lVar) {
        this.f41651a = lVar;
    }

    @Override // androidx.appcompat.widget.SearchView.AbstractC0071l
    public boolean onQueryTextChange(String str) {
        this.f41651a.d(str);
        return true;
    }

    @Override // androidx.appcompat.widget.SearchView.AbstractC0071l
    public boolean onQueryTextSubmit(String str) {
        this.f41651a.d(str);
        return true;
    }
}
