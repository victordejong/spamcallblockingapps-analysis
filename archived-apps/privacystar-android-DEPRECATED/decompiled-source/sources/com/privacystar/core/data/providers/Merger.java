package com.privacystar.core.data.providers;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/Merger.class */
public abstract class Merger<T> implements Comparator<T> {
    public abstract T combine(List<T> list);

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList<T> getMostRecent(List<T> list) {
        T t = null;
        for (T t2 : list) {
            if (t2 != null && (t == null || compare(t2, t) < 0)) {
                t = t2;
            }
        }
        ArrayList<T> arrayList = new ArrayList<>();
        for (int i = 0; i < list.size(); i++) {
            T t3 = list.get(i);
            if (t3 != null && compare(t3, t) == 0) {
                arrayList.add(t3);
                list.set(i, null);
            }
        }
        return arrayList;
    }
}
