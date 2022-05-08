package androidx.versionedparcelable;

import android.os.Parcelable;
import androidx.p026b.C0529a;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.versionedparcelable.b */
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/b.class */
public abstract class AbstractC1276b {

    /* renamed from: a */
    protected final C0529a<String, Method> f5348a;

    /* renamed from: b */
    protected final C0529a<String, Method> f5349b;

    /* renamed from: c */
    protected final C0529a<String, Class> f5350c;

    public AbstractC1276b(C0529a<String, Method> aVar, C0529a<String, Method> aVar2, C0529a<String, Class> aVar3) {
        this.f5348a = aVar;
        this.f5349b = aVar2;
        this.f5350c = aVar3;
    }

    /* renamed from: a */
    private <T extends AbstractC1278d> T m6468a(String str, AbstractC1276b bVar) {
        try {
            Method method = this.f5348a.get(str);
            Method method2 = method;
            if (method == null) {
                System.currentTimeMillis();
                method2 = Class.forName(str, true, AbstractC1276b.class.getClassLoader()).getDeclaredMethod("read", AbstractC1276b.class);
                this.f5348a.put(str, method2);
            }
            return (T) ((AbstractC1278d) method2.invoke(null, bVar));
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
        }
    }

    /* renamed from: a */
    private Method m6469a(Class cls) {
        Method method = this.f5349b.get(cls.getName());
        Method method2 = method;
        if (method == null) {
            Class b = m6462b(cls);
            System.currentTimeMillis();
            method2 = b.getDeclaredMethod("write", cls, AbstractC1276b.class);
            this.f5349b.put(cls.getName(), method2);
        }
        return method2;
    }

    /* renamed from: a */
    private <T extends AbstractC1278d> void m6471a(T t, AbstractC1276b bVar) {
        try {
            m6469a(t.getClass()).invoke(null, t, bVar);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
        }
    }

    /* renamed from: b */
    private Class m6462b(Class<? extends AbstractC1278d> cls) {
        Class<?> cls2 = this.f5350c.get(cls.getName());
        Class<?> cls3 = cls2;
        if (cls2 == null) {
            cls3 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
            this.f5350c.put(cls.getName(), cls3);
        }
        return cls3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    private void m6455d(AbstractC1278d dVar) {
        try {
            mo6449a(m6462b((Class<? extends AbstractC1278d>) dVar.getClass()).getName());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(dVar.getClass().getSimpleName() + " does not have a Parcelizer", e);
        }
    }

    /* renamed from: a */
    protected abstract void mo6453a();

    /* renamed from: a */
    protected abstract void mo6452a(int i);

    /* renamed from: a */
    public final void m6474a(int i, int i2) {
        mo6443c(i2);
        mo6452a(i);
    }

    /* renamed from: a */
    protected abstract void mo6451a(Parcelable parcelable);

    /* renamed from: a */
    public final void m6473a(Parcelable parcelable, int i) {
        mo6443c(i);
        mo6451a(parcelable);
    }

    /* renamed from: a */
    public final void m6472a(AbstractC1278d dVar) {
        mo6443c(1);
        m6464b(dVar);
    }

    /* renamed from: a */
    protected abstract void mo6450a(CharSequence charSequence);

    /* renamed from: a */
    public final void m6470a(CharSequence charSequence, int i) {
        mo6443c(i);
        mo6450a(charSequence);
    }

    /* renamed from: a */
    protected abstract void mo6449a(String str);

    /* renamed from: a */
    protected abstract void mo6448a(boolean z);

    /* renamed from: a */
    public final void m6467a(boolean z, int i) {
        mo6443c(i);
        mo6448a(z);
    }

    /* renamed from: a */
    protected abstract void mo6447a(byte[] bArr);

    /* renamed from: b */
    public final int m6466b(int i, int i2) {
        return !mo6445b(i2) ? i : mo6444c();
    }

    /* renamed from: b */
    public final <T extends Parcelable> T m6465b(T t, int i) {
        return !mo6445b(i) ? t : (T) mo6439g();
    }

    /* renamed from: b */
    protected abstract AbstractC1276b mo6446b();

    /* renamed from: b */
    public final CharSequence m6463b(CharSequence charSequence, int i) {
        return !mo6445b(i) ? charSequence : mo6440f();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final void m6464b(AbstractC1278d dVar) {
        if (dVar == null) {
            mo6449a((String) null);
            return;
        }
        m6455d(dVar);
        AbstractC1276b b = mo6446b();
        m6471a((AbstractC1276b) dVar, b);
        b.mo6453a();
    }

    /* renamed from: b */
    public final void m6461b(String str) {
        mo6443c(7);
        mo6449a(str);
    }

    /* renamed from: b */
    public final void m6459b(byte[] bArr) {
        mo6443c(2);
        mo6447a(bArr);
    }

    /* renamed from: b */
    protected abstract boolean mo6445b(int i);

    /* renamed from: b */
    public final boolean m6460b(boolean z, int i) {
        return !mo6445b(i) ? z : mo6438h();
    }

    /* renamed from: c */
    protected abstract int mo6444c();

    /* renamed from: c */
    public final <T extends AbstractC1278d> T m6458c(T t) {
        return !mo6445b(1) ? t : (T) m6454i();
    }

    /* renamed from: c */
    public final String m6457c(String str) {
        return !mo6445b(7) ? str : mo6442d();
    }

    /* renamed from: c */
    protected abstract void mo6443c(int i);

    /* renamed from: c */
    public final byte[] m6456c(byte[] bArr) {
        return !mo6445b(2) ? bArr : mo6441e();
    }

    /* renamed from: d */
    protected abstract String mo6442d();

    /* renamed from: e */
    protected abstract byte[] mo6441e();

    /* renamed from: f */
    protected abstract CharSequence mo6440f();

    /* renamed from: g */
    protected abstract <T extends Parcelable> T mo6439g();

    /* renamed from: h */
    protected abstract boolean mo6438h();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: i */
    public final <T extends AbstractC1278d> T m6454i() {
        String d = mo6442d();
        if (d == null) {
            return null;
        }
        return (T) m6468a(d, mo6446b());
    }
}
