package p131c.p132a.p133a.p134a;
/* renamed from: c.a.a.a.a */
/* loaded from: classes-dex2jar.jar:c/a/a/a/a.class */
public final class C1979a {

    /* renamed from: a */
    public String f7795a;

    /* renamed from: c.a.a.a.a$a */
    /* loaded from: classes-dex2jar.jar:c/a/a/a/a$a.class */
    public static final class C1980a {

        /* renamed from: a */
        public String f7796a;

        public /* synthetic */ C1980a(C2011n nVar) {
        }

        /* renamed from: a */
        public C1980a m31359a(String str) {
            this.f7796a = str;
            return this;
        }

        /* renamed from: a */
        public C1979a m31360a() {
            if (this.f7796a != null) {
                C1979a aVar = new C1979a(null);
                aVar.f7795a = this.f7796a;
                return aVar;
            }
            throw new IllegalArgumentException("Purchase token must be set");
        }
    }

    public /* synthetic */ C1979a(C2011n nVar) {
    }

    /* renamed from: b */
    public static C1980a m31361b() {
        return new C1980a(null);
    }

    /* renamed from: a */
    public String m31363a() {
        return this.f7795a;
    }
}
