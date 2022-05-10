package p131c.p161d.p170b.p188c.p203g1;
/* renamed from: c.d.b.c.g1.i */
/* loaded from: classes-dex2jar.jar:c/d/b/c/g1/i.class */
public final class C2886i {

    /* renamed from: a */
    public boolean f10488a;

    /* renamed from: a */
    public void m28626a() throws InterruptedException {
        synchronized (this) {
            while (!this.f10488a) {
                wait();
            }
        }
    }

    /* renamed from: b */
    public boolean m28625b() {
        boolean z;
        synchronized (this) {
            z = this.f10488a;
            this.f10488a = false;
        }
        return z;
    }

    /* renamed from: c */
    public boolean m28624c() {
        boolean z;
        synchronized (this) {
            z = this.f10488a;
        }
        return z;
    }

    /* renamed from: d */
    public boolean m28623d() {
        synchronized (this) {
            if (this.f10488a) {
                return false;
            }
            this.f10488a = true;
            notifyAll();
            return true;
        }
    }
}
