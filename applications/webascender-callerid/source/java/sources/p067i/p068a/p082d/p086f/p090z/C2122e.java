package p067i.p068a.p082d.p086f.p090z;

import java.util.Objects;
import java.util.concurrent.TimeUnit;
import p067i.p068a.p069a.p071d.C2025d;
/* renamed from: i.a.d.f.z.e */
/* loaded from: classes2-dex2jar.jar:i/a/d/f/z/e.class */
public final class C2122e {

    /* renamed from: a */
    private final AbstractC2124g f5753a;

    /* renamed from: b */
    private long f5754b;

    /* renamed from: c */
    private int f5755c = 2048;

    /* renamed from: d */
    private int f5756d = 512;

    /* renamed from: e */
    private long f5757e;

    C2122e(AbstractC2124g abstractC2124g) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        this.f5754b = timeUnit.toNanos(5000L);
        this.f5757e = timeUnit.toNanos(30000L);
        Objects.requireNonNull(abstractC2124g, "spanExporter");
        this.f5753a = abstractC2124g;
    }

    /* renamed from: a */
    public d m148a() {
        return new d(this.f5753a, this.f5754b, this.f5755c, this.f5756d, this.f5757e);
    }

    /* renamed from: b */
    public C2122e m147b(long j, TimeUnit timeUnit) {
        Objects.requireNonNull(timeUnit, "unit");
        C2025d.m351a(j >= 0, "delay must be non-negative");
        this.f5754b = timeUnit.toNanos(j);
        return this;
    }
}
