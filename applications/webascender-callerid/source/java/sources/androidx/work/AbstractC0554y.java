package androidx.work;

import android.content.Context;
/* renamed from: androidx.work.y */
/* loaded from: classes-dex2jar.jar:androidx/work/y.class */
public abstract class AbstractC0554y {

    /* renamed from: a */
    private static final String f2688a = AbstractC0541m.m4305f("WorkerFactory");

    /* renamed from: c */
    public static AbstractC0554y m4277c() {
        return new a();
    }

    /* renamed from: a */
    public abstract ListenableWorker m4279a(Context context, String str, WorkerParameters workerParameters);

    /* renamed from: b */
    public final ListenableWorker m4278b(Context context, String str, WorkerParameters workerParameters) {
        ListenableWorker m4279a = m4279a(context, str, workerParameters);
        ListenableWorker listenableWorker = m4279a;
        if (m4279a == null) {
            Class cls = null;
            try {
                cls = Class.forName(str).asSubclass(ListenableWorker.class);
            } catch (Throwable th) {
                AbstractC0541m.m4308c().m4309b(f2688a, "Invalid class: " + str, th);
            }
            listenableWorker = m4279a;
            if (cls != null) {
                try {
                    listenableWorker = (ListenableWorker) cls.getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(context, workerParameters);
                } catch (Throwable th2) {
                    AbstractC0541m.m4308c().m4309b(f2688a, "Could not instantiate " + str, th2);
                    listenableWorker = m4279a;
                }
            }
        }
        if (listenableWorker == null || !listenableWorker.m4564k()) {
            return listenableWorker;
        }
        throw new IllegalStateException(String.format("WorkerFactory (%s) returned an instance of a ListenableWorker (%s) which has already been invoked. createWorker() must always return a new instance of a ListenableWorker.", getClass().getName(), str));
    }
}
