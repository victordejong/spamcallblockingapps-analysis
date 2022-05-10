package p131c.p161d.p354f.p356t.p357k;

import com.google.gson.JsonSyntaxException;
import com.google.gson.internal.C$Gson$Types;
import com.google.gson.stream.JsonToken;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import p131c.p161d.p354f.AbstractC6110d;
import p131c.p161d.p354f.AbstractC6129q;
import p131c.p161d.p354f.AbstractC6131r;
import p131c.p161d.p354f.C6111e;
import p131c.p161d.p354f.p355s.AbstractC6133b;
import p131c.p161d.p354f.p355s.AbstractC6134c;
import p131c.p161d.p354f.p356t.AbstractC6157f;
import p131c.p161d.p354f.p356t.C6138b;
import p131c.p161d.p354f.p356t.C6153c;
import p131c.p161d.p354f.p356t.C6159h;
import p131c.p161d.p354f.p356t.p359l.AbstractC6237b;
import p131c.p161d.p354f.p360u.C6239a;
import p131c.p161d.p354f.p361v.C6240a;
import p131c.p161d.p354f.p361v.C6242b;
/* renamed from: c.d.f.t.k.i */
/* loaded from: classes2-dex2jar.jar:c/d/f/t/k/i.class */
public final class C6184i implements AbstractC6131r {

    /* renamed from: a */
    public final C6138b f19711a;

    /* renamed from: b */
    public final AbstractC6110d f19712b;

    /* renamed from: c */
    public final C6153c f19713c;

    /* renamed from: d */
    public final C6174d f19714d;

    /* renamed from: e */
    public final AbstractC6237b f19715e = AbstractC6237b.m21841a();

    /* renamed from: c.d.f.t.k.i$a */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/k/i$a.class */
    public class C6185a extends AbstractC6187c {

        /* renamed from: d */
        public final /* synthetic */ Field f19716d;

        /* renamed from: e */
        public final /* synthetic */ boolean f19717e;

        /* renamed from: f */
        public final /* synthetic */ AbstractC6129q f19718f;

        /* renamed from: g */
        public final /* synthetic */ C6111e f19719g;

        /* renamed from: h */
        public final /* synthetic */ C6239a f19720h;

        /* renamed from: i */
        public final /* synthetic */ boolean f19721i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6185a(C6184i iVar, String str, boolean z, boolean z2, Field field, boolean z3, AbstractC6129q qVar, C6111e eVar, C6239a aVar, boolean z4) {
            super(str, z, z2);
            this.f19716d = field;
            this.f19717e = z3;
            this.f19718f = qVar;
            this.f19719g = eVar;
            this.f19720h = aVar;
            this.f19721i = z4;
        }

        @Override // p131c.p161d.p354f.p356t.p357k.C6184i.AbstractC6187c
        /* renamed from: a */
        public void mo21885a(C6240a aVar, Object obj) throws IOException, IllegalAccessException {
            Object read = this.f19718f.read(aVar);
            if (read != null || !this.f19721i) {
                this.f19716d.set(obj, read);
            }
        }

        @Override // p131c.p161d.p354f.p356t.p357k.C6184i.AbstractC6187c
        /* renamed from: a */
        public void mo21884a(C6242b bVar, Object obj) throws IOException, IllegalAccessException {
            (this.f19717e ? this.f19718f : new C6195m(this.f19719g, this.f19718f, this.f19720h.m21833b())).write(bVar, this.f19716d.get(obj));
        }

        @Override // p131c.p161d.p354f.p356t.p357k.C6184i.AbstractC6187c
        /* renamed from: a */
        public boolean mo21883a(Object obj) throws IOException, IllegalAccessException {
            boolean z = false;
            if (!this.f19725b) {
                return false;
            }
            if (this.f19716d.get(obj) != obj) {
                z = true;
            }
            return z;
        }
    }

    /* renamed from: c.d.f.t.k.i$b */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/k/i$b.class */
    public static final class C6186b<T> extends AbstractC6129q<T> {

        /* renamed from: a */
        public final AbstractC6157f<T> f19722a;

        /* renamed from: b */
        public final Map<String, AbstractC6187c> f19723b;

        public C6186b(AbstractC6157f<T> fVar, Map<String, AbstractC6187c> map) {
            this.f19722a = fVar;
            this.f19723b = map;
        }

        @Override // p131c.p161d.p354f.AbstractC6129q
        public T read(C6240a aVar) throws IOException {
            if (aVar.mo21802u() == JsonToken.NULL) {
                aVar.mo21805r();
                return null;
            }
            T a = this.f19722a.mo21917a();
            try {
                aVar.mo21825b();
                while (aVar.mo21813i()) {
                    AbstractC6187c cVar = this.f19723b.get(aVar.mo21806q());
                    if (cVar != null && cVar.f19726c) {
                        cVar.mo21885a(aVar, a);
                    }
                    aVar.mo21831A();
                }
                aVar.mo21815g();
                return a;
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (IllegalStateException e2) {
                throw new JsonSyntaxException(e2);
            }
        }

        @Override // p131c.p161d.p354f.AbstractC6129q
        public void write(C6242b bVar, T t) throws IOException {
            if (t == null) {
                bVar.mo21770k();
                return;
            }
            bVar.mo21780d();
            try {
                for (AbstractC6187c cVar : this.f19723b.values()) {
                    if (cVar.mo21883a(t)) {
                        bVar.mo21789a(cVar.f19724a);
                        cVar.mo21884a(bVar, t);
                    }
                }
                bVar.mo21775f();
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            }
        }
    }

