package p081h.p203i.p316b.p317a;

import java.util.concurrent.TimeUnit;
/* renamed from: h.i.b.a.n */
/* loaded from: classes2-dex2jar.jar:h/i/b/a/n.class */
public final class C9304n {

    /* renamed from: a */
    public final AbstractC9308q f21328a = AbstractC9308q.m15444b();

    /* renamed from: b */
    public boolean f21329b;

    /* renamed from: c */
    public long f21330c;

    /* renamed from: d */
    public long f21331d;

    /* renamed from: h.i.b.a.n$a */
    /* loaded from: classes2-dex2jar.jar:h/i/b/a/n$a.class */
    public static /* synthetic */ class C9305a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f21332a = new int[TimeUnit.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            try {
                f21332a[TimeUnit.NANOSECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f21332a[TimeUnit.MICROSECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f21332a[TimeUnit.MILLISECONDS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f21332a[TimeUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f21332a[TimeUnit.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f21332a[TimeUnit.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f21332a[TimeUnit.DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: a */
    public static TimeUnit m15461a(long j) {
        return TimeUnit.DAYS.convert(j, TimeUnit.NANOSECONDS) > 0 ? TimeUnit.DAYS : TimeUnit.HOURS.convert(j, TimeUnit.NANOSECONDS) > 0 ? TimeUnit.HOURS : TimeUnit.MINUTES.convert(j, TimeUnit.NANOSECONDS) > 0 ? TimeUnit.MINUTES : TimeUnit.SECONDS.convert(j, TimeUnit.NANOSECONDS) > 0 ? TimeUnit.SECONDS : TimeUnit.MILLISECONDS.convert(j, TimeUnit.NANOSECONDS) > 0 ? TimeUnit.MILLISECONDS : TimeUnit.MICROSECONDS.convert(j, TimeUnit.NANOSECONDS) > 0 ? TimeUnit.MICROSECONDS : TimeUnit.NANOSECONDS;
    }

    /* renamed from: b */
    public static String m15458b(TimeUnit timeUnit) {
        switch (C9305a.f21332a[timeUnit.ordinal()]) {
            case 1:
                return "ns";
            case 2:
                return "μs";
            case 3:
                return "ms";
            case 4:
                return "s";
            case 5:
                return "min";
            case 6:
                return "h";
            case 7:
                return "d";
            default:
                throw new AssertionError();
        }
    }

    /* renamed from: d */
    public static C9304n m15456d() {
        C9304n nVar = new C9304n();
        nVar.m15459b();
        return nVar;
    }

    /* renamed from: a */
    public final long m15462a() {
        return this.f21329b ? (this.f21328a.mo15443a() - this.f21331d) + this.f21330c : this.f21330c;
    }

    /* renamed from: a */
    public long m15460a(TimeUnit timeUnit) {
        return timeUnit.convert(m15462a(), TimeUnit.NANOSECONDS);
    }

    /* renamed from: b */
    public C9304n m15459b() {
        C9301k.m15467b(!this.f21329b, "This stopwatch is already running.");
        this.f21329b = true;
        this.f21331d = this.f21328a.mo15443a();
        return this;
    }

    /* renamed from: c */
    public C9304n m15457c() {
        long a = this.f21328a.mo15443a();
        C9301k.m15467b(this.f21329b, "This stopwatch is already stopped.");
        this.f21329b = false;
        this.f21330c += a - this.f21331d;
        return this;
    }

    public String toString() {
        long a = m15462a();
        TimeUnit a2 = m15461a(a);
        double convert = a / TimeUnit.NANOSECONDS.convert(1L, a2);
        return C9298j.m15483a(convert) + " " + m15458b(a2);
    }
}
