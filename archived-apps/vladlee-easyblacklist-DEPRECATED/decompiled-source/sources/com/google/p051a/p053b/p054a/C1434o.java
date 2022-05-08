package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.AbstractC1380ag;
import com.google.p051a.AbstractC1506j;
import com.google.p051a.C1374aa;
import com.google.p051a.C1507k;
import com.google.p051a.p052a.AbstractC1370b;
import com.google.p051a.p052a.AbstractC1371c;
import com.google.p051a.p053b.AbstractC1491z;
import com.google.p051a.p053b.C1450aa;
import com.google.p051a.p053b.C1457b;
import com.google.p051a.p053b.C1464c;
import com.google.p051a.p053b.C1479r;
import com.google.p051a.p053b.p056b.AbstractC1462b;
import com.google.p051a.p057c.C1493a;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import com.google.p051a.p058d.EnumC1497c;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.a.b.a.o */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/o.class */
public final class C1434o implements AbstractC1380ag {

    /* renamed from: a */
    private final C1464c f5530a;

    /* renamed from: b */
    private final AbstractC1506j f5531b;

    /* renamed from: c */
    private final C1479r f5532c;

    /* renamed from: d */
    private final C1424f f5533d;

    /* renamed from: e */
    private final AbstractC1462b f5534e = AbstractC1462b.m6287a();

    /* renamed from: com.google.a.b.a.o$a */
    /* loaded from: classes-dex2jar.jar:com/google/a/b/a/o$a.class */
    public static final class C1435a<T> extends AbstractC1378ae<T> {

        /* renamed from: a */
        private final AbstractC1491z<T> f5535a;

        /* renamed from: b */
        private final Map<String, AbstractC1436b> f5536b;

        C1435a(AbstractC1491z<T> zVar, Map<String, AbstractC1436b> map) {
            this.f5535a = zVar;
            this.f5536b = map;
        }

