package p000a.p001a.p002a.p003a.p004a.p007c;

import java.util.Collection;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0047a;
/* renamed from: a.a.a.a.a.c.k */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/c/k.class */
public abstract class AbstractC0067k<Params, Progress, Result> extends AbstractC0047a<Params, Progress, Result> implements AbstractC0063g<AbstractC0076r>, AbstractC0072o, AbstractC0076r {

    /* renamed from: a */
    private final C0073p f146a = new C0073p();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a.a.a.a.a.c.k$a */
    /* loaded from: classes-dex2jar.jar:a/a/a/a/a/c/k$a.class */
    public static final class ExecutorC0068a<Result> implements Executor {

        /* renamed from: a */
        private final Executor f147a;

        /* renamed from: b */
        private final AbstractC0067k f148b;

        public ExecutorC0068a(Executor executor, AbstractC0067k kVar) {
            this.f147a = executor;
            this.f148b = kVar;
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.f147a.execute(new C0069l(this, runnable));
        }
    }

    /* renamed from: a */
    public final void addDependency(AbstractC0076r rVar) {
        if (m10279c() == AbstractC0047a.EnumC0051d.f122a) {
            this.f146a.addDependency((C0073p) rVar);
            return;
        }
        throw new IllegalStateException("Must not add Dependency after task is running");
    }

    /* renamed from: a */
    public final void m10259a(ExecutorService executorService, Params... paramsArr) {
        super.m10281a(new ExecutorC0068a(executorService, this), paramsArr);
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0063g
    public boolean areDependenciesMet() {
        return this.f146a.areDependenciesMet();
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return EnumC0066j.m10261a(this, obj);
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0063g
    public Collection<AbstractC0076r> getDependencies() {
        return this.f146a.getDependencies();
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0072o
    public EnumC0066j getPriority() {
        return this.f146a.getPriority();
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0076r
    public boolean isFinished() {
        return this.f146a.isFinished();
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0076r
    public void setError(Throwable th) {
        this.f146a.setError(th);
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0076r
    public void setFinished(boolean z) {
        this.f146a.setFinished(z);
    }
}
