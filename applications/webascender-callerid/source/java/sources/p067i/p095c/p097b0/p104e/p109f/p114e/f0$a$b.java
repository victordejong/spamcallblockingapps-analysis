package p067i.p095c.p097b0.p104e.p109f.p114e;

import i.c.b0.e.f.e.f0;
/* renamed from: i.c.b0.e.f.e.f0$a$b */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/e/f0$a$b.class */
final class f0$a$b implements Runnable {

    /* renamed from: f */
    private final Throwable f5906f;

    /* renamed from: g */
    final /* synthetic */ f0.a f5907g;

    f0$a$b(f0.a aVar, Throwable th) {
        this.f5907g = aVar;
        this.f5906f = th;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f5907g.f.onError(this.f5906f);
        } finally {
            this.f5907g.i.dispose();
        }
    }
}