        @Override // com.google.p051a.AbstractC1378ae
        /* renamed from: a */
        public final T mo6175a(C1495a aVar) {
            if (aVar.mo6236f() == EnumC1497c.NULL) {
                aVar.mo6232j();
                return null;
            }
            T a = this.f5535a.mo6257a();
            try {
                aVar.mo6240c();
                while (aVar.mo6237e()) {
                    AbstractC1436b bVar = this.f5536b.get(aVar.mo6235g());
                    if (bVar != null && bVar.f5539j) {
                        bVar.mo6322a(aVar, a);
                    }
                    aVar.mo6228n();
                }
                aVar.mo6238d();
                return a;
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (IllegalStateException e2) {
                throw new C1374aa(e2);
            }
        }

        @Override // com.google.p051a.AbstractC1378ae
        /* renamed from: a */
        public final void mo6174a(C1498d dVar, T t) {
            if (t == null) {
                dVar.mo6195f();
                return;
            }
            dVar.mo6199d();
            try {
                for (AbstractC1436b bVar : this.f5536b.values()) {
                    if (bVar.mo6320a(t)) {
                        dVar.mo6208a(bVar.f5537h);
                        bVar.mo6321a(dVar, t);
                    }
                }
                dVar.mo6196e();
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.a.b.a.o$b */
    /* loaded from: classes-dex2jar.jar:com/google/a/b/a/o$b.class */
    public static abstract class AbstractC1436b {

        /* renamed from: h */
        final String f5537h;

        /* renamed from: i */
        final boolean f5538i;

        /* renamed from: j */
        final boolean f5539j;

        /* JADX INFO: Access modifiers changed from: protected */
        public AbstractC1436b(String str, boolean z, boolean z2) {
            this.f5537h = str;
            this.f5538i = z;
            this.f5539j = z2;
        }

        /* renamed from: a */
        abstract void mo6322a(C1495a aVar, Object obj);

        /* renamed from: a */
        abstract void mo6321a(C1498d dVar, Object obj);

        /* renamed from: a */
        abstract boolean mo6320a(Object obj);
    }

    public C1434o(C1464c cVar, AbstractC1506j jVar, C1479r rVar, C1424f fVar) {
        this.f5530a = cVar;
        this.f5531b = jVar;
        this.f5532c = rVar;
        this.f5533d = fVar;
    }

    /* renamed from: a */
    private List<String> m6324a(Field field) {
        AbstractC1371c cVar = (AbstractC1371c) field.getAnnotation(AbstractC1371c.class);
        if (cVar == null) {
            return Collections.singletonList(this.f5531b.mo6185a(field));
        }
        String a = cVar.m6359a();
        String[] b = cVar.m6358b();
        if (b.length == 0) {
            return Collections.singletonList(a);
        }
        ArrayList arrayList = new ArrayList(b.length + 1);
        arrayList.add(a);
        for (String str : b) {
            arrayList.add(str);
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r32v0 */
    /* JADX WARN: Type inference failed for: r32v1, types: [int] */
    /* renamed from: a */
    private Map<String, AbstractC1436b> m6325a(C1507k kVar, C1493a<?> aVar, Class<?> cls) {
        int i;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type b = aVar.m6251b();
        C1493a<?> aVar2 = aVar;
        while (cls != Object.class) {
            Field[] declaredFields = cls.getDeclaredFields();
            int length = declaredFields.length;
            boolean z = false;
            int i2 = 0;
            while (i2 < length) {
                Field field = declaredFields[i2];
                z = m6323a(field, true);
                boolean a = m6323a(field, z);
                if (z || a) {
                    this.f5534e.mo6286a(field);
                    Type a2 = C1457b.m6297a(aVar2.m6251b(), cls, field.getGenericType());
                    List<String> a3 = m6324a(field);
                    int size = a3.size();
                    AbstractC1436b bVar = null;
                    for (int i3 = z; i3 < size; i3++) {
                        String str = a3.get(i3);
                        if (i3 == 0) {
                        }
                        C1493a<?> a4 = C1493a.m6252a(a2);
                        boolean a5 = C1450aa.m6308a((Type) a4.m6254a());
                        AbstractC1370b bVar2 = (AbstractC1370b) field.getAnnotation(AbstractC1370b.class);
                        AbstractC1378ae<?> a6 = bVar2 != null ? C1424f.m6335a(this.f5530a, kVar, a4, bVar2) : null;
                        boolean z2 = a6 != null;
                        AbstractC1378ae<?> aeVar = a6;
                        if (a6 == null) {
                            aeVar = kVar.m6182a((C1493a) a4);
                        }
                        bVar = (AbstractC1436b) linkedHashMap.put(str, new C1437p(this, str, z, a, field, z2, aeVar, kVar, a4, a5));
                        if (bVar == null) {
                        }
                        z = false;
                        z = z;
                    }
                    i = i2;
                    z = z;
                    length = length;
                    if (bVar != null) {
                        throw new IllegalArgumentException(b + " declares multiple JSON fields named " + bVar.f5537h);
                    }
                } else {
                    i = i2;
                    z = z;
                    length = length;
                }
                i2 = i + 1;
            }
            aVar2 = C1493a.m6252a(C1457b.m6297a(aVar2.m6251b(), cls, cls.getGenericSuperclass()));
            cls = aVar2.m6254a();
        }
        return linkedHashMap;
    }

    /* renamed from: a */
    private boolean m6323a(Field field, boolean z) {
        C1479r rVar = this.f5532c;
        return !rVar.m6274a(field.getType(), z) && !rVar.m6273a(field, z);
    }

    @Override // com.google.p051a.AbstractC1380ag
    /* renamed from: a */
    public final <T> AbstractC1378ae<T> mo6276a(C1507k kVar, C1493a<T> aVar) {
        Class<? super T> a = aVar.m6254a();
        if (!Object.class.isAssignableFrom(a)) {
            return null;
        }
        return new C1435a(this.f5530a.m6282a(aVar), m6325a(kVar, aVar, a));
    }
}
