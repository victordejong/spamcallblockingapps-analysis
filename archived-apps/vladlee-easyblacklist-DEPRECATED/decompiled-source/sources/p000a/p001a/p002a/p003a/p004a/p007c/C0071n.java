package p000a.p001a.p002a.p003a.p004a.p007c;

import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
/* renamed from: a.a.a.a.a.c.n */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/c/n.class */
public class C0071n<V> extends FutureTask<V> implements AbstractC0063g<AbstractC0076r>, AbstractC0072o, AbstractC0076r {

    /* renamed from: b */
    final Object f150b;

    public C0071n(Runnable runnable, V v) {
        super(runnable, v);
        this.f150b = m10256a(runnable);
    }

    public C0071n(Callable<V> callable) {
        super(callable);
        this.f150b = m10256a(callable);
    }

    /* JADX WARN: Incorrect return type in method signature: <T::La/a/a/a/a/c/g<La/a/a/a/a/c/r;>;:La/a/a/a/a/c/o;:La/a/a/a/a/c/r;>(Ljava/lang/Object;)TT; */
    /* renamed from: a */
    private static AbstractC0063g m10256a(Object obj) {
        return C0073p.isProperDelegate(obj) ? (AbstractC0063g) obj : new C0073p();
    }

    /* JADX WARN: Incorrect return type in method signature: <T::La/a/a/a/a/c/g<La/a/a/a/a/c/r;>;:La/a/a/a/a/c/o;:La/a/a/a/a/c/r;>()TT; */
    /* renamed from: a */
    public AbstractC0063g mo10257a() {
        return (AbstractC0063g) this.f150b;
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0063g
    public /* synthetic */ void addDependency(AbstractC0076r rVar) {
        ((AbstractC0063g) ((AbstractC0072o) mo10257a())).addDependency(rVar);
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0063g
    public boolean areDependenciesMet() {
        return ((AbstractC0063g) ((AbstractC0072o) mo10257a())).areDependenciesMet();
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return ((AbstractC0072o) mo10257a()).compareTo(obj);
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0063g
    public Collection<AbstractC0076r> getDependencies() {
        return ((AbstractC0063g) ((AbstractC0072o) mo10257a())).getDependencies();
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0072o
    public EnumC0066j getPriority() {
        return ((AbstractC0072o) mo10257a()).getPriority();
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0076r
    public boolean isFinished() {
        return ((AbstractC0076r) ((AbstractC0072o) mo10257a())).isFinished();
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0076r
    public void setError(Throwable th) {
        ((AbstractC0076r) ((AbstractC0072o) mo10257a())).setError(th);
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0076r
    public void setFinished(boolean z) {
        ((AbstractC0076r) ((AbstractC0072o) mo10257a())).setFinished(z);
    }
}
