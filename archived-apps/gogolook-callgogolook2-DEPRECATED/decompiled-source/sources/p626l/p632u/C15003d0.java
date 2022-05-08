package p626l.p632u;

import java.util.Collections;
import java.util.Map;
import p626l.C14978j;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.u.d0 */
/* loaded from: classes3-dex2jar.jar:l/u/d0.class */
public class C15003d0 extends C14997c0 {
    /* renamed from: a */
    public static final int m633a(int i) {
        if (i >= 0) {
            i = i < 3 ? i + 1 : i < 1073741824 ? (int) ((i / 0.75f) + 1.0f) : Integer.MAX_VALUE;
        }
        return i;
    }

    /* renamed from: a */
    public static final <K, V> Map<K, V> m632a(Map<? extends K, ? extends V> map) {
        C15149k.m377b(map, "$this$toSingletonMap");
        Map.Entry<? extends K, ? extends V> next = map.entrySet().iterator().next();
        Map<K, V> singletonMap = Collections.singletonMap(next.getKey(), next.getValue());
        C15149k.m383a((Object) singletonMap, "java.util.Collections.singletonMap(key, value)");
        C15149k.m383a((Object) singletonMap, "with(entries.iterator().…ingletonMap(key, value) }");
        return singletonMap;
    }

    /* renamed from: a */
    public static final <K, V> Map<K, V> m631a(C14978j<? extends K, ? extends V> jVar) {
        C15149k.m377b(jVar, "pair");
        Map<K, V> singletonMap = Collections.singletonMap(jVar.m659c(), jVar.m658d());
        C15149k.m383a((Object) singletonMap, "java.util.Collections.si…(pair.first, pair.second)");
        return singletonMap;
    }
}
