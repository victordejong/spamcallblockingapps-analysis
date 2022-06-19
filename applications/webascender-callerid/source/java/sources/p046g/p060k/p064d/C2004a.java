package p046g.p060k.p064d;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import p046g.p060k.p061a.AbstractC1987a;
import p046g.p060k.p061a.AbstractC1988b;
/* renamed from: g.k.d.a */
/* loaded from: classes2-dex2jar.jar:g/k/d/a.class */
public class C2004a {
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <Type> List<Type> m414a(Collection<Type> collection, Type type, AbstractC1988b<Type, Type, Boolean> abstractC1988b) {
        if (collection == null) {
            return new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList(collection);
        boolean z = false;
        for (int i = 0; i < arrayList.size(); i++) {
            if (((Boolean) abstractC1988b.apply(arrayList.get(i), type)).booleanValue()) {
                arrayList.set(i, type);
                z = true;
            }
        }
        if (!z) {
            arrayList.add(type);
        }
        return arrayList;
    }

    @SafeVarargs
    /* renamed from: b */
    public static <Type> List<Type> m413b(List<Type>... listArr) {
        if (listArr == null || listArr.length == 0) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = new CopyOnWriteArrayList(listArr).iterator();
        while (it.hasNext()) {
            List list = (List) it.next();
            if (m406i(list)) {
                Iterator it2 = new CopyOnWriteArrayList(list).iterator();
                while (it2.hasNext()) {
                    arrayList.add(it2.next());
                }
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    public static <Type> List<Type> m412c(List<Type> list) {
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

    /* renamed from: d */
    public static <Key, Value> Map<Key, Value> m411d(Map<Key, Value> map) {
        if (map == null) {
            return new HashMap();
        }
        Map synchronizedMap = Collections.synchronizedMap(map);
        HashMap hashMap = new HashMap();
        hashMap.putAll(synchronizedMap);
        return hashMap;
    }

    /* renamed from: e */
    public static <Type> List<Type> m410e(List<Type> list) {
        ArrayList arrayList = list;
        if (m408g(list)) {
            arrayList = new ArrayList();
        }
        return arrayList;
    }

    /* renamed from: f */
    public static <Type> List<Type> m409f(Collection<Type> collection, AbstractC1987a<Type, Boolean> abstractC1987a) {
        if (collection == null) {
            return new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (Type type : collection) {
            if (abstractC1987a.apply(type).booleanValue()) {
                arrayList.add(type);
            }
        }
        return arrayList;
    }

    /* renamed from: g */
    public static <Type> boolean m408g(Collection<Type> collection) {
        return collection == null || collection.isEmpty();
    }

    /* renamed from: h */
    public static <Type> boolean m407h(Type[] typeArr) {
        return typeArr == null || typeArr.length == 0;
    }

    /* renamed from: i */
    public static <Type> boolean m406i(Collection<Type> collection) {
        return !m408g(collection);
    }

    /* renamed from: j */
    public static <Type> boolean m405j(Type[] typeArr) {
        return !m407h(typeArr);
    }

    /* renamed from: k */
    public static <Type, Return> List<Return> m404k(Collection<Type> collection, AbstractC1987a<Type, Return> abstractC1987a) {
        if (collection == null) {
            return new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (Type type : collection) {
            arrayList.add(abstractC1987a.apply(type));
        }
        return arrayList;
    }

    /* renamed from: l */
    public static <Type> List<Type> m403l(List<Type> list) {
        return Collections.unmodifiableList(m410e(list));
    }
}
