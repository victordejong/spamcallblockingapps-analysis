package com.android.contacts;

import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/j.class */
public final class j {

    /* loaded from: classes-dex2jar.jar:com/android/contacts/j$a.class */
    public interface a<T> {
        boolean collapseWith(T t);

        boolean shouldCollapseWith(T t);
    }

    public static <T extends a<T>> void a(List<T> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            T t = list.get(i);
            if (t != null) {
                for (int i2 = i + 1; i2 < size; i2++) {
                    T t2 = list.get(i2);
                    if (t2 != null && t.shouldCollapseWith(t2)) {
                        t.collapseWith(t2);
                        list.set(i2, null);
                    }
                }
            }
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                it.remove();
            }
        }
    }
}
