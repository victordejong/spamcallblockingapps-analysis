package p193e.p194a.p431b3;

import com.truecaller.bottombar.BottomBarButtonType;
import java.util.Objects;
import s1.z.c.l;
/* renamed from: e.a.b3.c */
/* loaded from: classes6-dex2jar.jar:e/a/b3/c.class */
public abstract class AbstractC8626c {
    /* renamed from: a */
    public abstract int mo21985a();

    /* renamed from: b */
    public abstract int mo21984b();

    /* renamed from: c */
    public abstract int mo21983c();

    /* renamed from: d */
    public abstract int mo21982d();

    /* renamed from: e */
    public abstract BottomBarButtonType mo21981e();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!l.a(getClass(), obj != null ? obj.getClass() : null)) {
            return false;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type com.truecaller.bottombar.BottomBarButton");
        return mo21981e() == ((AbstractC8626c) obj).mo21981e();
    }

    /* renamed from: f */
    public AbstractC8625b mo21980f() {
        return null;
    }

    public int hashCode() {
        return mo21981e().hashCode();
    }
}
