package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzfr;
import java.lang.Thread;
/* renamed from: c.d.b.d.i.a.p3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/p3.class */
public final class C4782p3 implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    public final String f17319a;

    /* renamed from: b */
    public final /* synthetic */ zzfr f17320b;

    public C4782p3(zzfr zzfrVar, String str) {
        this.f17320b = zzfrVar;
        Preconditions.m17288a(str);
        this.f17319a = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        synchronized (this) {
            this.f17320b.mo8789p().m9152q().m9142a(this.f17319a, th);
        }
    }
}
