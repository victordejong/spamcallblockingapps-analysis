package androidx.versionedparcelable;

import android.os.Parcelable;
import f.e.a;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/VersionedParcel.class */
public abstract class VersionedParcel {

    /* renamed from: a */
    protected final a<String, Method> f2339a;

    /* renamed from: b */
    protected final a<String, Method> f2340b;

    /* renamed from: c */
    protected final a<String, Class> f2341c;

    /* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/VersionedParcel$ParcelException.class */
    public static class ParcelException extends RuntimeException {
    }

    public VersionedParcel(a<String, Method> aVar, a<String, Method> aVar2, a<String, Class> aVar3) {
        this.f2339a = aVar;
        this.f2340b = aVar2;
        this.f2341c = aVar3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: N */
    private void m4673N(AbstractC0451b abstractC0451b) {
        try {
            m4678I(m4670c(abstractC0451b.getClass()).getName());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(abstractC0451b.getClass().getSimpleName() + " does not have a Parcelizer", e);
        }
    }

    /* renamed from: c */
    private Class m4670c(Class<? extends AbstractC0451b> cls) throws ClassNotFoundException {
        Class<?> cls2 = (Class) this.f2341c.get(cls.getName());
        Class<?> cls3 = cls2;
        if (cls2 == null) {
            cls3 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
            this.f2341c.put(cls.getName(), cls3);
        }
        return cls3;
    }

    /* renamed from: d */
    private Method m4669d(String str) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException {
        Method method = (Method) this.f2339a.get(str);
        Method method2 = method;
        if (method == null) {
            System.currentTimeMillis();
            method2 = Class.forName(str, true, VersionedParcel.class.getClassLoader()).getDeclaredMethod("read", VersionedParcel.class);
            this.f2339a.put(str, method2);
        }
        return method2;
    }

    /* renamed from: e */
    private Method m4668e(Class cls) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException {
        Method method = (Method) this.f2340b.get(cls.getName());
        Method method2 = method;
        if (method == null) {
            Class m4670c = m4670c(cls);
            System.currentTimeMillis();
            method2 = m4670c.getDeclaredMethod("write", cls, VersionedParcel.class);
            this.f2340b.put(cls.getName(), method2);
        }
        return method2;
    }

    /* renamed from: A */
    protected abstract void m4686A(byte[] bArr);

    /* renamed from: B */
    public void m4685B(byte[] bArr, int i) {
        m4650w(i);
        m4686A(bArr);
    }

    /* renamed from: C */
    protected abstract void m4684C(CharSequence charSequence);

    /* renamed from: D */
    public void m4683D(CharSequence charSequence, int i) {
        m4650w(i);
        m4684C(charSequence);
    }

    /* renamed from: E */
    protected abstract void m4682E(int i);

    /* renamed from: F */
    public void m4681F(int i, int i2) {
        m4650w(i2);
        m4682E(i);
    }

    /* renamed from: G */
    protected abstract void m4680G(Parcelable parcelable);

    /* renamed from: H */
    public void m4679H(Parcelable parcelable, int i) {
        m4650w(i);
        m4680G(parcelable);
    }

    /* renamed from: I */
    protected abstract void m4678I(String str);

    /* renamed from: J */
    public void m4677J(String str, int i) {
        m4650w(i);
        m4678I(str);
    }

    /* renamed from: K */
    protected <T extends AbstractC0451b> void m4676K(T t, VersionedParcel versionedParcel) {
        try {
            m4668e(t.getClass()).invoke(null, t, versionedParcel);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
        } catch (InvocationTargetException e4) {
            if (!(e4.getCause() instanceof RuntimeException)) {
                throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
            }
            throw ((RuntimeException) e4.getCause());
        }
    }

    /* renamed from: L */
    public void m4675L(AbstractC0451b abstractC0451b) {
        if (abstractC0451b == null) {
            m4678I(null);
            return;
        }
        m4673N(abstractC0451b);
        VersionedParcel m4671b = m4671b();
        m4676K(abstractC0451b, m4671b);
        m4671b.m4672a();
    }

    /* renamed from: M */
    public void m4674M(AbstractC0451b abstractC0451b, int i) {
        m4650w(i);
        m4675L(abstractC0451b);
    }

    /* renamed from: a */
    protected abstract void m4672a();

    /* renamed from: b */
    protected abstract VersionedParcel m4671b();

    /* renamed from: f */
    public boolean m4667f() {
        return false;
    }

    /* renamed from: g */
    protected abstract boolean m4666g();

    /* renamed from: h */
    public boolean m4665h(boolean z, int i) {
        return !m4660m(i) ? z : m4666g();
    }

    /* renamed from: i */
    protected abstract byte[] m4664i();

    /* renamed from: j */
    public byte[] m4663j(byte[] bArr, int i) {
        return !m4660m(i) ? bArr : m4664i();
    }

    /* renamed from: k */
    protected abstract CharSequence m4662k();

    /* renamed from: l */
    public CharSequence m4661l(CharSequence charSequence, int i) {
        return !m4660m(i) ? charSequence : m4662k();
    }

    /* renamed from: m */
    protected abstract boolean m4660m(int i);

    /* renamed from: n */
    protected <T extends AbstractC0451b> T m4659n(String str, VersionedParcel versionedParcel) {
        try {
            return (T) m4669d(str).invoke(null, versionedParcel);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
        } catch (InvocationTargetException e4) {
            if (!(e4.getCause() instanceof RuntimeException)) {
                throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
            }
            throw ((RuntimeException) e4.getCause());
        }
    }

    /* renamed from: o */
    protected abstract int m4658o();

    /* renamed from: p */
    public int m4657p(int i, int i2) {
        return !m4660m(i2) ? i : m4658o();
    }

    /* renamed from: q */
    protected abstract <T extends Parcelable> T m4656q();

    /* renamed from: r */
    public <T extends Parcelable> T m4655r(T t, int i) {
        return !m4660m(i) ? t : (T) m4656q();
    }

    /* renamed from: s */
    protected abstract String m4654s();

    /* renamed from: t */
    public String m4653t(String str, int i) {
        return !m4660m(i) ? str : m4654s();
    }

    /* renamed from: u */
    public <T extends AbstractC0451b> T m4652u() {
        String m4654s = m4654s();
        if (m4654s == null) {
            return null;
        }
        return (T) m4659n(m4654s, m4671b());
    }

    /* renamed from: v */
    public <T extends AbstractC0451b> T m4651v(T t, int i) {
        return !m4660m(i) ? t : (T) m4652u();
    }

    /* renamed from: w */
    protected abstract void m4650w(int i);

    /* renamed from: x */
    public void m4649x(boolean z, boolean z2) {
    }

    /* renamed from: y */
    protected abstract void m4648y(boolean z);

    /* renamed from: z */
    public void m4647z(boolean z, int i) {
        m4650w(i);
        m4648y(z);
    }
}
