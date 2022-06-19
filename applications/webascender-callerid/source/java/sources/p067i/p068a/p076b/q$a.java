package p067i.p068a.p076b;
/* renamed from: i.a.b.q$a */
/* loaded from: classes2-dex2jar.jar:i/a/b/q$a.class */
class q$a extends Throwable {

    /* renamed from: f */
    final String f5653f = Thread.currentThread().getName();

    /* renamed from: g */
    final long f5654g = Thread.currentThread().getId();

    /* renamed from: h */
    final AbstractC2059e f5655h;

    /* renamed from: i */
    volatile boolean f5656i;

    q$a(AbstractC2059e abstractC2059e) {
        super("Thread [" + Thread.currentThread().getName() + "] opened scope for " + abstractC2059e + " here:");
        this.f5655h = abstractC2059e;
    }
}
