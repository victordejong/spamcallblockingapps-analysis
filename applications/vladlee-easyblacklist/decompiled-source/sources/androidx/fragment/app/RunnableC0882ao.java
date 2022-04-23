package androidx.fragment.app;

import android.view.View;
import androidx.core.p037g.C0741t;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.fragment.app.ao */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/ao.class */
public final class RunnableC0882ao implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ArrayList f3744a;

    /* renamed from: b */
    final /* synthetic */ Map f3745b;

    /* renamed from: c */
    final /* synthetic */ AbstractC0880am f3746c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0882ao(AbstractC0880am amVar, ArrayList arrayList, Map map) {
        this.f3746c = amVar;
        this.f3744a = arrayList;
        this.f3745b = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        int size = this.f3744a.size();
        for (int i = 0; i < size; i++) {
            View view = (View) this.f3744a.get(i);
            String q = C0741t.m8314q(view);
            if (q != null) {
                Iterator it = this.f3745b.entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        str = null;
                        break;
                    }
                    Map.Entry entry = (Map.Entry) it.next();
                    if (q.equals(entry.getValue())) {
                        str = (String) entry.getKey();
                        break;
                    }
                }
                C0741t.m8342a(view, str);
            }
        }
    }
}
