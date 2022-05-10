package p131c.p161d.p354f.p356t.p357k;

import com.google.gson.JsonSyntaxException;
import com.google.gson.internal.C$Gson$Types;
import com.google.gson.stream.JsonToken;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;
import p131c.p161d.p354f.AbstractC6123k;
import p131c.p161d.p354f.AbstractC6129q;
import p131c.p161d.p354f.AbstractC6131r;
import p131c.p161d.p354f.C6111e;
import p131c.p161d.p354f.C6126n;
import p131c.p161d.p354f.p356t.AbstractC6156e;
import p131c.p161d.p354f.p356t.AbstractC6157f;
import p131c.p161d.p354f.p356t.C6138b;
import p131c.p161d.p354f.p356t.C6160i;
import p131c.p161d.p354f.p360u.C6239a;
import p131c.p161d.p354f.p361v.C6240a;
import p131c.p161d.p354f.p361v.C6242b;
/* renamed from: c.d.f.t.k.g */
/* loaded from: classes2-dex2jar.jar:c/d/f/t/k/g.class */
public final class C6179g implements AbstractC6131r {

    /* renamed from: a */
    public final C6138b f19702a;

    /* renamed from: b */
    public final boolean f19703b;

    /* renamed from: c.d.f.t.k.g$a */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/k/g$a.class */
    public final class C6180a<K, V> extends AbstractC6129q<Map<K, V>> {

        /* renamed from: a */
        public final AbstractC6129q<K> f19704a;

        /* renamed from: b */
        public final AbstractC6129q<V> f19705b;

        /* renamed from: c */
        public final AbstractC6157f<? extends Map<K, V>> f19706c;

        public C6180a(C6111e eVar, Type type, AbstractC6129q<K> qVar, Type type2, AbstractC6129q<V> qVar2, AbstractC6157f<? extends Map<K, V>> fVar) {
            this.f19704a = new C6195m(eVar, qVar, type);
            this.f19705b = new C6195m(eVar, qVar2, type2);
            this.f19706c = fVar;
        }

        /* renamed from: a */
        public final String m21892a(AbstractC6123k kVar) {
            if (kVar.m21954j()) {
                C6126n c = kVar.m21958c();
                if (c.m21944v()) {
                    return String.valueOf(c.m21947q());
                }
                if (c.m21945u()) {
                    return Boolean.toString(c.m21951k());
                }
                if (c.m21943y()) {
                    return c.m21946t();
                }
                throw new AssertionError();
            } else if (kVar.m21956f()) {
                return "null";
            } else {
                throw new AssertionError();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public void write(C6242b bVar, Map<K, V> map) throws IOException {
            if (map == null) {
                bVar.mo21770k();
            } else if (!C6179g.this.f19703b) {
                bVar.mo21780d();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    bVar.mo21789a(String.valueOf(entry.getKey()));
                    this.f19705b.write(bVar, entry.getValue());
                }
                bVar.mo21775f();
            } else {
                ArrayList arrayList = new ArrayList(map.size());
                ArrayList arrayList2 = new ArrayList(map.size());
                boolean z = false;
                for (Map.Entry<K, V> entry2 : map.entrySet()) {
                    AbstractC6123k jsonTree = this.f19704a.toJsonTree(entry2.getKey());
                    arrayList.add(jsonTree);
                    arrayList2.add(entry2.getValue());
                    z |= jsonTree.m21957d() || jsonTree.m21955i();
                }
                if (z) {
                    bVar.mo21783c();
                    int size = arrayList.size();
                    for (int i = 0; i < size; i++) {
                        bVar.mo21783c();
                        C6160i.m21911a((AbstractC6123k) arrayList.get(i), bVar);
                        this.f19705b.write(bVar, arrayList2.get(i));
                        bVar.mo21776e();
                    }
                    bVar.mo21776e();
                    return;
                }
                bVar.mo21780d();
                int size2 = arrayList.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    bVar.mo21789a(m21892a((AbstractC6123k) arrayList.get(i2)));
                    this.f19705b.write(bVar, arrayList2.get(i2));
                }
                bVar.mo21775f();
            }
        }

        @Override // p131c.p161d.p354f.AbstractC6129q
        public Map<K, V> read(C6240a aVar) throws IOException {
            JsonToken u = aVar.mo21802u();
            if (u == JsonToken.NULL) {
                aVar.mo21805r();
                return null;
            }
            Map<K, V> map = (Map) this.f19706c.mo21917a();
            if (u == JsonToken.BEGIN_ARRAY) {
                aVar.mo21830a();
                while (aVar.mo21813i()) {
                    aVar.mo21830a();
                    K read = this.f19704a.read(aVar);
                    if (map.put(read, this.f19705b.read(aVar)) == null) {
                        aVar.mo21816f();
                    } else {
                        throw new JsonSyntaxException("duplicate key: " + read);
                    }
                }
                aVar.mo21816f();
            } else {
                aVar.mo21825b();
                while (aVar.mo21813i()) {
                    AbstractC6156e.f19673a.mo21796a(aVar);
                    K read2 = this.f19704a.read(aVar);
                    if (map.put(read2, this.f19705b.read(aVar)) != null) {
                        throw new JsonSyntaxException("duplicate key: " + read2);
                    }
                }
                aVar.mo21815g();
            }
            return map;
        }
    }

    public C6179g(C6138b bVar, boolean z) {
        this.f19702a = bVar;
        this.f19703b = z;
    }

    /* renamed from: a */
    public final AbstractC6129q<?> m21893a(C6111e eVar, Type type) {
        return (type == Boolean.TYPE || type == Boolean.class) ? C6196n.f19772f : eVar.m21992a((C6239a) C6239a.m21834a(type));
    }

    @Override // p131c.p161d.p354f.AbstractC6131r
    public <T> AbstractC6129q<T> create(C6111e eVar, C6239a<T> aVar) {
        Type b = aVar.m21833b();
        if (!Map.class.isAssignableFrom(aVar.m21836a())) {
            return null;
        }
        Type[] b2 = C$Gson$Types.m7120b(b, C$Gson$Types.m7116e(b));
        return new C6180a(eVar, b2[0], m21893a(eVar, b2[0]), b2[1], eVar.m21992a((C6239a) C6239a.m21834a(b2[1])), this.f19702a.m21939a(aVar));
    }
}
