package p067i.p095c.p097b0.p104e.p109f.p112c;

import p067i.p095c.p097b0.p101b.AbstractC2157r;
import p067i.p095c.p097b0.p101b.AbstractC2159t;
/* renamed from: i.c.b0.e.f.c.n$b */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/c/n$b.class */
final class n$b<T> implements Runnable {

    /* renamed from: f */
    final AbstractC2157r<? super T> f5886f;

    /* renamed from: g */
    final AbstractC2159t<T> f5887g;

    n$b(AbstractC2157r<? super T> abstractC2157r, AbstractC2159t<T> abstractC2159t) {
        this.f5886f = abstractC2157r;
        this.f5887g = abstractC2159t;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f5887g.m80a(this.f5886f);
    }
}
