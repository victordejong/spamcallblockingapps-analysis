package p193e.p194a.p437c.p531c0;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.z.c.l;
/* renamed from: e.a.c.c0.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/c0/f.class */
public final class C10019f<V> extends ConcurrentHashMap<String, V> {
    @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        if (obj instanceof String) {
            String str = (String) obj;
            l.e(str, AnalyticsConstants.KEY);
            Locale locale = Locale.getDefault();
            l.d(locale, "Locale.getDefault()");
            String lowerCase = str.toLowerCase(locale);
            l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            return super.containsKey(lowerCase);
        }
        return false;
    }

    @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        if (obj instanceof String) {
            String str = (String) obj;
            l.e(str, AnalyticsConstants.KEY);
            Locale locale = Locale.getDefault();
            l.d(locale, "Locale.getDefault()");
            String lowerCase = str.toLowerCase(locale);
            l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            return (V) super.get(lowerCase);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.concurrent.ConcurrentHashMap, java.util.Map, java.util.concurrent.ConcurrentMap
    public final /* bridge */ Object getOrDefault(Object obj, Object obj2) {
        return obj instanceof String ? super.getOrDefault((String) obj, obj2) : obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
    public Object put(Object obj, Object obj2) {
        Object obj3;
        String str = (String) obj;
        l.e(str, AnalyticsConstants.KEY);
        if (obj2 != 0) {
            Locale locale = Locale.getDefault();
            l.d(locale, "Locale.getDefault()");
            String lowerCase = str.toLowerCase(locale);
            l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            obj3 = super.put(lowerCase, obj2);
        } else {
            obj3 = null;
        }
        return obj3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends String, ? extends V> map) {
        l.e(map, RemoteMessageConst.FROM);
        LinkedHashMap linkedHashMap = new LinkedHashMap(C25225a.m3942Y1(map.size()));
        Iterator<T> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            Locale locale = Locale.getDefault();
            l.d(locale, "Locale.getDefault()");
            Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
            String lowerCase = str.toLowerCase(locale);
            l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            linkedHashMap.put(lowerCase, entry.getValue());
        }
        super.putAll(linkedHashMap);
    }

    @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        if (obj instanceof String) {
            String str = (String) obj;
            l.e(str, AnalyticsConstants.KEY);
            Locale locale = Locale.getDefault();
            l.d(locale, "Locale.getDefault()");
            String lowerCase = str.toLowerCase(locale);
            l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            return (V) super.remove(lowerCase);
        }
        return null;
    }

    @Override // java.util.concurrent.ConcurrentHashMap, java.util.Map, java.util.concurrent.ConcurrentMap
    public final boolean remove(Object obj, Object obj2) {
        if (obj instanceof String) {
            String str = (String) obj;
            l.e(str, AnalyticsConstants.KEY);
            Locale locale = Locale.getDefault();
            l.d(locale, "Locale.getDefault()");
            String lowerCase = str.toLowerCase(locale);
            l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            return super.remove(lowerCase, obj2);
        }
        return false;
    }
}
