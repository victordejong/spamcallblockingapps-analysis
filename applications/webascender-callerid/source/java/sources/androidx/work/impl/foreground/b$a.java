package androidx.work.impl.foreground;

import androidx.work.impl.WorkDatabase;
import androidx.work.impl.p015n.C0513p;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/foreground/b$a.class */
class b$a implements Runnable {

    /* renamed from: f */
    final /* synthetic */ WorkDatabase f2512f;

    /* renamed from: g */
    final /* synthetic */ String f2513g;

    /* renamed from: h */
    final /* synthetic */ b f2514h;

    b$a(b bVar, WorkDatabase workDatabase, String str) {
        this.f2514h = bVar;
        this.f2512f = workDatabase;
        this.f2513g = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        C0513p m4388n = this.f2512f.B().m4388n(this.f2513g);
        if (m4388n == null || !m4388n.m4406b()) {
            return;
        }
        synchronized (this.f2514h.i) {
            this.f2514h.l.put(this.f2513g, m4388n);
            this.f2514h.m.add(m4388n);
            b bVar = this.f2514h;
            bVar.n.d(bVar.m);
        }
    }
}
