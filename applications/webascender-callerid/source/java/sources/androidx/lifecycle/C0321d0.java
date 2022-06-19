package androidx.lifecycle;
/* renamed from: androidx.lifecycle.d0 */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/d0.class */
public class C0321d0 {

    /* renamed from: a */
    private final AbstractC0322b f1704a;

    /* renamed from: b */
    private final C0326f0 f1705b;

    /* renamed from: androidx.lifecycle.d0$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/d0$b.class */
    public interface AbstractC0322b {
        /* renamed from: a */
        <T extends AbstractC0318b0> T m5446a(Class<T> cls);
    }

    /* renamed from: androidx.lifecycle.d0$e */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/d0$e.class */
    public static class C0323e {
        C0323e() {
        }

        /* renamed from: b */
        void m5445b(AbstractC0318b0 abstractC0318b0) {
        }
    }

    public C0321d0(C0326f0 c0326f0, AbstractC0322b abstractC0322b) {
        this.f1704a = abstractC0322b;
        this.f1705b = c0326f0;
    }

    public C0321d0(AbstractC0328g0 abstractC0328g0) {
        this(abstractC0328g0.getViewModelStore(), abstractC0328g0 instanceof AbstractC0327g ? ((AbstractC0327g) abstractC0328g0).getDefaultViewModelProviderFactory() : d.b());
    }

    /* renamed from: a */
    public <T extends AbstractC0318b0> T m5448a(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return (T) m5447b("androidx.lifecycle.ViewModelProvider.DefaultKey:" + canonicalName, cls);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    /* renamed from: b */
    public <T extends AbstractC0318b0> T m5447b(String str, Class<T> cls) {
        T t = (T) this.f1705b.m5442b(str);
        if (cls.isInstance(t)) {
            AbstractC0322b abstractC0322b = this.f1704a;
            if (abstractC0322b instanceof C0323e) {
                ((C0323e) abstractC0322b).m5445b(t);
            }
            return t;
        }
        c cVar = this.f1704a;
        AbstractC0318b0 c = cVar instanceof c ? cVar.c(str, cls) : cVar.m5446a(cls);
        this.f1705b.m5440d(str, c);
        return (T) c;
    }
}
