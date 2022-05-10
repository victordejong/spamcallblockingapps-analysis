package p530d.p541c.p543b0.p548e.p552d;
/* renamed from: d.c.b0.e.d.w */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/d/w.class */
public final class RunnableC9762w implements Runnable {

    /* renamed from: a */
    public final AbstractC9761v f36892a;

    /* renamed from: b */
    public final long f36893b;

    public RunnableC9762w(long j, AbstractC9761v vVar) {
        this.f36893b = j;
        this.f36892a = vVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f36892a.onTimeout(this.f36893b);
    }
}
