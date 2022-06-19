package androidx.work.impl.utils.p017o;

import java.util.concurrent.Executor;
/* renamed from: androidx.work.impl.utils.o.b$a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/o/b$a.class */
class b$a implements Executor {

    /* renamed from: f */
    final /* synthetic */ b f2671f;

    b$a(b bVar) {
        this.f2671f = bVar;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f2671f.d(runnable);
    }
}
