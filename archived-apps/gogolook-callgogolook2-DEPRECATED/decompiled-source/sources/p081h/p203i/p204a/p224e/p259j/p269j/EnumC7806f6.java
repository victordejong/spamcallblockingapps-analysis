package p081h.p203i.p204a.p224e.p259j.p269j;
/* renamed from: h.i.a.e.j.j.f6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/f6.class */
public enum EnumC7806f6 {
    NETWORK("network", 10, 700, 10, 70),
    TRACE("trace", 10, 300, 10, 30);
    

    /* renamed from: a */
    public final String f18256a;

    /* renamed from: c */
    public final int f18258c;

    /* renamed from: e */
    public final int f18260e;

    /* renamed from: b */
    public final int f18257b = 10;

    /* renamed from: d */
    public final int f18259d = 10;

    EnumC7806f6(String str, int i, int i2, int i3, int i4) {
        this.f18256a = str;
        this.f18258c = i2;
        this.f18260e = i4;
    }

    /* renamed from: a */
    public final String m19399a() {
        return String.valueOf(this.f18256a).concat("_flimit_time");
    }

    /* renamed from: b */
    public final String m19398b() {
        return String.valueOf(this.f18256a).concat("_flimit_events");
    }

    /* renamed from: c */
    public final String m19397c() {
        return String.valueOf(this.f18256a).concat("_blimit_time");
    }

    /* renamed from: d */
    public final String m19396d() {
        return String.valueOf(this.f18256a).concat("_blimit_events");
    }

    /* renamed from: e */
    public final int m19395e() {
        return this.f18257b;
    }

    /* renamed from: f */
    public final int m19394f() {
        return this.f18258c;
    }

    /* renamed from: g */
    public final int m19393g() {
        return this.f18259d;
    }

    /* renamed from: h */
    public final int m19392h() {
        return this.f18260e;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return name();
    }
}
