package p131c.p161d.p367h;

import com.google.protobuf.MapFieldLite;
import java.util.Map;
import p131c.p161d.p367h.C6319h0;
/* renamed from: c.d.h.j0 */
/* loaded from: classes2-dex2jar.jar:c/d/h/j0.class */
public class C6333j0 implements AbstractC6325i0 {
    /* renamed from: a */
    public static <K, V> MapFieldLite<K, V> m21385a(Object obj, Object obj2) {
        MapFieldLite mapFieldLite = (MapFieldLite) obj;
        MapFieldLite<K, V> mapFieldLite2 = (MapFieldLite) obj2;
        MapFieldLite<K, V> mapFieldLite3 = mapFieldLite;
        if (!mapFieldLite2.isEmpty()) {
            mapFieldLite3 = mapFieldLite;
            if (!mapFieldLite.isMutable()) {
                mapFieldLite3 = mapFieldLite.mutableCopy();
            }
            mapFieldLite3.mergeFrom(mapFieldLite2);
        }
        return mapFieldLite3;
    }

    /* renamed from: b */
    public static <K, V> int m21384b(int i, Object obj, Object obj2) {
        MapFieldLite mapFieldLite = (MapFieldLite) obj;
        C6319h0 h0Var = (C6319h0) obj2;
        int i2 = 0;
        if (mapFieldLite.isEmpty()) {
            return 0;
        }
        for (Map.Entry<K, V> entry : mapFieldLite.entrySet()) {
            i2 += h0Var.m21479a(i, (int) entry.getKey(), (K) entry.getValue());
        }
        return i2;
    }

    @Override // p131c.p161d.p367h.AbstractC6325i0
    /* renamed from: a */
    public int mo21387a(int i, Object obj, Object obj2) {
        return m21384b(i, obj, obj2);
    }

    @Override // p131c.p161d.p367h.AbstractC6325i0
    /* renamed from: a */
    public Object mo21386a(Object obj) {
        ((MapFieldLite) obj).makeImmutable();
        return obj;
    }

    @Override // p131c.p161d.p367h.AbstractC6325i0
    /* renamed from: b */
    public C6319h0.C6320a<?, ?> mo21383b(Object obj) {
        return ((C6319h0) obj).m21480a();
    }

    @Override // p131c.p161d.p367h.AbstractC6325i0
    /* renamed from: b */
    public Object mo21382b(Object obj, Object obj2) {
        return m21385a(obj, obj2);
    }

    @Override // p131c.p161d.p367h.AbstractC6325i0
    /* renamed from: c */
    public Map<?, ?> mo21381c(Object obj) {
        return (MapFieldLite) obj;
    }

    @Override // p131c.p161d.p367h.AbstractC6325i0
    /* renamed from: d */
    public Object mo21380d(Object obj) {
        return MapFieldLite.emptyMapField().mutableCopy();
    }

    @Override // p131c.p161d.p367h.AbstractC6325i0
    /* renamed from: e */
    public boolean mo21379e(Object obj) {
        return !((MapFieldLite) obj).isMutable();
    }

    @Override // p131c.p161d.p367h.AbstractC6325i0
    /* renamed from: f */
    public Map<?, ?> mo21378f(Object obj) {
        return (MapFieldLite) obj;
    }
}
