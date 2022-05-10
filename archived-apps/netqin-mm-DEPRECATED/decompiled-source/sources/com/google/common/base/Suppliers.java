package com.google.common.base;

import java.io.Serializable;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.AbstractC4941s;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/base/Suppliers.class */
public final class Suppliers {

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Suppliers$ExpiringMemoizingSupplier.class */
    public static class ExpiringMemoizingSupplier<T> implements AbstractC4941s<T>, Serializable {
        public static final long serialVersionUID = 0;
        public final AbstractC4941s<T> delegate;
        public final long durationNanos;
        public volatile transient long expirationNanos;
        public volatile transient T value;

        public ExpiringMemoizingSupplier(AbstractC4941s<T> sVar, long j, TimeUnit timeUnit) {
            C4933n.m24795a(sVar);
            this.delegate = sVar;
            this.durationNanos = timeUnit.toNanos(j);
            C4933n.m24783a(j > 0, "duration (%s %s) must be > 0", j, timeUnit);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v18, types: [long] */
        /* JADX WARN: Type inference failed for: r8v1 */
        /* JADX WARN: Type inference failed for: r8v3 */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // p131c.p161d.p266c.p267a.AbstractC4941s
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public T get() {
            /*
                r5 = this;
                r0 = r5
                long r0 = r0.expirationNanos
                r6 = r0
                long r0 = p131c.p161d.p266c.p267a.C4930m.m24801c()
                r8 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x0017
                r0 = r8
                r1 = r6
                long r0 = r0 - r1
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L_0x0050
            L_0x0017:
                r0 = r5
                monitor-enter(r0)
                r0 = r6
                r1 = r5
                long r1 = r1.expirationNanos     // Catch: all -> 0x0055
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x004e
                r0 = r5
                c.d.c.a.s<T> r0 = r0.delegate     // Catch: all -> 0x0055
                java.lang.Object r0 = r0.get()     // Catch: all -> 0x0055
                r10 = r0
                r0 = r5
                r1 = r10
                r0.value = r1     // Catch: all -> 0x0055
                r0 = r8
                r1 = r5
                long r1 = r1.durationNanos     // Catch: all -> 0x0055
                long r0 = r0 + r1
                r6 = r0
                r0 = r6
                r8 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0044
                r0 = 1
                r8 = r0
            L_0x0044:
                r0 = r5
                r1 = r8
                r0.expirationNanos = r1     // Catch: all -> 0x0055
                r0 = r5
                monitor-exit(r0)     // Catch: all -> 0x0055
                r0 = r10
                return r0
            L_0x004e:
                r0 = r5
                monitor-exit(r0)     // Catch: all -> 0x0055
            L_0x0050:
                r0 = r5
                T r0 = r0.value
                return r0
            L_0x0055:
                r10 = move-exception
                r0 = r5
                monitor-exit(r0)     // Catch: all -> 0x0055
                r0 = r10
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.base.Suppliers.ExpiringMemoizingSupplier.get():java.lang.Object");
        }

        public String toString() {
            return "Suppliers.memoizeWithExpiration(" + this.delegate + ", " + this.durationNanos + ", NANOS)";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Suppliers$MemoizingSupplier.class */
    public static class MemoizingSupplier<T> implements AbstractC4941s<T>, Serializable {
        public static final long serialVersionUID = 0;
        public final AbstractC4941s<T> delegate;
        public volatile transient boolean initialized;
        public transient T value;

        public MemoizingSupplier(AbstractC4941s<T> sVar) {
            C4933n.m24795a(sVar);
            this.delegate = sVar;
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4941s
        public T get() {
            if (!this.initialized) {
                synchronized (this) {
                    if (!this.initialized) {
                        T t = this.delegate.get();
                        this.value = t;
                        this.initialized = true;
                        return t;
                    }
                }
            }
            return this.value;
        }

        public String toString() {
            Object obj;
            StringBuilder sb = new StringBuilder();
            sb.append("Suppliers.memoize(");
            if (this.initialized) {
                obj = "<supplier that returned " + this.value + ">";
            } else {
                obj = this.delegate;
            }
            sb.append(obj);
            sb.append(")");
            return sb.toString();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Suppliers$SupplierComposition.class */
    public static class SupplierComposition<F, T> implements AbstractC4941s<T>, Serializable {
        public static final long serialVersionUID = 0;
        public final AbstractC4920g<? super F, T> function;
        public final AbstractC4941s<F> supplier;

        public SupplierComposition(AbstractC4920g<? super F, T> gVar, AbstractC4941s<F> sVar) {
            C4933n.m24795a(gVar);
            this.function = gVar;
            C4933n.m24795a(sVar);
            this.supplier = sVar;
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof SupplierComposition) {
                SupplierComposition supplierComposition = (SupplierComposition) obj;
                z = false;
                if (this.function.equals(supplierComposition.function)) {
                    z = false;
                    if (this.supplier.equals(supplierComposition.supplier)) {
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4941s
        public T get() {
            return this.function.apply((F) this.supplier.get());
        }

        public int hashCode() {
            return C4928k.m24807a(this.function, this.supplier);
        }

        public String toString() {
            return "Suppliers.compose(" + this.function + ", " + this.supplier + ")";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Suppliers$SupplierFunctionImpl.class */
    public enum SupplierFunctionImpl implements AbstractC7330a<Object> {
        INSTANCE;

        public Object apply(AbstractC4941s<Object> sVar) {
            return sVar.get();
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Suppliers.supplierFunction()";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Suppliers$SupplierOfInstance.class */
    public static class SupplierOfInstance<T> implements AbstractC4941s<T>, Serializable {
        public static final long serialVersionUID = 0;
        public final T instance;

        public SupplierOfInstance(T t) {
            this.instance = t;
        }

        public boolean equals(Object obj) {
            if (obj instanceof SupplierOfInstance) {
                return C4928k.m24808a(this.instance, ((SupplierOfInstance) obj).instance);
            }
            return false;
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4941s
        public T get() {
            return this.instance;
        }

        public int hashCode() {
            return C4928k.m24807a(this.instance);
        }

        public String toString() {
            return "Suppliers.ofInstance(" + this.instance + ")";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Suppliers$ThreadSafeSupplier.class */
    public static class ThreadSafeSupplier<T> implements AbstractC4941s<T>, Serializable {
        public static final long serialVersionUID = 0;
        public final AbstractC4941s<T> delegate;

        public ThreadSafeSupplier(AbstractC4941s<T> sVar) {
            C4933n.m24795a(sVar);
            this.delegate = sVar;
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4941s
        public T get() {
            T t;
            synchronized (this.delegate) {
                t = this.delegate.get();
            }
            return t;
        }

        public String toString() {
            return "Suppliers.synchronizedSupplier(" + this.delegate + ")";
        }
    }

    /* renamed from: com.google.common.base.Suppliers$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Suppliers$a.class */
    public interface AbstractC7330a<T> extends AbstractC4920g<AbstractC4941s<T>, T> {
    }

    /* renamed from: a */
    public static <T> AbstractC4941s<T> m8561a(T t) {
        return new SupplierOfInstance(t);
    }
}
