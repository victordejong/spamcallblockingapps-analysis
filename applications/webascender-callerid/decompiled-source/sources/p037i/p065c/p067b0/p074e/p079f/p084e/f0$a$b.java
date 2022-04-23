package p037i.p065c.p067b0.p074e.p079f.p084e;

import i.c.b0.e.f.e.f0;
/* renamed from: i.c.b0.e.f.e.f0$a$b */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/e/f0$a$b.class */
final class f0$a$b implements Runnable {

    /* renamed from: f */
    private final Throwable f1227f;

    /* renamed from: g */
    final /* synthetic */ f0.a f1228g;

    f0$a$b(f0.a aVar, Throwable th) {
        this.f1228g = aVar;
        this.f1227f = th;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f1228g.f.onError(this.f1227f);
        } finally {
            this.f1228g.i.dispose();
        }
    }
}
