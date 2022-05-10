package p131c.p161d.p282e.p289l.p290d.p293h;

import android.content.Context;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.crashlytics.internal.common.DataTransportState;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import p131c.p161d.p282e.p289l.p290d.C5192b;
import p131c.p161d.p282e.p289l.p290d.p294i.C5293b;
import p131c.p161d.p282e.p289l.p290d.p295j.C5384v;
import p131c.p161d.p282e.p289l.p290d.p298l.AbstractC5404h;
import p131c.p161d.p282e.p289l.p290d.p298l.C5403g;
import p131c.p161d.p282e.p289l.p290d.p303o.C5426c;
import p131c.p161d.p282e.p289l.p290d.p304p.AbstractC5431d;
import p131c.p161d.p282e.p289l.p290d.p307q.AbstractC5450d;
/* renamed from: c.d.e.l.d.h.d0 */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/d0.class */
public class C5217d0 {

    /* renamed from: a */
    public final C5275n f17899a;

    /* renamed from: b */
    public final C5403g f17900b;

    /* renamed from: c */
    public final C5426c f17901c;

    /* renamed from: d */
    public final C5293b f17902d;

    /* renamed from: e */
    public final C5221f0 f17903e;

    public C5217d0(C5275n nVar, C5403g gVar, C5426c cVar, C5293b bVar, C5221f0 f0Var) {
        this.f17899a = nVar;
        this.f17900b = gVar;
        this.f17901c = cVar;
        this.f17902d = bVar;
        this.f17903e = f0Var;
    }

    /* renamed from: a */
    public static C5217d0 m24267a(Context context, C5286u uVar, AbstractC5404h hVar, C5212b bVar, C5293b bVar2, C5221f0 f0Var, AbstractC5450d dVar, AbstractC5431d dVar2) {
        return new C5217d0(new C5275n(context, uVar, bVar, dVar), new C5403g(new File(hVar.mo23877a()), dVar2), C5426c.m23814a(context), bVar2, f0Var);
    }

    /* renamed from: a */
    public static List<CrashlyticsReport.AbstractC7779b> m24259a(Map<String, String> map) {
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            CrashlyticsReport.AbstractC7779b.AbstractC7780a c = CrashlyticsReport.AbstractC7779b.m7612c();
            c.mo7610a(entry.getKey());
            c.mo7609b(entry.getValue());
            arrayList.add(c.mo7611a());
        }
        Collections.sort(arrayList, C5215c0.m24270a());
        return arrayList;
    }

    /* renamed from: a */
    public Task<Void> m24258a(Executor executor, DataTransportState dataTransportState) {
        if (dataTransportState == DataTransportState.NONE) {
            C5192b.m24319a().m24317a("Send via DataTransport disabled. Removing DataTransport reports.");
            this.f17900b.m23894b();
            return Tasks.m8591a((Object) null);
        }
        List<AbstractC5276o> d = this.f17900b.m23883d();
        ArrayList arrayList = new ArrayList();
        for (AbstractC5276o oVar : d) {
            if (oVar.mo24081a().m7627i() != CrashlyticsReport.Type.NATIVE || dataTransportState == DataTransportState.ALL) {
                arrayList.add(this.f17901c.m23813a(oVar).mo8611a(executor, C5213b0.m24271a(this)));
            } else {
                C5192b.m24319a().m24317a("Send native reports via DataTransport disabled. Removing DataTransport reports.");
                this.f17900b.m23890b(oVar.mo24079b());
            }
        }
        return Tasks.m8590a((Collection<? extends Task<?>>) arrayList);
    }

    /* renamed from: a */
    public void m24269a() {
        this.f17900b.m23894b();
    }

    /* renamed from: a */
    public void m24268a(long j, String str) {
        this.f17900b.m23900a(str, j);
    }

    /* renamed from: a */
    public void m24263a(String str, long j) {
        this.f17900b.m23911a(this.f17899a.m24094a(str, j));
    }

    /* renamed from: a */
    public void m24262a(String str, List<AbstractC5290y> list) {
        ArrayList arrayList = new ArrayList();
        for (AbstractC5290y yVar : list) {
            CrashlyticsReport.AbstractC7781c.AbstractC7783b b = yVar.mo24043b();
            if (b != null) {
                arrayList.add(b);
            }
        }
        C5403g gVar = this.f17900b;
        CrashlyticsReport.AbstractC7781c.AbstractC7782a c = CrashlyticsReport.AbstractC7781c.m7606c();
        c.mo7604a(C5384v.m23974a(arrayList));
        gVar.m23899a(str, c.mo7605a());
    }

    /* renamed from: a */
    public void m24261a(Throwable th, Thread thread, String str, long j) {
        C5192b a = C5192b.m24319a();
        a.m24317a("Persisting fatal event for session " + str);
        m24260a(th, thread, str, "crash", j, true);
    }

    /* renamed from: a */
    public final void m24260a(Throwable th, Thread thread, String str, String str2, long j, boolean z) {
        boolean equals = str2.equals("crash");
        CrashlyticsReport.AbstractC7785d.AbstractC7792d a = this.f17899a.m24091a(th, thread, str2, j, 4, 8, z);
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7807b f = a.mo7526f();
        String c = this.f17902d.m24031c();
        if (c != null) {
            CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7810d.AbstractC7811a b = CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7810d.m7430b();
            b.mo7428a(c);
            f.mo7447a(b.mo7429a());
        } else {
            C5192b.m24319a().m24317a("No log data to include with this event.");
        }
        List<CrashlyticsReport.AbstractC7779b> a2 = m24259a(this.f17903e.m24250a());
        if (!a2.isEmpty()) {
            CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7794a e = a.mo7531a().mo7520e();
            e.mo7516a(C5384v.m23974a(a2));
            f.mo7449a(e.mo7518a());
        }
        this.f17900b.m23912a(f.mo7451a(), str, equals);
    }

    /* renamed from: a */
    public final boolean m24265a(Task<AbstractC5276o> task) {
        if (task.mo8601e()) {
            AbstractC5276o b = task.mo8606b();
            C5192b a = C5192b.m24319a();
            a.m24317a("Crashlytics report successfully enqueued to DataTransport: " + b.mo24079b());
            this.f17900b.m23890b(b.mo24079b());
            return true;
        }
        C5192b.m24319a().m24316a("Crashlytics report could not be enqueued to DataTransport", task.mo8617a());
        return false;
    }
}
