package androidx.work.impl.utils;

import androidx.work.WorkerParameters;
import androidx.work.impl.j;
/* renamed from: androidx.work.impl.utils.h */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/h.class */
public class RunnableC0528h implements Runnable {

    /* renamed from: f */
    private j f2638f;

    /* renamed from: g */
    private String f2639g;

    /* renamed from: h */
    private WorkerParameters.C0465a f2640h;

    public RunnableC0528h(j jVar, String str, WorkerParameters.C0465a c0465a) {
        this.f2638f = jVar;
        this.f2639g = str;
        this.f2640h = c0465a;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f2638f.s().j(this.f2639g, this.f2640h);
    }
}
