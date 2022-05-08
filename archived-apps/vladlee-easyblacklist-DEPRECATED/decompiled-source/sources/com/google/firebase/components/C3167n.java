package com.google.firebase.components;

import com.google.android.gms.common.internal.Preconditions;
/* renamed from: com.google.firebase.components.n */
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/n.class */
public final class C3167n {

    /* renamed from: a */
    private final Class<?> f19011a;

    /* renamed from: b */
    private final int f19012b;

    /* renamed from: c */
    private final int f19013c = 0;

    private C3167n(Class<?> cls, int i) {
        this.f19011a = (Class) Preconditions.checkNotNull(cls, "Null dependency anInterface.");
        this.f19012b = i;
    }

    /* renamed from: a */
    public static C3167n m594a(Class<?> cls) {
        return new C3167n(cls, 1);
    }

    /* renamed from: b */
    public static C3167n m592b(Class<?> cls) {
        return new C3167n(cls, 2);
    }

    /* renamed from: a */
    public final Class<?> m595a() {
        return this.f19011a;
    }

    /* renamed from: b */
    public final boolean m593b() {
        return this.f19012b == 1;
    }

    /* renamed from: c */
    public final boolean m591c() {
        return this.f19012b == 2;
    }

    /* renamed from: d */
    public final boolean m590d() {
        return this.f19013c == 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3167n)) {
            return false;
        }
        C3167n nVar = (C3167n) obj;
        return this.f19011a == nVar.f19011a && this.f19012b == nVar.f19012b && this.f19013c == nVar.f19013c;
    }

    public final int hashCode() {
        int hashCode = this.f19011a.hashCode();
        return this.f19013c ^ ((((hashCode ^ 1000003) * 1000003) ^ this.f19012b) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.f19011a);
        sb.append(", type=");
        int i = this.f19012b;
        boolean z = true;
        sb.append(i == 1 ? "required" : i == 0 ? "optional" : "set");
        sb.append(", direct=");
        if (this.f19013c != 0) {
            z = false;
        }
        sb.append(z);
        sb.append("}");
        return sb.toString();
    }
}
