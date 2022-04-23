package androidx.fragment.app;

import android.view.View;
import androidx.core.p037g.C0741t;
import java.util.ArrayList;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.fragment.app.ap */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/ap.class */
public final class RunnableC0883ap implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ArrayList f3747a;

    /* renamed from: b */
    final /* synthetic */ Map f3748b;

    /* renamed from: c */
    final /* synthetic */ AbstractC0880am f3749c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0883ap(AbstractC0880am amVar, ArrayList arrayList, Map map) {
        this.f3749c = amVar;
        this.f3747a = arrayList;
        this.f3748b = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int size = this.f3747a.size();
        for (int i = 0; i < size; i++) {
            View view = (View) this.f3747a.get(i);
            C0741t.m8342a(view, (String) this.f3748b.get(C0741t.m8314q(view)));
        }
    }
}
