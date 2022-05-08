package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.Excluder;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import p081h.p203i.p384e.AbstractC10098d;
import p081h.p203i.p384e.AbstractC10117u;
import p081h.p203i.p384e.C10113s;
import p081h.p203i.p384e.p385v.AbstractC10119b;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p081h.p203i.p384e.p386w.AbstractC10154h;
import p081h.p203i.p384e.p386w.C10124b;
import p081h.p203i.p384e.p386w.C10128c;
import p081h.p203i.p384e.p386w.C10156j;
import p081h.p203i.p384e.p386w.p389n.AbstractC10171b;
import p081h.p203i.p384e.p390x.C10173a;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
import p081h.p203i.p384e.p391y.EnumC10176b;
/* loaded from: classes2-dex2jar.jar:com/google/gson/internal/bind/ReflectiveTypeAdapterFactory.class */
public final class ReflectiveTypeAdapterFactory implements AbstractC10117u {

    /* renamed from: a */
    public final C10128c f7856a;

    /* renamed from: b */
    public final AbstractC10098d f7857b;

    /* renamed from: c */
    public final Excluder f7858c;

    /* renamed from: d */
    public final JsonAdapterAnnotationTypeAdapterFactory f7859d;

    /* renamed from: e */
    public final AbstractC10171b f7860e = AbstractC10171b.m13285a();

    /* loaded from: classes2-dex2jar.jar:com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter.class */
    public static final class Adapter<T> extends TypeAdapter<T> {

        /* renamed from: a */
        public final AbstractC10154h<T> f7861a;

        /* renamed from: b */
        public final Map<String, AbstractC3693b> f7862b;

        public Adapter(AbstractC10154h<T> hVar, Map<String, AbstractC3693b> map) {
            this.f7861a = hVar;
            this.f7862b = map;
        }

