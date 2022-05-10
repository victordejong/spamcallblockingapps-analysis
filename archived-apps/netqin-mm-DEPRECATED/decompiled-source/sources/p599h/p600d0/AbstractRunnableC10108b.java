package p599h.p600d0;
/* renamed from: h.d0.b */
/* loaded from: classes2-dex2jar.jar:h/d0/b.class */
public abstract class AbstractRunnableC10108b implements Runnable {

    /* renamed from: a */
    public final String f37313a;

    public AbstractRunnableC10108b(String str, Object... objArr) {
        this.f37313a = C10109c.m1452a(str, objArr);
    }

    /* renamed from: b */
    public abstract void mo824b();

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.f37313a);
        try {
            mo824b();
            Thread.currentThread().setName(name);
        } catch (Throwable th) {
            Thread.currentThread().setName(name);
            throw th;
        }
    }
}
