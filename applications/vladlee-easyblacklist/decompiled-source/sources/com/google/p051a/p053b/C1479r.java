package com.google.p051a.p053b;

import com.google.p051a.AbstractC1368a;
import com.google.p051a.AbstractC1378ae;
import com.google.p051a.AbstractC1380ag;
import com.google.p051a.C1381b;
import com.google.p051a.C1507k;
import com.google.p051a.p052a.AbstractC1369a;
import com.google.p051a.p052a.AbstractC1372d;
import com.google.p051a.p052a.AbstractC1373e;
import com.google.p051a.p057c.C1493a;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.a.b.r */
/* loaded from: classes-dex2jar.jar:com/google/a/b/r.class */
public final class C1479r implements AbstractC1380ag, Cloneable {

    /* renamed from: a */
    public static final C1479r f5659a = new C1479r();

    /* renamed from: e */
    private boolean f5663e;

    /* renamed from: b */
    private double f5660b = -1.0d;

    /* renamed from: c */
    private int f5661c = 136;

    /* renamed from: d */
    private boolean f5662d = true;

    /* renamed from: f */
    private List<AbstractC1368a> f5664f = Collections.emptyList();

    /* renamed from: g */
    private List<AbstractC1368a> f5665g = Collections.emptyList();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public C1479r clone() {
        try {
            return (C1479r) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: a */
    private boolean m6279a(AbstractC1372d dVar) {
        return dVar == null || dVar.m6357a() <= this.f5660b;
    }

    /* renamed from: a */
    private boolean m6278a(AbstractC1372d dVar, AbstractC1373e eVar) {
        return m6279a(dVar) && m6277a(eVar);
    }

    /* renamed from: a */
    private boolean m6277a(AbstractC1373e eVar) {
        return eVar == null || eVar.m6356a() > this.f5660b;
    }

    /* renamed from: a */
    private boolean m6275a(Class<?> cls) {
        if (this.f5660b == -1.0d || m6278a((AbstractC1372d) cls.getAnnotation(AbstractC1372d.class), (AbstractC1373e) cls.getAnnotation(AbstractC1373e.class))) {
            return (!this.f5662d && m6270c(cls)) || m6271b(cls);
        }
        return true;
    }

    /* renamed from: a */
    private boolean m6272a(boolean z) {
        for (AbstractC1368a aVar : z ? this.f5664f : this.f5665g) {
            if (aVar.m6364b()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    private static boolean m6271b(Class<?> cls) {
        if (!Enum.class.isAssignableFrom(cls)) {
            return cls.isAnonymousClass() || cls.isLocalClass();
        }
        return false;
    }

    /* renamed from: c */
    private static boolean m6270c(Class<?> cls) {
        return cls.isMemberClass() && !m6269d(cls);
    }

    /* renamed from: d */
    private static boolean m6269d(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    @Override // com.google.p051a.AbstractC1380ag
    /* renamed from: a */
    public final <T> AbstractC1378ae<T> mo6276a(C1507k kVar, C1493a<T> aVar) {
        boolean a = m6275a(aVar.m6254a());
        boolean z = a || m6272a(true);
        boolean z2 = a || m6272a(false);
        if (z || z2) {
            return new C1480s(this, z2, z, kVar, aVar);
        }
        return null;
    }

    /* renamed from: a */
    public final boolean m6274a(Class<?> cls, boolean z) {
        return m6275a(cls) || m6272a(z);
    }

    /* renamed from: a */
    public final boolean m6273a(Field field, boolean z) {
        if ((this.f5661c & field.getModifiers()) != 0) {
            return true;
        }
        if (!(this.f5660b == -1.0d || m6278a((AbstractC1372d) field.getAnnotation(AbstractC1372d.class), (AbstractC1373e) field.getAnnotation(AbstractC1373e.class))) || field.isSynthetic()) {
            return true;
        }
        if (this.f5663e) {
            AbstractC1369a aVar = (AbstractC1369a) field.getAnnotation(AbstractC1369a.class);
            if (aVar == null) {
                return true;
            }
            if (z) {
                if (!aVar.m6363a()) {
                    return true;
                }
            } else if (!aVar.m6362b()) {
                return true;
            }
        }
        if ((!this.f5662d && m6270c(field.getType())) || m6271b(field.getType())) {
            return true;
        }
        List<AbstractC1368a> list = z ? this.f5664f : this.f5665g;
        if (list.isEmpty()) {
            return false;
        }
        new C1381b(field);
        for (AbstractC1368a aVar2 : list) {
            if (aVar2.m6365a()) {
                return true;
            }
        }
        return false;
    }
}
