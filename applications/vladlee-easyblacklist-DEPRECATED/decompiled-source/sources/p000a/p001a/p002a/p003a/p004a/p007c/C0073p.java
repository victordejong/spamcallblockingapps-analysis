package p000a.p001a.p002a.p003a.p004a.p007c;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: a.a.a.a.a.c.p */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/c/p.class */
public class C0073p implements AbstractC0063g<AbstractC0076r>, AbstractC0072o, AbstractC0076r {
    private final List<AbstractC0076r> dependencies = new ArrayList();
    private final AtomicBoolean hasRun = new AtomicBoolean(false);
    private final AtomicReference<Throwable> throwable = new AtomicReference<>(null);

    public static boolean isProperDelegate(Object obj) {
        try {
            return (((AbstractC0063g) obj) == null || ((AbstractC0076r) obj) == null || ((AbstractC0072o) obj) == null) ? false : true;
        } catch (ClassCastException e) {
            return false;
        }
    }

    public void addDependency(AbstractC0076r rVar) {
        synchronized (this) {
            this.dependencies.add(rVar);
        }
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0063g
    public boolean areDependenciesMet() {
        for (AbstractC0076r rVar : getDependencies()) {
            if (!rVar.isFinished()) {
                return false;
            }
        }
        return true;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return EnumC0066j.m10261a(this, obj);
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0063g
    public Collection<AbstractC0076r> getDependencies() {
        Collection<AbstractC0076r> unmodifiableCollection;
        synchronized (this) {
            unmodifiableCollection = Collections.unmodifiableCollection(this.dependencies);
        }
        return unmodifiableCollection;
    }

    public Throwable getError() {
        return this.throwable.get();
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0072o
    public EnumC0066j getPriority() {
        return EnumC0066j.NORMAL;
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0076r
    public boolean isFinished() {
        return this.hasRun.get();
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0076r
    public void setError(Throwable th) {
        this.throwable.set(th);
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0076r
    public void setFinished(boolean z) {
        synchronized (this) {
            this.hasRun.set(z);
        }
    }
}
