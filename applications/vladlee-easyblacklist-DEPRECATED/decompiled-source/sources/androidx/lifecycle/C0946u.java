package androidx.lifecycle;
/* renamed from: androidx.lifecycle.u */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/u.class */
public final class C0946u {

    /* renamed from: a */
    private final AbstractC0947a f3922a;

    /* renamed from: b */
    private final C0949v f3923b;

    /* renamed from: androidx.lifecycle.u$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/u$a.class */
    public interface AbstractC0947a {
        /* renamed from: a */
        <T extends AbstractC0945t> T mo7551a();
    }

    /* renamed from: androidx.lifecycle.u$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/u$b.class */
    static abstract class AbstractC0948b implements AbstractC0947a {
        AbstractC0948b() {
        }

        /* renamed from: b */
        public abstract <T extends AbstractC0945t> T m7550b();
    }

    public C0946u(C0949v vVar, AbstractC0947a aVar) {
        this.f3922a = aVar;
        this.f3923b = vVar;
    }

    /* renamed from: a */
    public final <T extends AbstractC0945t> T m7552a(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            String concat = "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(String.valueOf(canonicalName));
            T t = (T) this.f3923b.m7548a(concat);
            if (cls.isInstance(t)) {
                return t;
            }
            AbstractC0947a aVar = this.f3922a;
            T t2 = aVar instanceof AbstractC0948b ? (T) ((AbstractC0948b) aVar).m7550b() : (T) aVar.mo7551a();
            this.f3923b.m7547a(concat, t2);
            return t2;
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }
}
