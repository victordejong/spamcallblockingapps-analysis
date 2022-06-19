package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import androidx.work.AbstractC0541m;
import androidx.work.impl.m.d;
import androidx.work.impl.p012m.AbstractC0499c;
import androidx.work.impl.p015n.C0513p;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.work.impl.background.systemalarm.c */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/c.class */
class C0483c {

    /* renamed from: e */
    private static final String f2485e = AbstractC0541m.m4305f("ConstraintsCmdHandler");

    /* renamed from: a */
    private final Context f2486a;

    /* renamed from: b */
    private final int f2487b;

    /* renamed from: c */
    private final e f2488c;

    /* renamed from: d */
    private final d f2489d;

    C0483c(Context context, int i, e eVar) {
        this.f2486a = context;
        this.f2487b = i;
        this.f2488c = eVar;
        this.f2489d = new d(context, eVar.f(), (AbstractC0499c) null);
    }

    /* renamed from: a */
    void m4482a() {
        List<C0513p> m4394h = this.f2488c.g().v().B().m4394h();
        ConstraintProxy.m4488a(this.f2486a, m4394h);
        this.f2489d.d(m4394h);
        ArrayList<C0513p> arrayList = new ArrayList(m4394h.size());
        long currentTimeMillis = System.currentTimeMillis();
        for (C0513p c0513p : m4394h) {
            String str = c0513p.f2594a;
            if (currentTimeMillis >= c0513p.m4407a() && (!c0513p.m4406b() || this.f2489d.c(str))) {
                arrayList.add(c0513p);
            }
        }
        for (C0513p c0513p2 : arrayList) {
            String str2 = c0513p2.f2594a;
            Intent b = b.b(this.f2486a, str2);
            AbstractC0541m.m4308c().m4310a(f2485e, String.format("Creating a delay_met command for workSpec with id (%s)", str2), new Throwable[0]);
            e eVar = this.f2488c;
            eVar.k(new Runnable(eVar, b, this.f2487b) { // from class: androidx.work.impl.background.systemalarm.e$b

                /* renamed from: f */
                private final e f2491f;

                /* renamed from: g */
                private final Intent f2492g;

                /* renamed from: h */
                private final int f2493h;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f2491f = eVar;
                    this.f2492g = b;
                    this.f2493h = i;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.f2491f.a(this.f2492g, this.f2493h);
                }
            });
        }
        this.f2489d.e();
    }
}
