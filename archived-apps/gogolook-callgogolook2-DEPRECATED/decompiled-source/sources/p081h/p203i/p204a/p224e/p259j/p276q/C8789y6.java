package p081h.p203i.p204a.p224e.p259j.p276q;

import java.lang.reflect.Field;
import java.security.PrivilegedExceptionAction;
import sun.misc.Unsafe;
/* renamed from: h.i.a.e.j.q.y6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/y6.class */
public final class C8789y6 implements PrivilegedExceptionAction<Unsafe> {
    @Override // java.security.PrivilegedExceptionAction
    public final /* synthetic */ Unsafe run() throws Exception {
        Field[] declaredFields;
        for (Field field : Unsafe.class.getDeclaredFields()) {
            field.setAccessible(true);
            Object obj = field.get(null);
            if (Unsafe.class.isInstance(obj)) {
                return (Unsafe) Unsafe.class.cast(obj);
            }
        }
        return null;
    }
}
