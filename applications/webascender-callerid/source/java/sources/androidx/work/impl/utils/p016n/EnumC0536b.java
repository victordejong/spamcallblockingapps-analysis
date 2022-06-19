package androidx.work.impl.utils.p016n;

import java.util.concurrent.Executor;
/* renamed from: androidx.work.impl.utils.n.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/n/b.class */
enum EnumC0536b implements Executor {
    INSTANCE;

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public String toString() {
        return "DirectExecutor";
    }
}