        @Override // com.google.gson.TypeAdapter
        public T read(C10174a aVar) throws IOException {
            if (aVar.mo13272F() == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            T construct = this.f7861a.construct();
            try {
                aVar.mo13260b();
                while (aVar.mo13249h()) {
                    AbstractC3693b bVar = this.f7862b.get(aVar.mo13242o());
                    if (bVar != null && bVar.f7871c) {
                        bVar.mo30947a(aVar, construct);
                    }
                    aVar.mo13266L();
                }
                aVar.mo13250g();
                return construct;
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (IllegalStateException e2) {
                throw new C10113s(e2);
            }
        }

        @Override // com.google.gson.TypeAdapter
        public void write(C10177c cVar, T t) throws IOException {
            if (t == null) {
                cVar.mo13214k();
                return;
            }
            cVar.mo13224d();
            try {
                for (AbstractC3693b bVar : this.f7862b.values()) {
                    if (bVar.mo30945a(t)) {
                        cVar.mo13233a(bVar.f7869a);
                        bVar.mo30946a(cVar, t);
                    }
                }
                cVar.mo13220f();
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            }
        }
    }

    /* renamed from: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$a */
    /* loaded from: classes2-dex2jar.jar:com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$a.class */
    public class C3692a extends AbstractC3693b {

        /* renamed from: d */
        public final /* synthetic */ Field f7863d;

        /* renamed from: e */
        public final /* synthetic */ boolean f7864e;

        /* renamed from: f */
        public final /* synthetic */ TypeAdapter f7865f;

        /* renamed from: g */
        public final /* synthetic */ Gson f7866g;

        /* renamed from: h */
        public final /* synthetic */ C10173a f7867h;

        /* renamed from: i */
        public final /* synthetic */ boolean f7868i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3692a(ReflectiveTypeAdapterFactory reflectiveTypeAdapterFactory, String str, boolean z, boolean z2, Field field, boolean z3, TypeAdapter typeAdapter, Gson gson, C10173a aVar, boolean z4) {
            super(str, z, z2);
            this.f7863d = field;
            this.f7864e = z3;
            this.f7865f = typeAdapter;
            this.f7866g = gson;
            this.f7867h = aVar;
            this.f7868i = z4;
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.AbstractC3693b
        /* renamed from: a */
        public void mo30947a(C10174a aVar, Object obj) throws IOException, IllegalAccessException {
            Object read = this.f7865f.read(aVar);
            if (read != null || !this.f7868i) {
                this.f7863d.set(obj, read);
            }
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.AbstractC3693b
        /* renamed from: a */
        public void mo30946a(C10177c cVar, Object obj) throws IOException, IllegalAccessException {
            (this.f7864e ? this.f7865f : new TypeAdapterRuntimeTypeWrapper(this.f7866g, this.f7865f, this.f7867h.m13276b())).write(cVar, this.f7863d.get(obj));
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.AbstractC3693b
        /* renamed from: a */
        public boolean mo30945a(Object obj) throws IOException, IllegalAccessException {
            boolean z = false;
            if (!this.f7870b) {
                return false;
            }
            if (this.f7863d.get(obj) != obj) {
                z = true;
            }
            return z;
        }
    }

    /* renamed from: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$b */
    /* loaded from: classes2-dex2jar.jar:com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$b.class */
    public static abstract class AbstractC3693b {

        /* renamed from: a */
        public final String f7869a;

        /* renamed from: b */
        public final boolean f7870b;

        /* renamed from: c */
        public final boolean f7871c;

        public AbstractC3693b(String str, boolean z, boolean z2) {
            this.f7869a = str;
            this.f7870b = z;
            this.f7871c = z2;
        }

        /* renamed from: a */
        public abstract void mo30947a(C10174a aVar, Object obj) throws IOException, IllegalAccessException;

        /* renamed from: a */
        public abstract void mo30946a(C10177c cVar, Object obj) throws IOException, IllegalAccessException;

        /* renamed from: a */
        public abstract boolean mo30945a(Object obj) throws IOException, IllegalAccessException;
    }

    public ReflectiveTypeAdapterFactory(C10128c cVar, AbstractC10098d dVar, Excluder excluder, JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory) {
        this.f7856a = cVar;
        this.f7857b = dVar;
        this.f7858c = excluder;
        this.f7859d = jsonAdapterAnnotationTypeAdapterFactory;
    }

    /* renamed from: a */
    public static boolean m30948a(Field field, boolean z, Excluder excluder) {
        return !excluder.m30967a(field.getType(), z) && !excluder.m30966a(field, z);
    }

    /* renamed from: a */
    public final AbstractC3693b m30951a(Gson gson, Field field, String str, C10173a<?> aVar, boolean z, boolean z2) {
        boolean a = C10156j.m13304a((Type) aVar.m13280a());
        AbstractC10119b bVar = (AbstractC10119b) field.getAnnotation(AbstractC10119b.class);
        TypeAdapter<?> a2 = bVar != null ? this.f7859d.m30956a(this.f7856a, gson, aVar, bVar) : null;
        boolean z3 = a2 != null;
        TypeAdapter<?> typeAdapter = a2;
        if (a2 == null) {
            typeAdapter = gson.m30995a((C10173a) aVar);
        }
        return new C3692a(this, str, z, z2, field, z3, typeAdapter, gson, aVar, a);
    }

    /* renamed from: a */
    public final List<String> m30950a(Field field) {
        AbstractC10120c cVar = (AbstractC10120c) field.getAnnotation(AbstractC10120c.class);
        if (cVar == null) {
            return Collections.singletonList(this.f7857b.translateName(field));
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
    public final Map<String, AbstractC3693b> m30952a(Gson gson, C10173a<?> aVar, Class<?> cls) {
        Field[] declaredFields;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type b = aVar.m13276b();
        Class<?> cls2 = cls;
        C10173a<?> aVar2 = aVar;
        while (cls2 != Object.class) {
            for (Field field : cls2.getDeclaredFields()) {
                boolean a = m30949a(field, true);
                boolean a2 = m30949a(field, false);
                if (a || a2) {
                    this.f7860e.mo13284a(field);
                    Type a3 = C10124b.m13348a(aVar2.m13276b(), cls2, field.getGenericType());
                    List<String> a4 = m30950a(field);
                    int size = a4.size();
                    AbstractC3693b bVar = null;
                    for (int i = 0; i < size; i++) {
                        String str = a4.get(i);
                        if (i != 0) {
                            a = false;
                        }
                        bVar = (AbstractC3693b) linkedHashMap.put(str, m30951a(gson, field, str, C10173a.m13278a(a3), a, a2));
                        if (bVar == null) {
                        }
                    }
                    if (bVar != null) {
                        throw new IllegalArgumentException(b + " declares multiple JSON fields named " + bVar.f7869a);
                    }
                }
            }
            aVar2 = C10173a.m13278a(C10124b.m13348a(aVar2.m13276b(), cls2, cls2.getGenericSuperclass()));
            cls2 = aVar2.m13280a();
        }
        return linkedHashMap;
    }

    /* renamed from: a */
    public boolean m30949a(Field field, boolean z) {
        return m30948a(field, z, this.f7858c);
    }

    @Override // p081h.p203i.p384e.AbstractC10117u
    public <T> TypeAdapter<T> create(Gson gson, C10173a<T> aVar) {
        Class<? super T> a = aVar.m13280a();
        if (!Object.class.isAssignableFrom(a)) {
            return null;
        }
        return new Adapter(this.f7856a.m13332a(aVar), m30952a(gson, (C10173a<?>) aVar, (Class<?>) a));
    }
}