    /* renamed from: c.d.f.t.k.i$c */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/k/i$c.class */
    public static abstract class AbstractC6187c {

        /* renamed from: a */
        public final String f19724a;

        /* renamed from: b */
        public final boolean f19725b;

        /* renamed from: c */
        public final boolean f19726c;

        public AbstractC6187c(String str, boolean z, boolean z2) {
            this.f19724a = str;
            this.f19725b = z;
            this.f19726c = z2;
        }

        /* renamed from: a */
        public abstract void mo21885a(C6240a aVar, Object obj) throws IOException, IllegalAccessException;

        /* renamed from: a */
        public abstract void mo21884a(C6242b bVar, Object obj) throws IOException, IllegalAccessException;

        /* renamed from: a */
        public abstract boolean mo21883a(Object obj) throws IOException, IllegalAccessException;
    }

    public C6184i(C6138b bVar, AbstractC6110d dVar, C6153c cVar, C6174d dVar2) {
        this.f19711a = bVar;
        this.f19712b = dVar;
        this.f19713c = cVar;
        this.f19714d = dVar2;
    }

    /* renamed from: a */
    public static boolean m21886a(Field field, boolean z, C6153c cVar) {
        return !cVar.m21930a(field.getType(), z) && !cVar.m21929a(field, z);
    }

    /* renamed from: a */
    public final AbstractC6187c m21889a(C6111e eVar, Field field, String str, C6239a<?> aVar, boolean z, boolean z2) {
        boolean a = C6159h.m21912a((Type) aVar.m21836a());
        AbstractC6133b bVar = (AbstractC6133b) field.getAnnotation(AbstractC6133b.class);
        AbstractC6129q<?> a2 = bVar != null ? this.f19714d.m21902a(this.f19711a, eVar, aVar, bVar) : null;
        boolean z3 = a2 != null;
        AbstractC6129q<?> qVar = a2;
        if (a2 == null) {
            qVar = eVar.m21992a((C6239a) aVar);
        }
        return new C6185a(this, str, z, z2, field, z3, qVar, eVar, aVar, a);
    }

    /* renamed from: a */
    public final List<String> m21888a(Field field) {
        AbstractC6134c cVar = (AbstractC6134c) field.getAnnotation(AbstractC6134c.class);
        if (cVar == null) {
            return Collections.singletonList(this.f19712b.translateName(field));
        }
        String value = cVar.value();
        String[] alternate = cVar.alternate();
        if (alternate.length == 0) {
            return Collections.singletonList(value);
        }
        ArrayList arrayList = new ArrayList(alternate.length + 1);
        arrayList.add(value);
        for (String str : alternate) {
            arrayList.add(str);
        }
        return arrayList;
    }

    /* renamed from: a */
    public final Map<String, AbstractC6187c> m21890a(C6111e eVar, C6239a<?> aVar, Class<?> cls) {
        Field[] declaredFields;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type b = aVar.m21833b();
        Class<?> cls2 = cls;
        C6239a<?> aVar2 = aVar;
        while (cls2 != Object.class) {
            for (Field field : cls2.getDeclaredFields()) {
                boolean a = m21887a(field, true);
                boolean a2 = m21887a(field, false);
                if (a || a2) {
                    this.f19715e.mo21840a(field);
                    Type a3 = C$Gson$Types.m7128a(aVar2.m21833b(), cls2, field.getGenericType());
                    List<String> a4 = m21888a(field);
                    int size = a4.size();
                    AbstractC6187c cVar = null;
                    for (int i = 0; i < size; i++) {
                        String str = a4.get(i);
                        if (i != 0) {
                            a = false;
                        }
                        cVar = (AbstractC6187c) linkedHashMap.put(str, m21889a(eVar, field, str, C6239a.m21834a(a3), a, a2));
                        if (cVar == null) {
                        }
                    }
                    if (cVar != null) {
                        throw new IllegalArgumentException(b + " declares multiple JSON fields named " + cVar.f19724a);
                    }
                }
            }
            aVar2 = C6239a.m21834a(C$Gson$Types.m7128a(aVar2.m21833b(), cls2, cls2.getGenericSuperclass()));
            cls2 = aVar2.m21836a();
        }
        return linkedHashMap;
    }

    /* renamed from: a */
    public boolean m21887a(Field field, boolean z) {
        return m21886a(field, z, this.f19713c);
    }

    @Override // p131c.p161d.p354f.AbstractC6131r
    public <T> AbstractC6129q<T> create(C6111e eVar, C6239a<T> aVar) {
        Class<? super T> a = aVar.m21836a();
        if (!Object.class.isAssignableFrom(a)) {
            return null;
        }
        return new C6186b(this.f19711a.m21939a(aVar), m21890a(eVar, (C6239a<?>) aVar, (Class<?>) a));
    }
}
