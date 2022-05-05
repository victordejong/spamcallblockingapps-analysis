package androidx.fragment.app;

import android.view.View;
import androidx.core.p037g.C0741t;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.fragment.app.an */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/an.class */
public final class RunnableC0881an implements Runnable {

    /* renamed from: a */
    final /* synthetic */ int f3738a;

    /* renamed from: b */
    final /* synthetic */ ArrayList f3739b;

    /* renamed from: c */
    final /* synthetic */ ArrayList f3740c;

    /* renamed from: d */
    final /* synthetic */ ArrayList f3741d;

    /* renamed from: e */
    final /* synthetic */ ArrayList f3742e;

    /* renamed from: f */
    final /* synthetic */ AbstractC0880am f3743f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0881an(AbstractC0880am amVar, int i, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
        this.f3743f = amVar;
        this.f3738a = i;
        this.f3739b = arrayList;
        this.f3740c = arrayList2;
        this.f3741d = arrayList3;
        this.f3742e = arrayList4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        for (int i = 0; i < this.f3738a; i++) {
            C0741t.m8342a((View) this.f3739b.get(i), (String) this.f3740c.get(i));
            C0741t.m8342a((View) this.f3741d.get(i), (String) this.f3742e.get(i));
        }
    }
}
