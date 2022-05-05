package p000a.p001a.p002a.p003a.p004a.p007c.p008a;
/* renamed from: a.a.a.a.a.c.a.e */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/c/a/e.class */
public final class C0057e {

    /* renamed from: a */
    private final int f130a;

    /* renamed from: b */
    private final AbstractC0053a f131b;

    /* renamed from: c */
    private final AbstractC0056d f132c;

    private C0057e(int i, AbstractC0053a aVar, AbstractC0056d dVar) {
        this.f130a = i;
        this.f131b = aVar;
        this.f132c = dVar;
    }

    public C0057e(AbstractC0053a aVar, AbstractC0056d dVar) {
        this(0, aVar, dVar);
    }

    /* renamed from: a */
    public final long m10272a() {
        return this.f131b.getDelayMillis(this.f130a);
    }

    /* renamed from: b */
    public final C0057e m10271b() {
        return new C0057e(this.f130a + 1, this.f131b, this.f132c);
    }

    /* renamed from: c */
    public final C0057e m10270c() {
        return new C0057e(this.f131b, this.f132c);
    }
}
