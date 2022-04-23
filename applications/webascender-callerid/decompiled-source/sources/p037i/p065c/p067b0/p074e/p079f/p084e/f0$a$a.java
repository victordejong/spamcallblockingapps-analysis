package p037i.p065c.p067b0.p074e.p079f.p084e;

import i.c.b0.e.f.e.f0;
/* renamed from: i.c.b0.e.f.e.f0$a$a */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/e/f0$a$a.class */
final class f0$a$a implements Runnable {

    /* renamed from: f */
    final /* synthetic */ f0.a f1226f;

    f0$a$a(f0.a aVar) {
        this.f1226f = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f1226f.f.onComplete();
        } finally {
            this.f1226f.i.dispose();
        }
    }
}
