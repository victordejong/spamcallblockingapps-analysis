package p012b.p076s.p078b.p079a.p080a1;
/* renamed from: b.s.b.a.a1.d */
/* loaded from: classes-dex2jar.jar:b/s/b/a/a1/d.class */
public final class C1166d {

    /* renamed from: a */
    public boolean f4687a;

    /* renamed from: a */
    public void m34500a() throws InterruptedException {
        synchronized (this) {
            while (!this.f4687a) {
                wait();
            }
        }
    }

    /* renamed from: b */
    public boolean m34499b() {
        boolean z;
        synchronized (this) {
            z = this.f4687a;
            this.f4687a = false;
        }
        return z;
    }

    /* renamed from: c */
    public boolean m34498c() {
        synchronized (this) {
            if (this.f4687a) {
                return false;
            }
            this.f4687a = true;
            notifyAll();
            return true;
        }
    }
}
