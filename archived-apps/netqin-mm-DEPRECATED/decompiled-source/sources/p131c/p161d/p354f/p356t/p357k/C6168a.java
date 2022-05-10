package p131c.p161d.p354f.p356t.p357k;

import com.google.gson.internal.C$Gson$Types;
import com.google.gson.stream.JsonToken;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import p131c.p161d.p354f.AbstractC6129q;
import p131c.p161d.p354f.AbstractC6131r;
import p131c.p161d.p354f.C6111e;
import p131c.p161d.p354f.p360u.C6239a;
import p131c.p161d.p354f.p361v.C6240a;
import p131c.p161d.p354f.p361v.C6242b;
/* renamed from: c.d.f.t.k.a */
/* loaded from: classes2-dex2jar.jar:c/d/f/t/k/a.class */
public final class C6168a<E> extends AbstractC6129q<Object> {

    /* renamed from: c */
    public static final AbstractC6131r f19682c = new C6169a();

    /* renamed from: a */
    public final Class<E> f19683a;

    /* renamed from: b */
    public final AbstractC6129q<E> f19684b;

    /* renamed from: c.d.f.t.k.a$a */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/k/a$a.class */
    public class C6169a implements AbstractC6131r {
        @Override // p131c.p161d.p354f.AbstractC6131r
        public <T> AbstractC6129q<T> create(C6111e eVar, C6239a<T> aVar) {
            Type b = aVar.m21833b();
            if (!(b instanceof GenericArrayType) && (!(b instanceof Class) || !((Class) b).isArray())) {
                return null;
            }
            Type d = C$Gson$Types.m7117d(b);
            return new C6168a(eVar, eVar.m21992a((C6239a) C6239a.m21834a(d)), C$Gson$Types.m7116e(d));
        }
    }

    public C6168a(C6111e eVar, AbstractC6129q<E> qVar, Class<E> cls) {
        this.f19684b = new C6195m(eVar, qVar, cls);
        this.f19683a = cls;
    }

    @Override // p131c.p161d.p354f.AbstractC6129q
    public Object read(C6240a aVar) throws IOException {
        if (aVar.mo21802u() == JsonToken.NULL) {
            aVar.mo21805r();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        aVar.mo21830a();
        while (aVar.mo21813i()) {
            arrayList.add(this.f19684b.read(aVar));
        }
        aVar.mo21816f();
        int size = arrayList.size();
        Object newInstance = Array.newInstance((Class<?>) this.f19683a, size);
        for (int i = 0; i < size; i++) {
            Array.set(newInstance, i, arrayList.get(i));
        }
        return newInstance;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p354f.AbstractC6129q
    public void write(C6242b bVar, Object obj) throws IOException {
        if (obj == null) {
            bVar.mo21770k();
            return;
        }
        bVar.mo21783c();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.f19684b.write(bVar, Array.get(obj, i));
        }
        bVar.mo21776e();
    }
}
