package p131c.p396i.p397a.p406i;

import java.util.HashMap;
import java.util.Map;
import p131c.p396i.p397a.p398e.AbstractC6508d;
import p131c.p396i.p397a.p398e.AbstractViewTreeObserver$OnScrollChangedListenerC6512e;
/* renamed from: c.i.a.i.a */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/a.class */
public abstract class AbstractC6556a {
    /* renamed from: a */
    public abstract String mo20031a();

    /* renamed from: a */
    public Map<String, Map<Integer, Class<? extends AbstractC6508d>>> m20506a(Map<String, Map<Integer, Class<? extends AbstractC6508d>>> map, String str, int i, Class<? extends AbstractC6508d> cls) {
        Map<String, Map<Integer, Class<? extends AbstractC6508d>>> map2 = map;
        if (map == null) {
            map2 = new HashMap<>();
        }
        Map<Integer, Class<? extends AbstractC6508d>> map3 = map2.get(str);
        Map<Integer, Class<? extends AbstractC6508d>> map4 = map3;
        if (map3 == null) {
            map4 = new HashMap<>();
            map2.put(str, map4);
        }
        map4.put(Integer.valueOf(i), cls);
        return map2;
    }

    /* renamed from: b */
    public abstract Map<String, Map<Integer, Class<? extends AbstractC6508d>>> mo20030b();

    /* renamed from: c */
    public abstract Map<String, Class<? extends AbstractViewTreeObserver$OnScrollChangedListenerC6512e>> mo20029c();
}
