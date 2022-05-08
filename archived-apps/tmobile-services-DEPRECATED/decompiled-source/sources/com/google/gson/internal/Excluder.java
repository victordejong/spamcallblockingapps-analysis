package com.google.gson.internal;

import com.google.gson.ExclusionStrategy;
import com.google.gson.FieldAttributes;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.Since;
import com.google.gson.annotations.Until;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/gson/internal/Excluder.class */
public final class Excluder implements TypeAdapterFactory, Cloneable {

    /* renamed from: l */
    public static final Excluder f11980l = new Excluder();

    /* renamed from: i */
    private boolean f11984i;

    /* renamed from: f */
    private double f11981f = -1.0d;

    /* renamed from: g */
    private int f11982g = 136;

    /* renamed from: h */
    private boolean f11983h = true;

    /* renamed from: j */
    private List<ExclusionStrategy> f11985j = Collections.emptyList();

    /* renamed from: k */
    private List<ExclusionStrategy> f11986k = Collections.emptyList();

    /* renamed from: d */
    private boolean m8338d(Class<?> cls) {
        if (this.f11981f == -1.0d || m8330o((Since) cls.getAnnotation(Since.class), (Until) cls.getAnnotation(Until.class))) {
            return (!this.f11983h && m8334j(cls)) || m8335i(cls);
        }
        return true;
    }

    /* renamed from: f */
    private boolean m8337f(Class<?> cls, boolean z) {
        for (ExclusionStrategy exclusionStrategy : z ? this.f11985j : this.f11986k) {
            if (exclusionStrategy.m8435b(cls)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    private boolean m8335i(Class<?> cls) {
        return !Enum.class.isAssignableFrom(cls) && (cls.isAnonymousClass() || cls.isLocalClass());
    }

    /* renamed from: j */
    private boolean m8334j(Class<?> cls) {
        return cls.isMemberClass() && !m8333l(cls);
    }

    /* renamed from: l */
    private boolean m8333l(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    /* renamed from: m */
    private boolean m8332m(Since since) {
        return since == null || since.value() <= this.f11981f;
    }

    /* renamed from: n */
    private boolean m8331n(Until until) {
        return until == null || until.value() > this.f11981f;
    }

    /* renamed from: o */
    private boolean m8330o(Since since, Until until) {
        return m8332m(since) && m8331n(until);
    }

    @Override // com.google.gson.TypeAdapterFactory
    /* renamed from: a */
    public <T> TypeAdapter<T> mo8188a(final Gson gson, final TypeToken<T> typeToken) {
        Class<? super T> c = typeToken.m8160c();
        boolean d = m8338d(c);
        final boolean z = d || m8337f(c, true);
        final boolean z2 = d || m8337f(c, false);
        if (z || z2) {
            return new TypeAdapter<T>() { // from class: com.google.gson.internal.Excluder.1

                /* renamed from: a */
                private TypeAdapter<T> f11987a;

                /* JADX WARN: Multi-variable type inference failed */
                /* renamed from: e */
                private TypeAdapter<T> m8329e() {
                    TypeAdapter typeAdapter = this.f11987a;
                    TypeAdapter typeAdapter2 = typeAdapter;
                    if (typeAdapter == null) {
                        TypeAdapter m = gson.m8422m(Excluder.this, typeToken);
                        this.f11987a = m;
                        typeAdapter2 = m;
                    }
                    return typeAdapter2;
                }

                /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
                @Override // com.google.gson.TypeAdapter
                /* renamed from: b */
                public T mo8175b(JsonReader jsonReader) throws IOException {
                    if (!z2) {
                        return m8329e().mo8175b(jsonReader);
                    }
                    jsonReader.mo8124x0();
                    return null;
                }

                @Override // com.google.gson.TypeAdapter
                /* renamed from: d */
                public void mo8174d(JsonWriter jsonWriter, T t) throws IOException {
                    if (z) {
                        jsonWriter.mo8094t();
                    } else {
                        m8329e().mo8174d(jsonWriter, t);
                    }
                }
            };
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public Excluder clone() {
        try {
            return (Excluder) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: c */
    public boolean m8339c(Class<?> cls, boolean z) {
        return m8338d(cls) || m8337f(cls, z);
    }

    /* renamed from: g */
    public boolean m8336g(Field field, boolean z) {
        if ((this.f11982g & field.getModifiers()) != 0) {
            return true;
        }
        if (!(this.f11981f == -1.0d || m8330o((Since) field.getAnnotation(Since.class), (Until) field.getAnnotation(Until.class))) || field.isSynthetic()) {
            return true;
        }
        if (this.f11984i) {
            Expose expose = (Expose) field.getAnnotation(Expose.class);
            if (expose == null) {
                return true;
            }
            if (z) {
                if (!expose.serialize()) {
                    return true;
                }
            } else if (!expose.deserialize()) {
                return true;
            }
        }
        if ((!this.f11983h && m8334j(field.getType())) || m8335i(field.getType())) {
            return true;
        }
        List<ExclusionStrategy> list = z ? this.f11985j : this.f11986k;
        if (list.isEmpty()) {
            return false;
        }
        FieldAttributes fieldAttributes = new FieldAttributes(field);
        for (ExclusionStrategy exclusionStrategy : list) {
            if (exclusionStrategy.m8436a(fieldAttributes)) {
                return true;
            }
        }
        return false;
    }
}
