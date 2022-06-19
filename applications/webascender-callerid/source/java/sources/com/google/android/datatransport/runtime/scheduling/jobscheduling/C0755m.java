package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.datatransport.runtime.backends.AbstractC0739e;
import com.google.android.datatransport.runtime.backends.AbstractC0740f;
import com.google.android.datatransport.runtime.backends.AbstractC0742g;
import com.google.android.datatransport.runtime.backends.AbstractC0746m;
import com.google.android.datatransport.runtime.synchronization.AbstractC0759a;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import g.f.a.b.i.m;
import g.f.a.b.i.x.j.c;
import g.f.a.b.i.x.j.i;
import g.f.a.b.i.y.a;
import java.util.ArrayList;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.m */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/m.class */
public class C0755m {

    /* renamed from: a */
    private final Context f3221a;

    /* renamed from: b */
    private final AbstractC0739e f3222b;

    /* renamed from: c */
    private final c f3223c;

    /* renamed from: d */
    private final AbstractC0758s f3224d;

    /* renamed from: e */
    private final Executor f3225e;

    /* renamed from: f */
    private final AbstractC0759a f3226f;

    /* renamed from: g */
    private final a f3227g;

    public C0755m(Context context, AbstractC0739e abstractC0739e, c cVar, AbstractC0758s abstractC0758s, Executor executor, AbstractC0759a abstractC0759a, a aVar) {
        this.f3221a = context;
        this.f3222b = abstractC0739e;
        this.f3223c = cVar;
        this.f3224d = abstractC0758s;
        this.f3225e = executor;
        this.f3226f = abstractC0759a;
        this.f3227g = aVar;
    }

    /* renamed from: c */
    static /* synthetic */ Object m3799c(C0755m c0755m, AbstractC0742g abstractC0742g, Iterable iterable, m mVar, int i) {
        if (abstractC0742g.m3842c() == AbstractC0742g.EnumC0743a.TRANSIENT_ERROR) {
            c0755m.f3223c.j1(iterable);
            c0755m.f3224d.m3790a(mVar, i + 1);
            return null;
        }
        c0755m.f3223c.s(iterable);
        if (abstractC0742g.m3842c() == AbstractC0742g.EnumC0743a.OK) {
            c0755m.f3223c.Q(mVar, c0755m.f3227g.a() + abstractC0742g.m3843b());
        }
        if (!c0755m.f3223c.f1(mVar)) {
            return null;
        }
        c0755m.f3224d.m3789b(mVar, 1, true);
        return null;
    }

    /* renamed from: e */
    public static /* synthetic */ void m3797e(C0755m c0755m, m mVar, int i, Runnable runnable) {
        try {
            try {
                AbstractC0759a abstractC0759a = c0755m.f3226f;
                c cVar = c0755m.f3223c;
                cVar.getClass();
                abstractC0759a.m3788a(k.a(cVar));
                if (!c0755m.m3801a()) {
                    c0755m.f3226f.m3788a(l.a(c0755m, mVar, i));
                } else {
                    c0755m.m3796f(mVar, i);
                }
            } catch (SynchronizationException e) {
                c0755m.f3224d.m3790a(mVar, i + 1);
            }
        } finally {
            runnable.run();
        }
    }

    /* renamed from: a */
    boolean m3801a() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f3221a.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    /* renamed from: f */
    void m3796f(m mVar, int i) {
        AbstractC0742g abstractC0742g;
        AbstractC0746m abstractC0746m = this.f3222b.get(mVar.b());
        Iterable<i> iterable = (Iterable) this.f3226f.m3788a(i.a(this, mVar));
        if (!iterable.iterator().hasNext()) {
            return;
        }
        if (abstractC0746m == null) {
            g.f.a.b.i.v.a.a("Uploader", "Unknown backend for %s, deleting event batch for it...", mVar);
            abstractC0742g = AbstractC0742g.m3844a();
        } else {
            ArrayList arrayList = new ArrayList();
            for (i iVar : iterable) {
                arrayList.add(iVar.b());
            }
            AbstractC0740f.AbstractC0741a m3850a = AbstractC0740f.m3850a();
            m3850a.m3846b(arrayList);
            m3850a.m3845c(mVar.c());
            abstractC0742g = abstractC0746m.m3829a(m3850a.m3847a());
        }
        this.f3226f.m3788a(j.a(this, abstractC0742g, iterable, mVar, i));
    }

    /* renamed from: g */
    public void m3795g(m mVar, int i, Runnable runnable) {
        this.f3225e.execute(RunnableC0754h.m3802a(this, mVar, i, runnable));
    }
}
