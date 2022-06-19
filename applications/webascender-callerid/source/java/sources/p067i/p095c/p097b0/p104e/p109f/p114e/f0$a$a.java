package p067i.p095c.p097b0.p104e.p109f.p114e;

import i.c.b0.e.f.e.f0;
/* renamed from: i.c.b0.e.f.e.f0$a$a */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/e/f0$a$a.class */
final class f0$a$a implements Runnable {

    /* renamed from: f */
    final /* synthetic */ f0.a f5905f;

    f0$a$a(f0.a aVar) {
        this.f5905f = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f5905f.f.onComplete();
        } finally {
            this.f5905f.i.dispose();
        }
    }
}
