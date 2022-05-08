package p000a.p001a.p002a.p003a.p004a.p006b;
/* renamed from: a.a.a.a.a.b.o */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/o.class */
public enum EnumC0034o {
    DEVELOPER(1),
    USER_SIDELOAD(2),
    TEST_DISTRIBUTION(3),
    APP_STORE(4);
    

    /* renamed from: e */
    private final int f67e;

    EnumC0034o(int i) {
        this.f67e = i;
    }

    /* renamed from: a */
    public static EnumC0034o m10305a(String str) {
        return "io.crash.air".equals(str) ? TEST_DISTRIBUTION : str != null ? APP_STORE : DEVELOPER;
    }

    /* renamed from: a */
    public final int m10306a() {
        return this.f67e;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.f67e);
    }
}
