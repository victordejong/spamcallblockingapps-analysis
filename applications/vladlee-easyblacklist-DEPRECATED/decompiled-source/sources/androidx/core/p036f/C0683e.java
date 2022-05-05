package androidx.core.p036f;
/* renamed from: androidx.core.f.e */
/* loaded from: classes-dex2jar.jar:androidx/core/f/e.class */
public final class C0683e {

    /* renamed from: androidx.core.f.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/f/e$a.class */
    public interface AbstractC0684a<T> {
        /* renamed from: a */
        T mo8552a();

        /* renamed from: a */
        boolean mo8551a(T t);
    }

    /* renamed from: androidx.core.f.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/f/e$b.class */
    public static class C0685b<T> implements AbstractC0684a<T> {

        /* renamed from: a */
        private final Object[] f3008a;

        /* renamed from: b */
        private int f3009b;

        public C0685b(int i) {
            if (i > 0) {
                this.f3008a = new Object[i];
                return;
            }
            throw new IllegalArgumentException("The max pool size must be > 0");
        }

        @Override // androidx.core.p036f.C0683e.AbstractC0684a
        /* renamed from: a */
        public T mo8552a() {
            int i = this.f3009b;
            if (i <= 0) {
                return null;
            }
            int i2 = i - 1;
            Object[] objArr = this.f3008a;
            T t = (T) objArr[i2];
            objArr[i2] = null;
            this.f3009b = i - 1;
            return t;
        }

        @Override // androidx.core.p036f.C0683e.AbstractC0684a
        /* renamed from: a */
        public boolean mo8551a(T t) {
            boolean z;
            int i = 0;
            while (true) {
                if (i >= this.f3009b) {
                    z = false;
                    break;
                } else if (this.f3008a[i] == t) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
            if (!z) {
                int i2 = this.f3009b;
                Object[] objArr = this.f3008a;
                if (i2 >= objArr.length) {
                    return false;
                }
                objArr[i2] = t;
                this.f3009b = i2 + 1;
                return true;
            }
            throw new IllegalStateException("Already in the pool!");
        }
    }

    /* renamed from: androidx.core.f.e$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/f/e$c.class */
    public static final class C0686c<T> extends C0685b<T> {

        /* renamed from: a */
        private final Object f3010a = new Object();

        public C0686c(int i) {
            super(i);
        }

        @Override // androidx.core.p036f.C0683e.C0685b, androidx.core.p036f.C0683e.AbstractC0684a
        /* renamed from: a */
        public final T mo8552a() {
            T t;
            synchronized (this.f3010a) {
                t = (T) super.mo8552a();
            }
            return t;
        }

        @Override // androidx.core.p036f.C0683e.C0685b, androidx.core.p036f.C0683e.AbstractC0684a
        /* renamed from: a */
        public final boolean mo8551a(T t) {
            boolean a;
            synchronized (this.f3010a) {
                a = super.mo8551a(t);
            }
            return a;
        }
    }
}
