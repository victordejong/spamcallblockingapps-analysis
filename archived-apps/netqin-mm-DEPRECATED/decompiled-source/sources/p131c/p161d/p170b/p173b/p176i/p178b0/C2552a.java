package p131c.p161d.p170b.p173b.p176i.p178b0;

import android.util.SparseArray;
import com.google.android.datatransport.Priority;
import java.util.EnumMap;
/* renamed from: c.d.b.b.i.b0.a */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/b0/a.class */
public final class C2552a {

    /* renamed from: a */
    public static SparseArray<Priority> f9594a = new SparseArray<>();

    /* renamed from: b */
    public static EnumMap<Priority, Integer> f9595b;

    static {
        EnumMap<Priority, Integer> enumMap = new EnumMap<>(Priority.class);
        f9595b = enumMap;
        enumMap.put((EnumMap<Priority, Integer>) Priority.DEFAULT, (Priority) 0);
        f9595b.put((EnumMap<Priority, Integer>) Priority.VERY_LOW, (Priority) 1);
        f9595b.put((EnumMap<Priority, Integer>) Priority.HIGHEST, (Priority) 2);
        for (Priority priority : f9595b.keySet()) {
            f9594a.append(f9595b.get(priority).intValue(), priority);
        }
    }

    /* renamed from: a */
    public static int m29552a(Priority priority) {
        Integer num = f9595b.get(priority);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + priority);
    }

    /* renamed from: a */
    public static Priority m29553a(int i) {
        Priority priority = f9594a.get(i);
        if (priority != null) {
            return priority;
        }
        throw new IllegalArgumentException("Unknown Priority for value " + i);
    }
}
