package p037i.p038a.p046b;
/* renamed from: i.a.b.q$a */
/* loaded from: classes2-dex2jar.jar:i/a/b/q$a.class */
class q$a extends Throwable {

    /* renamed from: f */
    final String f974f = Thread.currentThread().getName();

    /* renamed from: g */
    final long f975g = Thread.currentThread().getId();

    /* renamed from: h */
    final AbstractC0391e f976h;

    /* renamed from: i */
    volatile boolean f977i;

    q$a(AbstractC0391e eVar) {
        super("Thread [" + Thread.currentThread().getName() + "] opened scope for " + eVar + " here:");
        this.f976h = eVar;
    }
}
