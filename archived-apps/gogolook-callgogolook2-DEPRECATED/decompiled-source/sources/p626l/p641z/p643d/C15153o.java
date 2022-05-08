package p626l.p641z.p643d;
/* renamed from: l.z.d.o */
/* loaded from: classes3-dex2jar.jar:l/z/d/o.class */
public final class C15153o implements AbstractC15137d {

    /* renamed from: a */
    public final Class<?> f33140a;

    public C15153o(Class<?> cls, String str) {
        C15149k.m377b(cls, "jClass");
        C15149k.m377b(str, "moduleName");
        this.f33140a = cls;
    }

    @Override // p626l.p641z.p643d.AbstractC15137d
    /* renamed from: a */
    public Class<?> mo372a() {
        return this.f33140a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof C15153o) && C15149k.m384a(mo372a(), ((C15153o) obj).mo372a());
    }

    public int hashCode() {
        return mo372a().hashCode();
    }

    public String toString() {
        return mo372a().toString() + " (Kotlin reflection is not available)";
    }
}
