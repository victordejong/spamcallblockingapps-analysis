package androidx.work.impl.utils;

import android.text.TextUtils;
import androidx.work.AbstractC0541m;
import androidx.work.AbstractC0543p;
import androidx.work.C0470c;
import androidx.work.C0474e;
import androidx.work.impl.AbstractC0486e;
import androidx.work.impl.C0487f;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.impl.c;
import androidx.work.impl.g;
import androidx.work.impl.j;
import androidx.work.impl.p015n.C0513p;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import java.util.Iterator;
import java.util.List;
/* renamed from: androidx.work.impl.utils.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/b.class */
public class RunnableC0521b implements Runnable {

    /* renamed from: h */
    private static final String f2625h = AbstractC0541m.m4305f("EnqueueRunnable");

    /* renamed from: f */
    private final g f2626f;

    /* renamed from: g */
    private final c f2627g = new c();

    public RunnableC0521b(g gVar) {
        this.f2626f = gVar;
    }

    /* renamed from: b */
    private static boolean m4352b(g gVar) {
        boolean m4351c = m4351c(gVar.g(), gVar.f(), (String[]) g.l(gVar).toArray(new String[0]), gVar.d(), gVar.b());
        gVar.k();
        return m4351c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x030c  */
    /* JADX WARN: Type inference failed for: r0v116, types: [java.util.List] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m4351c(androidx.work.impl.j r8, java.util.List<? extends androidx.work.AbstractC0552x> r9, java.lang.String[] r10, java.lang.String r11, androidx.work.EnumC0477g r12) {
        /*
            Method dump skipped, instructions count: 1103
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.RunnableC0521b.m4351c(androidx.work.impl.j, java.util.List, java.lang.String[], java.lang.String, androidx.work.g):boolean");
    }

    /* renamed from: e */
    private static boolean m4349e(g gVar) {
        List<g> e = gVar.e();
        boolean z = false;
        if (e != null) {
            z = false;
            for (g gVar2 : e) {
                if (!gVar2.j()) {
                    z |= m4349e(gVar2);
                } else {
                    AbstractC0541m.m4308c().m4303h(f2625h, String.format("Already enqueued work ids (%s).", TextUtils.join(", ", gVar2.c())), new Throwable[0]);
                }
            }
        }
        return m4352b(gVar) | z;
    }

    /* renamed from: g */
    private static void m4347g(C0513p c0513p) {
        C0470c c0470c = c0513p.f2603j;
        if (c0470c.m4531f() || c0470c.m4528i()) {
            String str = c0513p.f2596c;
            C0474e.C0475a c0475a = new C0474e.C0475a();
            c0475a.m4495c(c0513p.f2598e);
            c0475a.m4493e("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME", str);
            c0513p.f2596c = ConstraintTrackingWorker.class.getName();
            c0513p.f2598e = c0475a.m4497a();
        }
    }

    /* renamed from: h */
    private static boolean m4346h(j jVar, String str) {
        try {
            Class<?> cls = Class.forName(str);
            Iterator it = jVar.u().iterator();
            do {
                if (!it.hasNext()) {
                    return false;
                }
            } while (!cls.isAssignableFrom(((AbstractC0486e) it.next()).getClass()));
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* renamed from: a */
    public boolean m4353a() {
        WorkDatabase v = this.f2626f.g().v();
        v.m4811c();
        try {
            boolean m4349e = m4349e(this.f2626f);
            v.m4796r();
            return m4349e;
        } finally {
            v.m4807g();
        }
    }

    /* renamed from: d */
    public AbstractC0543p m4350d() {
        return this.f2627g;
    }

    /* renamed from: f */
    public void m4348f() {
        j g = this.f2626f.g();
        C0487f.m4473b(g.o(), g.v(), g.u());
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.f2626f.h()) {
                throw new IllegalStateException(String.format("WorkContinuation has cycles (%s)", this.f2626f));
            }
            if (m4353a()) {
                C0523d.m4340a(this.f2626f.g().n(), RescheduleReceiver.class, true);
                m4348f();
            }
            this.f2627g.a(AbstractC0543p.f2678a);
        } catch (Throwable th) {
            this.f2627g.a(new AbstractC0543p.AbstractC0545b.a(th));
        }
    }
}
