package p081h.p203i.p204a.p206b;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* renamed from: h.i.a.b.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/b.class */
public final class C6493b {

    /* renamed from: a */
    public final String f16174a;

    public C6493b(@NonNull String str) {
        if (str != null) {
            this.f16174a = str;
            return;
        }
        throw new NullPointerException("name is null");
    }

    /* renamed from: a */
    public static C6493b m22467a(@NonNull String str) {
        return new C6493b(str);
    }

    /* renamed from: a */
    public String m22468a() {
        return this.f16174a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6493b)) {
            return false;
        }
        return this.f16174a.equals(((C6493b) obj).f16174a);
    }

    public int hashCode() {
        return this.f16174a.hashCode() ^ 1000003;
    }

    @NonNull
    public String toString() {
        return "Encoding{name=\"" + this.f16174a + "\"}";
    }
}
