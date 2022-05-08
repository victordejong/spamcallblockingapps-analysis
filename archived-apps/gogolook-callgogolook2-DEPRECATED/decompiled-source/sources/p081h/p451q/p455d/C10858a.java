package p081h.p451q.p455d;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import p081h.p451q.p452a.AbstractC10844a;
/* renamed from: h.q.d.a */
/* loaded from: classes2-dex2jar.jar:h/q/d/a.class */
public class C10858a {

    /* renamed from: h.q.d.a$a */
    /* loaded from: classes2-dex2jar.jar:h/q/d/a$a.class */
    public static final class C10859a implements AbstractC10844a {
    }

    static {
        new C10859a();
    }

    /* renamed from: a */
    public static <Type> List<Type> m10404a(List<Type> list) {
        if (list == null) {
            return new ArrayList();
        }
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(list);
        ArrayList arrayList = new ArrayList(copyOnWriteArrayList.size());
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    @SafeVarargs
    /* renamed from: a */
    public static <Type> List<Type> m10401a(List<Type>... listArr) {
        if (listArr == null || listArr.length == 0) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = new CopyOnWriteArrayList(listArr).iterator();
        while (it.hasNext()) {
            List list = (List) it.next();
            if (m10400b((Collection) list)) {
                Iterator it2 = new CopyOnWriteArrayList(list).iterator();
                while (it2.hasNext()) {
                    arrayList.add(it2.next());
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static <Key, Value> Map<Key, Value> m10403a(Map<Key, Value> map) {
        if (map == null) {
            return new HashMap();
        }
        Map synchronizedMap = Collections.synchronizedMap(map);
        HashMap hashMap = new HashMap();
        hashMap.putAll(synchronizedMap);
        return hashMap;
    }

    /* renamed from: a */
    public static <Type> boolean m10405a(Collection<Type> collection) {
        return collection == null || collection.isEmpty();
    }

    /* renamed from: a */
    public static <Type> boolean m10402a(Type[] typeArr) {
        return typeArr == null || typeArr.length == 0;
    }

    /* renamed from: b */
    public static <Type> List<Type> m10399b(List<Type> list) {
        List<Type> list2 = list;
        if (m10405a((Collection) list)) {
            list2 = new ArrayList<>();
        }
        return list2;
    }

    /* renamed from: b */
    public static <Type> boolean m10400b(Collection<Type> collection) {
        return !m10405a(collection);
    }

    /* renamed from: b */
    public static <Type> boolean m10398b(Type[] typeArr) {
        return !m10402a(typeArr);
    }

    /* renamed from: c */
    public static <Type> List<Type> m10397c(List<Type> list) {
        return Collections.unmodifiableList(m10399b((List) list));
    }
}
