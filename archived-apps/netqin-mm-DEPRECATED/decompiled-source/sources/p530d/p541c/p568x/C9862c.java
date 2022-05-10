package p530d.p541c.p568x;

import io.reactivex.disposables.RunnableDisposable;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.Functions;
import p530d.p541c.p543b0.p545b.C9650a;
/* renamed from: d.c.x.c */
/* loaded from: classes2-dex2jar.jar:d/c/x/c.class */
public final class C9862c {
    /* renamed from: a */
    public static AbstractC9861b m1826a() {
        return EmptyDisposable.INSTANCE;
    }

    /* renamed from: a */
    public static AbstractC9861b m1825a(Runnable runnable) {
        C9650a.m2095a(runnable, "run is null");
        return new RunnableDisposable(runnable);
    }

    /* renamed from: b */
    public static AbstractC9861b m1824b() {
        return m1825a(Functions.f38320b);
    }
}
