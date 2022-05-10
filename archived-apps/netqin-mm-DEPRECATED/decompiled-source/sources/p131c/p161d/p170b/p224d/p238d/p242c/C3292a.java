package p131c.p161d.p170b.p224d.p238d.p242c;

import android.net.Uri;
import com.google.android.gms.common.internal.Objects;
/* renamed from: c.d.b.d.d.c.a */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/c/a.class */
public final class C3292a {

    /* renamed from: a */
    public final Uri f12007a;

    public C3292a(Uri uri) {
        this.f12007a = uri;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3292a)) {
            return false;
        }
        return Objects.m17295a(((C3292a) obj).f12007a, this.f12007a);
    }

    public final int hashCode() {
        return Objects.m17294a(this.f12007a);
    }
}
