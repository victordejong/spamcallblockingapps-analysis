package androidx.constraintlayout.solver;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/Pools.class */
final class Pools {

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/Pools$Pool.class */
    interface Pool<T> {
        /* renamed from: a */
        boolean mo20473a(T t);

        /* renamed from: b */
        T mo20472b();

        /* renamed from: c */
        void mo20471c(T[] tArr, int i);
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/Pools$SimplePool.class */
    static class SimplePool<T> implements Pool<T> {

        /* renamed from: a */
        private final Object[] f2111a;

        /* renamed from: b */
        private int f2112b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public SimplePool(int i) {
            if (i > 0) {
                this.f2111a = new Object[i];
                return;
            }
            throw new IllegalArgumentException("The max pool size must be > 0");
        }

        @Override // androidx.constraintlayout.solver.Pools.Pool
        /* renamed from: a */
        public boolean mo20473a(T t) {
            int i = this.f2112b;
            Object[] objArr = this.f2111a;
            if (i >= objArr.length) {
                return false;
            }
            objArr[i] = t;
            this.f2112b = i + 1;
            return true;
        }

        @Override // androidx.constraintlayout.solver.Pools.Pool
        /* renamed from: b */
        public T mo20472b() {
            int i = this.f2112b;
            if (i <= 0) {
                return null;
            }
            int i2 = i - 1;
            Object[] objArr = this.f2111a;
            T t = (T) objArr[i2];
            objArr[i2] = null;
            this.f2112b = i - 1;
            return t;
        }

        @Override // androidx.constraintlayout.solver.Pools.Pool
        /* renamed from: c */
        public void mo20471c(T[] tArr, int i) {
            int i2 = i;
            if (i > tArr.length) {
                i2 = tArr.length;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                T t = tArr[i3];
                int i4 = this.f2112b;
                Object[] objArr = this.f2111a;
                if (i4 < objArr.length) {
                    objArr[i4] = t;
                    this.f2112b = i4 + 1;
                }
            }
        }
    }

    private Pools() {
    }
}
