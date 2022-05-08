package kotlinx.coroutines.internal;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.lang.Comparable;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.internal.ThreadSafeHeapNode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@InternalCoroutinesApi
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0019\b\u0017\u0018��*\u0012\b��\u0010\u0003*\u00020\u0001*\b\u0012\u0004\u0012\u00028��0\u0002B\u0007¢\u0006\u0004\b0\u0010\u000fJ\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00028��H\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00028��¢\u0006\u0004\b\b\u0010\u0007J.\u0010\f\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00028��2\u0014\u0010\u000b\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00018��\u0012\u0004\u0012\u00020\n0\tH\u0086\b¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000e\u001a\u00020\u0005¢\u0006\u0004\b\u000e\u0010\u000fJ\u0011\u0010\u0010\u001a\u0004\u0018\u00018��H\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u0004\u0018\u00018��¢\u0006\u0004\b\u0012\u0010\u0011J\u0017\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018��0\u0013H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00028��¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00028��2\u0006\u0010\u0019\u001a\u00020\u0018H\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ&\u0010\u001d\u001a\u0004\u0018\u00018��2\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\n0\tH\u0086\b¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u0004\u0018\u00018��¢\u0006\u0004\b\u001f\u0010\u0011J\u0018\u0010!\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u0018H\u0082\u0010¢\u0006\u0004\b!\u0010\"J\u0018\u0010#\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u0018H\u0082\u0010¢\u0006\u0004\b#\u0010\"J\u001f\u0010%\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u00182\u0006\u0010$\u001a\u00020\u0018H\u0002¢\u0006\u0004\b%\u0010&R \u0010'\u001a\f\u0012\u0006\u0012\u0004\u0018\u00018��\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0013\u0010)\u001a\u00020\n8F@\u0006¢\u0006\u0006\u001a\u0004\b)\u0010*R$\u0010/\u001a\u00020\u00182\u0006\u0010+\u001a\u00020\u00188F@BX\u0086\u000e¢\u0006\f\u001a\u0004\b,\u0010-\"\u0004\b.\u0010\"¨\u00061"}, d2 = {"Lkotlinx/coroutines/internal/ThreadSafeHeap;", "Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "", "T", "node", "", "addImpl", "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)V", "addLast", "Lkotlin/Function1;", "", "cond", "addLastIf", "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;Lkotlin/jvm/functions/Function1;)Z", "clear", "()V", "firstImpl", "()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "peek", "", "realloc", "()[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "remove", "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)Z", "", FirebaseAnalytics.Param.INDEX, "removeAtImpl", "(I)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "predicate", "removeFirstIf", "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "removeFirstOrNull", "i", "siftDownFrom", "(I)V", "siftUpFrom", "j", "swap", "(II)V", "a", "[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "isEmpty", "()Z", FirebaseAnalytics.Param.VALUE, "getSize", "()I", "setSize", "size", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/ThreadSafeHeap.class */
public class ThreadSafeHeap<T extends ThreadSafeHeapNode & Comparable<? super T>> {
    private volatile int _size = 0;

    /* renamed from: a */
    private T[] f23965a;

    /* renamed from: g */
    private final T[] m413g() {
        T[] tArr;
        T[] tArr2 = this.f23965a;
        if (tArr2 == null) {
            tArr = (T[]) new ThreadSafeHeapNode[4];
            this.f23965a = tArr;
        } else {
            tArr = tArr2;
            if (m416d() >= tArr2.length) {
                Object[] copyOf = Arrays.copyOf(tArr2, m416d() * 2);
                Intrinsics.m1831d(copyOf, "java.util.Arrays.copyOf(this, newSize)");
                tArr = (T[]) ((ThreadSafeHeapNode[]) copyOf);
                this.f23965a = tArr;
            }
        }
        return tArr;
    }

    /* renamed from: k */
    private final void m409k(int i) {
        this._size = i;
    }

    /* renamed from: l */
    private final void m408l(int i) {
        while (true) {
            int i2 = (i * 2) + 1;
            if (i2 < m416d()) {
                T[] tArr = this.f23965a;
                Intrinsics.m1832c(tArr);
                int i3 = i2 + 1;
                i = i2;
                if (i3 < m416d()) {
                    T t = tArr[i3];
                    Intrinsics.m1832c(t);
                    Comparable comparable = (Comparable) t;
                    T t2 = tArr[i2];
                    Intrinsics.m1832c(t2);
                    i = i2;
                    if (comparable.compareTo(t2) < 0) {
                        i = i3;
                    }
                }
                T t3 = tArr[i];
                Intrinsics.m1832c(t3);
                Comparable comparable2 = (Comparable) t3;
                T t4 = tArr[i];
                Intrinsics.m1832c(t4);
                if (comparable2.compareTo(t4) > 0) {
                    m406n(i, i);
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: m */
    private final void m407m(int i) {
        while (i > 0) {
            T[] tArr = this.f23965a;
            Intrinsics.m1832c(tArr);
            int i2 = (i - 1) / 2;
            T t = tArr[i2];
            Intrinsics.m1832c(t);
            Comparable comparable = (Comparable) t;
            T t2 = tArr[i];
            Intrinsics.m1832c(t2);
            if (comparable.compareTo(t2) > 0) {
                m406n(i, i2);
                i = i2;
            } else {
                return;
            }
        }
    }

    /* renamed from: n */
    private final void m406n(int i, int i2) {
        T[] tArr = this.f23965a;
        Intrinsics.m1832c(tArr);
        T t = tArr[i2];
        Intrinsics.m1832c(t);
        T t2 = tArr[i];
        Intrinsics.m1832c(t2);
        tArr[i] = t;
        tArr[i2] = t2;
        t.mo238e(i);
        t2.mo238e(i2);
    }

    @PublishedApi
    /* renamed from: a */
    public final void m419a(@NotNull T t) {
        if (DebugKt.m1308a()) {
            if (!(t.mo239b() == null)) {
                throw new AssertionError();
            }
        }
        t.mo240a(this);
        T[] g = m413g();
        int d = m416d();
        m409k(d + 1);
        g[d] = t;
        t.mo238e(d);
        m407m(d);
    }

    /* renamed from: b */
    public final void m418b(@NotNull T t) {
        synchronized (this) {
            m419a(t);
            Unit unit = Unit.f20447a;
        }
    }

    @PublishedApi
    @Nullable
    /* renamed from: c */
    public final T m417c() {
        T[] tArr = this.f23965a;
        return tArr != null ? tArr[0] : null;
    }

    /* renamed from: d */
    public final int m416d() {
        return this._size;
    }

    /* renamed from: e */
    public final boolean m415e() {
        return m416d() == 0;
    }

    @Nullable
    /* renamed from: f */
    public final T m414f() {
        T c;
        synchronized (this) {
            c = m417c();
        }
        return c;
    }

    /* renamed from: h */
    public final boolean m412h(@NotNull T t) {
        boolean z;
        synchronized (this) {
            z = true;
            boolean z2 = false;
            if (t.mo239b() == null) {
                z = false;
            } else {
                int index = t.getIndex();
                if (DebugKt.m1308a()) {
                    if (index >= 0) {
                        z2 = true;
                    }
                    if (!z2) {
                        throw new AssertionError();
                    }
                }
                m411i(index);
            }
        }
        return z;
    }

    @PublishedApi
    @NotNull
    /* renamed from: i */
    public final T m411i(int i) {
        boolean z = false;
        if (DebugKt.m1308a()) {
            if (!(m416d() > 0)) {
                throw new AssertionError();
            }
        }
        T[] tArr = this.f23965a;
        Intrinsics.m1832c(tArr);
        m409k(m416d() - 1);
        if (i < m416d()) {
            m406n(i, m416d());
            int i2 = (i - 1) / 2;
            if (i > 0) {
                T t = tArr[i];
                Intrinsics.m1832c(t);
                Comparable comparable = (Comparable) t;
                T t2 = tArr[i2];
                Intrinsics.m1832c(t2);
                if (comparable.compareTo(t2) < 0) {
                    m406n(i, i2);
                    m407m(i2);
                }
            }
            m408l(i);
        }
        T t3 = tArr[m416d()];
        Intrinsics.m1832c(t3);
        if (DebugKt.m1308a()) {
            if (t3.mo239b() == this) {
                z = true;
            }
            if (!z) {
                throw new AssertionError();
            }
        }
        t3.mo240a(null);
        t3.mo238e(-1);
        tArr[m416d()] = null;
        return t3;
    }

    @Nullable
    /* renamed from: j */
    public final T m410j() {
        T i;
        synchronized (this) {
            i = m416d() > 0 ? m411i(0) : null;
        }
        return i;
    }
}
