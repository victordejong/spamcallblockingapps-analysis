package p573f.p590w.p592c;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.jvm.KotlinReflectionNotSupportedError;
import p573f.p574a0.AbstractC9870c;
import p573f.p590w.C10019a;
/* renamed from: f.w.c.m */
/* loaded from: classes2-dex2jar.jar:f/w/c/m.class */
public final class C10055m implements AbstractC9870c<Object>, AbstractC10054l {

    /* renamed from: a */
    public final Class<?> f37190a;

    public C10055m(Class<?> cls) {
        C10059q.m1637b(cls, "jClass");
        this.f37190a = cls;
    }

    @Override // p573f.p590w.p592c.AbstractC10054l
    /* renamed from: a */
    public Class<?> mo1631a() {
        return this.f37190a;
    }

    /* renamed from: b */
    public final Void m1649b() {
        throw new KotlinReflectionNotSupportedError();
    }

    public boolean equals(Object obj) {
        return (obj instanceof C10055m) && C10059q.m1643a(C10019a.m1664a(this), C10019a.m1664a((AbstractC9870c) obj));
    }

    @Override // p573f.p574a0.AbstractC9868a
    public List<Annotation> getAnnotations() {
        m1649b();
        throw null;
    }

    public int hashCode() {
        return C10019a.m1664a(this).hashCode();
    }

    public String toString() {
        return mo1631a().toString() + " (Kotlin reflection is not available)";
    }
}
