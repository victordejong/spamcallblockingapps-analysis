package com.vladlee.p076a;

import android.os.Handler;
import com.vladlee.p076a.C3238b;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.a.d */
/* loaded from: classes-dex2jar.jar:com/vladlee/a/d.class */
public final class RunnableC3244d implements Runnable {

    /* renamed from: a */
    final /* synthetic */ boolean f19190a = false;

    /* renamed from: b */
    final /* synthetic */ List f19191b = null;

    /* renamed from: c */
    final /* synthetic */ List f19192c = null;

    /* renamed from: d */
    final /* synthetic */ C3238b.AbstractC3242d f19193d;

    /* renamed from: e */
    final /* synthetic */ Handler f19194e;

    /* renamed from: f */
    final /* synthetic */ C3238b f19195f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC3244d(C3238b bVar, C3238b.AbstractC3242d dVar, Handler handler) {
        this.f19195f = bVar;
        this.f19193d = dVar;
        this.f19194e = handler;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3247g gVar;
        C3246f fVar = new C3246f(0, "Inventory refresh successful.");
        try {
            gVar = this.f19195f.m414a(this.f19190a, this.f19191b, this.f19192c);
        } catch (C3237a e) {
            fVar = e.f19170a;
            gVar = null;
        }
        this.f19195f.m413b();
        if (!this.f19195f.f19174d && this.f19193d != null) {
            this.f19194e.post(new RunnableC3245e(this, fVar, gVar));
        }
    }
}
