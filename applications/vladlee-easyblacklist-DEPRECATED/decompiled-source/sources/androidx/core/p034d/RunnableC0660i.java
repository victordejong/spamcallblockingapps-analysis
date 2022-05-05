package androidx.core.p034d;

import android.os.Handler;
import androidx.core.p034d.C0657g;
import java.util.concurrent.Callable;
/* renamed from: androidx.core.d.i */
/* loaded from: classes-dex2jar.jar:androidx/core/d/i.class */
final class RunnableC0660i implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Callable f2947a;

    /* renamed from: b */
    final /* synthetic */ Handler f2948b;

    /* renamed from: c */
    final /* synthetic */ C0657g.AbstractC0658a f2949c;

    /* renamed from: d */
    final /* synthetic */ C0657g f2950d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0660i(C0657g gVar, Callable callable, Handler handler, C0657g.AbstractC0658a aVar) {
        this.f2950d = gVar;
        this.f2947a = callable;
        this.f2948b = handler;
        this.f2949c = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        try {
            obj = this.f2947a.call();
        } catch (Exception e) {
            obj = null;
        }
        this.f2948b.post(new RunnableC0661j(this, obj));
    }
}
