package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.synchronization.AbstractC0759a;
import g.f.a.b.i.m;
import g.f.a.b.i.x.j.c;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.q */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/q.class */
public class C0757q {

    /* renamed from: a */
    private final Executor f3229a;

    /* renamed from: b */
    private final c f3230b;

    /* renamed from: c */
    private final AbstractC0758s f3231c;

    /* renamed from: d */
    private final AbstractC0759a f3232d;

    C0757q(Executor executor, c cVar, AbstractC0758s abstractC0758s, AbstractC0759a abstractC0759a) {
        this.f3229a = executor;
        this.f3230b = cVar;
        this.f3231c = abstractC0758s;
        this.f3232d = abstractC0759a;
    }

    /* renamed from: b */
    static /* synthetic */ Object m3792b(C0757q c0757q) {
        for (m mVar : c0757q.f3230b.Z()) {
            c0757q.f3231c.m3790a(mVar, 1);
        }
        return null;
    }

    /* renamed from: a */
    public void m3793a() {
        this.f3229a.execute(RunnableC0756o.m3794a(this));
    }
}
