package androidx.recyclerview.widget;

import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/g$b.class */
class g$b implements Runnable {

    /* renamed from: f */
    final /* synthetic */ ArrayList f2058f;

    /* renamed from: g */
    final /* synthetic */ g f2059g;

    g$b(g gVar, ArrayList arrayList) {
        this.f2059g = gVar;
        this.f2058f = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator it = this.f2058f.iterator();
        while (it.hasNext()) {
            this.f2059g.animateChangeImpl((g$i) it.next());
        }
        this.f2058f.clear();
        this.f2059g.mChangesList.remove(this.f2058f);
    }
}
