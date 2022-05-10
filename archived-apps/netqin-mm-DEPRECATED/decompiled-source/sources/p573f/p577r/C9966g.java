package p573f.p577r;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import p573f.p590w.p592c.C10059q;
/* renamed from: f.r.g */
/* loaded from: classes2-dex2jar.jar:f/r/g.class */
public class C9966g extends C9963f {
    /* renamed from: a */
    public static final <T> List<T> m1722a(T[] tArr) {
        C10059q.m1637b(tArr, "$this$asList");
        List<T> a = C9970i.m1714a(tArr);
        C10059q.m1642a((Object) a, "ArraysUtilJVM.asList(this)");
        return a;
    }

    /* renamed from: a */
    public static final <T> void m1720a(T[] tArr, T t, int i, int i2) {
        C10059q.m1637b(tArr, "$this$fill");
        Arrays.fill(tArr, i, i2, t);
    }

    /* renamed from: a */
    public static final <T> T[] m1721a(T[] tArr, T t) {
        C10059q.m1637b(tArr, "$this$plus");
        int length = tArr.length;
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, length + 1);
        tArr2[length] = t;
        C10059q.m1642a((Object) tArr2, "result");
        return tArr2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static final <T> T[] m1719a(T[] tArr, Collection<? extends T> collection) {
        C10059q.m1637b(tArr, "$this$plus");
        C10059q.m1637b(collection, "elements");
        int length = tArr.length;
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, collection.size() + length);
        Iterator<? extends T> it = collection.iterator();
        while (it.hasNext()) {
            tArr2[length] = it.next();
            length++;
        }
        C10059q.m1642a((Object) tArr2, "result");
        return tArr2;
    }
}
