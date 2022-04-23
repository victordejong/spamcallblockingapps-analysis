package p000a.p001a.p002a.p003a.p004a.p006b;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: a.a.a.a.a.b.b */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/b.class */
public final class C0016b {

    /* renamed from: a */
    public final String f27a;

    /* renamed from: b */
    public final boolean f28b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0016b(String str, boolean z) {
        this.f27a = str;
        this.f28b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C0016b bVar = (C0016b) obj;
        if (this.f28b != bVar.f28b) {
            return false;
        }
        String str = this.f27a;
        return str != null ? str.equals(bVar.f27a) : bVar.f27a == null;
    }

    public final int hashCode() {
        String str = this.f27a;
        return ((str != null ? str.hashCode() : 0) * 31) + (this.f28b ? 1 : 0);
    }
}
