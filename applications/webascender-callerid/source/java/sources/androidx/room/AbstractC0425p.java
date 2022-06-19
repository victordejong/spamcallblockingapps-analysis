package androidx.room;

import f.t.a.f;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: androidx.room.p */
/* loaded from: classes-dex2jar.jar:androidx/room/p.class */
public abstract class AbstractC0425p {

    /* renamed from: a */
    private final AtomicBoolean f2243a = new AtomicBoolean(false);

    /* renamed from: b */
    private final AbstractC0419j f2244b;

    /* renamed from: c */
    private volatile f f2245c;

    public AbstractC0425p(AbstractC0419j abstractC0419j) {
        this.f2244b = abstractC0419j;
    }

    /* renamed from: c */
    private f m4771c() {
        return this.f2244b.m4810d(m4770d());
    }

    /* renamed from: e */
    private f m4769e(boolean z) {
        f fVar;
        if (z) {
            if (this.f2245c == null) {
                this.f2245c = m4771c();
            }
            fVar = this.f2245c;
        } else {
            fVar = m4771c();
        }
        return fVar;
    }

    /* renamed from: a */
    public f m4773a() {
        m4772b();
        return m4769e(this.f2243a.compareAndSet(false, true));
    }

    /* renamed from: b */
    protected void m4772b() {
        this.f2244b.m4813a();
    }

    /* renamed from: d */
    protected abstract String m4770d();

    /* renamed from: f */
    public void m4768f(f fVar) {
        if (fVar == this.f2245c) {
            this.f2243a.set(false);
        }
    }
}
