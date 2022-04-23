package p037i.p038a.p052d.p056f.p060z;

import java.util.Objects;
import java.util.concurrent.TimeUnit;
import p037i.p038a.p039a.p041d.C0357d;
/* renamed from: i.a.d.f.z.e */
/* loaded from: classes2-dex2jar.jar:i/a/d/f/z/e.class */
public final class C0454e {

    /* renamed from: a */
    private final AbstractC0456g f1074a;

    /* renamed from: b */
    private long f1075b;

    /* renamed from: c */
    private int f1076c = 2048;

    /* renamed from: d */
    private int f1077d = 512;

    /* renamed from: e */
    private long f1078e;

    C0454e(AbstractC0456g gVar) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        this.f1075b = timeUnit.toNanos(5000L);
        this.f1078e = timeUnit.toNanos(30000L);
        Objects.requireNonNull(gVar, "spanExporter");
        this.f1074a = gVar;
    }

    /* renamed from: a */
    public d m148a() {
        return new d(this.f1074a, this.f1075b, this.f1076c, this.f1077d, this.f1078e);
    }

    /* renamed from: b */
    public C0454e m147b(long j, TimeUnit timeUnit) {
        Objects.requireNonNull(timeUnit, "unit");
        C0357d.m351a(j >= 0, "delay must be non-negative");
        this.f1075b = timeUnit.toNanos(j);
        return this;
    }
}
