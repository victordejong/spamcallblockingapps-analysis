package p081h.p119d.p120a.p124s.p126i;

import android.os.Looper;
import p081h.p119d.p120a.p124s.AbstractC5806c;
/* renamed from: h.d.a.s.i.h */
/* loaded from: classes-dex2jar.jar:h/d/a/s/i/h.class */
public class C5841h<Z> implements AbstractC5848l<Z> {

    /* renamed from: a */
    public final AbstractC5848l<Z> f14743a;

    /* renamed from: b */
    public final boolean f14744b;

    /* renamed from: c */
    public AbstractC5842a f14745c;

    /* renamed from: d */
    public AbstractC5806c f14746d;

    /* renamed from: e */
    public int f14747e;

    /* renamed from: f */
    public boolean f14748f;

    /* renamed from: h.d.a.s.i.h$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/h$a.class */
    public interface AbstractC5842a {
        /* renamed from: b */
        void mo24251b(AbstractC5806c cVar, C5841h<?> hVar);
    }

    public C5841h(AbstractC5848l<Z> lVar, boolean z) {
        if (lVar != null) {
            this.f14743a = lVar;
            this.f14744b = z;
            return;
        }
        throw new NullPointerException("Wrapped resource must not be null");
    }

    @Override // p081h.p119d.p120a.p124s.p126i.AbstractC5848l
    /* renamed from: a */
    public int mo24037a() {
        return this.f14743a.mo24037a();
    }

    /* renamed from: a */
    public void m24255a(AbstractC5806c cVar, AbstractC5842a aVar) {
        this.f14746d = cVar;
        this.f14745c = aVar;
    }

    @Override // p081h.p119d.p120a.p124s.p126i.AbstractC5848l
    /* renamed from: b */
    public void mo24036b() {
        if (this.f14747e > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        } else if (!this.f14748f) {
            this.f14748f = true;
            this.f14743a.mo24036b();
        } else {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
    }

    /* renamed from: c */
    public void m24254c() {
        if (this.f14748f) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        } else if (Looper.getMainLooper().equals(Looper.myLooper())) {
            this.f14747e++;
        } else {
            throw new IllegalThreadStateException("Must call acquire on the main thread");
        }
    }

    /* renamed from: d */
    public boolean m24253d() {
        return this.f14744b;
    }

    /* renamed from: e */
    public void m24252e() {
        if (this.f14747e <= 0) {
            throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
        } else if (Looper.getMainLooper().equals(Looper.myLooper())) {
            int i = this.f14747e - 1;
            this.f14747e = i;
            if (i == 0) {
                this.f14745c.mo24251b(this.f14746d, this);
            }
        } else {
            throw new IllegalThreadStateException("Must call release on the main thread");
        }
    }

    @Override // p081h.p119d.p120a.p124s.p126i.AbstractC5848l
    public Z get() {
        return this.f14743a.get();
    }
}
