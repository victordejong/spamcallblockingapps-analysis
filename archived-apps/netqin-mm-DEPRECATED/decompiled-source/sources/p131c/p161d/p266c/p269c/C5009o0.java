package p131c.p161d.p266c.p269c;

import com.google.common.collect.CompactHashMap;
import com.google.common.collect.CompactHashSet;
import com.google.common.collect.CompactLinkedHashMap;
import com.google.common.collect.CompactLinkedHashSet;
import com.google.common.collect.MapMaker;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Map;
import java.util.Set;
/* renamed from: c.d.c.c.o0 */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/o0.class */
public final class C5009o0 {
    /* renamed from: a */
    public static MapMaker m24650a(MapMaker mapMaker) {
        mapMaker.m8207g();
        return mapMaker;
    }

    /* renamed from: a */
    public static <K, V> Map<K, V> m24651a(int i) {
        return CompactHashMap.createWithExpectedSize(i);
    }

    /* renamed from: a */
    public static <E> Set<E> m24652a() {
        return CompactHashSet.create();
    }

    /* renamed from: a */
    public static <T> T[] m24649a(T[] tArr, int i) {
        return (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i));
    }

    /* renamed from: a */
    public static <T> T[] m24648a(Object[] objArr, int i, int i2, T[] tArr) {
        return (T[]) Arrays.copyOfRange(objArr, i, i2, tArr.getClass());
    }

    /* renamed from: b */
    public static <K, V> Map<K, V> m24647b() {
        return CompactHashMap.create();
    }

    /* renamed from: b */
    public static <E> Set<E> m24646b(int i) {
        return CompactHashSet.createWithExpectedSize(i);
    }

    /* renamed from: c */
    public static <K, V> Map<K, V> m24645c(int i) {
        return CompactLinkedHashMap.createWithExpectedSize(i);
    }

    /* renamed from: d */
    public static <E> Set<E> m24644d(int i) {
        return CompactLinkedHashSet.createWithExpectedSize(i);
    }
}
