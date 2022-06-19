package androidx.recyclerview.widget;

import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/g$c.class */
class g$c implements Runnable {

    /* renamed from: f */
    final /* synthetic */ ArrayList f2060f;

    /* renamed from: g */
    final /* synthetic */ g f2061g;

    g$c(g gVar, ArrayList arrayList) {
        this.f2061g = gVar;
        this.f2060f = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator it = this.f2060f.iterator();
        while (it.hasNext()) {
            this.f2061g.animateAddImpl((RecyclerView$d0) it.next());
        }
        this.f2060f.clear();
        this.f2061g.mAdditionsList.remove(this.f2060f);
    }
}
