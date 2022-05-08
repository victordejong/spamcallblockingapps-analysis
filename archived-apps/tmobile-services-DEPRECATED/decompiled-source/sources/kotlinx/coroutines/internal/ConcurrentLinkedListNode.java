package kotlinx.coroutines.internal;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.internal.ConcurrentLinkedListNode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\r\n\u0002\u0010��\n\u0002\b\f\b \u0018��*\u000e\b��\u0010\u0001*\b\u0012\u0004\u0012\u00028��0��B\u0011\u0012\b\u0010\u001c\u001a\u0004\u0018\u00018��¢\u0006\u0004\b!\u0010\"J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\r\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J \u0010\u000b\u001a\u0004\u0018\u00018��2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0086\b¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u0004J\u0015\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00028��¢\u0006\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0011\u001a\u00020\u00058F@\u0006¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0007R\u0018\u0010\u0014\u001a\u0004\u0018\u00018��8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0015\u0010\u0016\u001a\u0004\u0018\u00018��8F@\u0006¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0013R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0015\u0010\u001c\u001a\u0004\u0018\u00018��8F@\u0006¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0013R\u0016\u0010\u001e\u001a\u00020\u00058&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u0007R\u0016\u0010 \u001a\u00028��8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u0013¨\u0006#"}, d2 = {"Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;", "N", "", "cleanPrev", "()V", "", "markAsClosed", "()Z", "Lkotlin/Function0;", "", "onClosedAction", "nextOrIfClosed", "(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;", "remove", FirebaseAnalytics.Param.VALUE, "trySetNext", "(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Z", "isTail", "getLeftmostAliveNode", "()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;", "leftmostAliveNode", "getNext", "next", "", "getNextOrClosed", "()Ljava/lang/Object;", "nextOrClosed", "getPrev", "prev", "getRemoved", "removed", "getRightmostAliveNode", "rightmostAliveNode", "<init>", "(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/ConcurrentLinkedListNode.class */
public abstract class ConcurrentLinkedListNode<N extends ConcurrentLinkedListNode<N>> {

    /* renamed from: a */
    private static final AtomicReferenceFieldUpdater f23894a = AtomicReferenceFieldUpdater.newUpdater(ConcurrentLinkedListNode.class, Object.class, "_next");

    /* renamed from: b */
    private static final AtomicReferenceFieldUpdater f23895b = AtomicReferenceFieldUpdater.newUpdater(ConcurrentLinkedListNode.class, Object.class, "_prev");
    private volatile Object _next = null;
    private volatile Object _prev;

    public ConcurrentLinkedListNode(@Nullable N n) {
        this._prev = n;
    }

    /* renamed from: c */
    private final N m575c() {
        N f = m572f();
        while (f != null && f.mo468g()) {
            f = (N) ((ConcurrentLinkedListNode) f._prev);
        }
        return f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public final Object m573e() {
        return this._next;
    }

    /* renamed from: h */
    private final N m571h() {
        if (!DebugKt.m1308a() || (!m570i())) {
            N d = m574d();
            Intrinsics.m1832c(d);
            while (d.mo468g()) {
                d = (N) d.m574d();
                Intrinsics.m1832c(d);
            }
            return d;
        }
        throw new AssertionError();
    }

    /* renamed from: b */
    public final void m576b() {
        f23895b.lazySet(this, null);
    }

    @Nullable
    /* renamed from: d */
    public final N m574d() {
        Symbol symbol;
        Object e = m573e();
        symbol = ConcurrentLinkedListKt.f23893a;
        if (e == symbol) {
            return null;
        }
        return (N) ((ConcurrentLinkedListNode) e);
    }

    @Nullable
    /* renamed from: f */
    public final N m572f() {
        return (N) ((ConcurrentLinkedListNode) this._prev);
    }

    /* renamed from: g */
    public abstract boolean mo468g();

    /* renamed from: i */
    public final boolean m570i() {
        return m574d() == null;
    }

    /* renamed from: j */
    public final void m569j() {
        if (DebugKt.m1308a() && !mo468g()) {
            throw new AssertionError();
        } else if (!DebugKt.m1308a() || (!m570i())) {
            while (true) {
                N c = m575c();
                N h = m571h();
                h._prev = c;
                if (c != null) {
                    c._next = h;
                }
                if (!h.mo468g() && (c == null || !c.mo468g())) {
                    return;
                }
            }
        } else {
            throw new AssertionError();
        }
    }

    /* renamed from: k */
    public final boolean m568k(@NotNull N n) {
        return f23894a.compareAndSet(this, null, n);
    }
}
