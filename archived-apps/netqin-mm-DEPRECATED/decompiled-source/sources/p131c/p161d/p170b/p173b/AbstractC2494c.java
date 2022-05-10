package p131c.p161d.p170b.p173b;

import com.google.android.datatransport.Priority;
/* renamed from: c.d.b.b.c */
/* loaded from: classes-dex2jar.jar:c/d/b/b/c.class */
public abstract class AbstractC2494c<T> {
    /* renamed from: a */
    public static <T> AbstractC2494c<T> m29659a(T t) {
        return new C2492a(null, t, Priority.DEFAULT);
    }

    /* renamed from: b */
    public static <T> AbstractC2494c<T> m29657b(T t) {
        return new C2492a(null, t, Priority.HIGHEST);
    }

    /* renamed from: a */
    public abstract Integer mo29660a();

    /* renamed from: b */
    public abstract T mo29658b();

    /* renamed from: c */
    public abstract Priority mo29656c();
}
