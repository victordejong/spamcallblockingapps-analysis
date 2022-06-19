package p193e.p194a.p615c4;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.z.c.l;
/* renamed from: e.a.c4.c */
/* loaded from: classes10-dex2jar.jar:e/a/c4/c.class */
public abstract class AbstractC10935c {
    /* renamed from: a */
    public static final boolean m25490a(AbstractC10935c abstractC10935c, Throwable th, Class... clsArr) {
        l.e(th, "$this$hasThrowableTypeInStackTrace");
        l.e(clsArr, "exceptionClasses");
        ArrayList arrayList = new ArrayList();
        for (Class cls : clsArr) {
            String canonicalName = cls.getCanonicalName();
            if (canonicalName != null) {
                arrayList.add(canonicalName);
            }
        }
        Object[] array = arrayList.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        String[] strArr = (String[]) array;
        return abstractC10935c.m25489b(th, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    /* renamed from: b */
    public final boolean m25489b(Throwable th, String... strArr) {
        l.e(th, "$this$hasThrowableTypeInStackTrace");
        l.e(strArr, "exceptionClassNames");
        while (th != null) {
            if (C25225a.m3976Q(strArr, th.getClass().getCanonicalName())) {
                return true;
            }
            th = th.getCause();
        }
        return false;
    }

    /* renamed from: c */
    public String mo25487c(Throwable th) {
        l.e(th, "e");
        String message = th.getMessage();
        if (message == null) {
            message = "";
        }
        return message;
    }

    /* renamed from: d */
    public boolean mo25485d(Throwable th) {
        l.e(th, "e");
        return true;
    }

    /* renamed from: e */
    public abstract boolean mo11316e(Throwable th);
}
