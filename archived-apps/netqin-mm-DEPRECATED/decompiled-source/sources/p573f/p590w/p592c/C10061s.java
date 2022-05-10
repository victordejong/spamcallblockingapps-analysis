package p573f.p590w.p592c;
/* renamed from: f.w.c.s */
/* loaded from: classes2-dex2jar.jar:f/w/c/s.class */
public final class C10061s implements AbstractC10054l {

    /* renamed from: a */
    public final Class<?> f37192a;

    public C10061s(Class<?> cls, String str) {
        C10059q.m1637b(cls, "jClass");
        C10059q.m1637b(str, "moduleName");
        this.f37192a = cls;
    }

    @Override // p573f.p590w.p592c.AbstractC10054l
    /* renamed from: a */
    public Class<?> mo1631a() {
        return this.f37192a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof C10061s) && C10059q.m1643a(mo1631a(), ((C10061s) obj).mo1631a());
    }

    public int hashCode() {
        return mo1631a().hashCode();
    }

    public String toString() {
        return mo1631a().toString() + " (Kotlin reflection is not available)";
    }
}
