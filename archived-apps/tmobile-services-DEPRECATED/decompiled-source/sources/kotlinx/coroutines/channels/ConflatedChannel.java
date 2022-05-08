package kotlinx.coroutines.channels;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImplKt;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.channels.AbstractSendChannel;
import kotlinx.coroutines.internal.AtomicKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.selects.SelectKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0010\u0018�� **\u0004\b��\u0010\u00012\u00020\u0002:\u0001*B\u0007¢\u0006\u0004\b(\u0010)J\u001d\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00028��H\u0014¢\u0006\u0004\b\n\u0010\u000bJ#\u0010\u000e\u001a\u00020\t2\u0006\u0010\b\u001a\u00028��2\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\fH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u0012\u0010\u0013J\u0011\u0010\u0014\u001a\u0004\u0018\u00010\tH\u0014¢\u0006\u0004\b\u0014\u0010\u0015J\u001d\u0010\u0016\u001a\u0004\u0018\u00010\t2\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\fH\u0014¢\u0006\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001b\u001a\u00020\u00188T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001c\u001a\u00020\u00058D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u0016\u0010\u001e\u001a\u00020\u00058D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001dR\u0016\u0010\u001f\u001a\u00020\u00058D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u001dR\u0016\u0010 \u001a\u00020\u00058D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b \u0010\u001dR\u0016\u0010!\u001a\u00020\u00058V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\u001dR\u001a\u0010$\u001a\u00060\"j\u0002`#8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010&\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006+"}, d2 = {"Lkotlinx/coroutines/channels/ConflatedChannel;", "E", "Lkotlinx/coroutines/channels/AbstractChannel;", "Lkotlinx/coroutines/channels/Receive;", "receive", "", "enqueueReceiveInternal", "(Lkotlinx/coroutines/channels/Receive;)Z", "element", "", "offerInternal", "(Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "offerSelectInternal", "(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;", "wasClosed", "", "onCancelIdempotent", "(Z)V", "pollInternal", "()Ljava/lang/Object;", "pollSelectInternal", "(Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;", "", "getBufferDebugString", "()Ljava/lang/String;", "bufferDebugString", "isBufferAlwaysEmpty", "()Z", "isBufferAlwaysFull", "isBufferEmpty", "isBufferFull", "isEmpty", "Ljava/util/concurrent/locks/ReentrantLock;", "Lkotlinx/coroutines/internal/ReentrantLock;", "lock", "Ljava/util/concurrent/locks/ReentrantLock;", FirebaseAnalytics.Param.VALUE, "Ljava/lang/Object;", "<init>", "()V", "Companion", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ConflatedChannel.class */
public class ConflatedChannel<E> extends AbstractChannel<E> {

    /* renamed from: j */
    private static final Symbol f22199j = new Symbol("EMPTY");

    /* renamed from: h */
    private final ReentrantLock f22200h = new ReentrantLock();

    /* renamed from: i */
    private Object f22201i = f22199j;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0082\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0016\u0010\u0002\u001a\u00020\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/channels/ConflatedChannel$Companion;", "Lkotlinx/coroutines/internal/Symbol;", "EMPTY", "Lkotlinx/coroutines/internal/Symbol;", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ConflatedChannel$Companion.class */
    private static final class Companion {
        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    /* renamed from: B */
    public final boolean mo809B() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    @NotNull
    /* renamed from: E */
    public Object mo832E(E e) {
        ReceiveOrClosed<E> L;
        Symbol z;
        ReentrantLock reentrantLock = this.f22200h;
        reentrantLock.lock();
        try {
            Closed<?> m = m1043m();
            if (m != null) {
                return m;
            }
            if (this.f22201i == f22199j) {
                do {
                    L = mo1051L();
                    if (L != null) {
                        if (L instanceof Closed) {
                            Intrinsics.m1832c(L);
                            return L;
                        }
                        Intrinsics.m1832c(L);
                        z = L.mo810z(e, null);
                    }
                } while (z == null);
                if (DebugKt.m1308a()) {
                    if (!(z == CancellableContinuationImplKt.f21113a)) {
                        throw new AssertionError();
                    }
                }
                Unit unit = Unit.f20447a;
                reentrantLock.unlock();
                Intrinsics.m1832c(L);
                L.mo811n(e);
                Intrinsics.m1832c(L);
                return L.mo812d();
            }
            this.f22201i = e;
            return AbstractChannelKt.f21298a;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    @NotNull
    /* renamed from: F */
    public Object mo831F(E e, @NotNull SelectInstance<?> selectInstance) {
        ReentrantLock reentrantLock = this.f22200h;
        reentrantLock.lock();
        try {
            Closed<?> m = m1043m();
            if (m != null) {
                return m;
            }
            if (this.f22201i == f22199j) {
                while (true) {
                    AbstractSendChannel.TryOfferDesc<E> f = m1045f(e);
                    Object v = selectInstance.mo310v(f);
                    if (v == null) {
                        ReceiveOrClosed<? super E> n = f.m504n();
                        Unit unit = Unit.f20447a;
                        reentrantLock.unlock();
                        Intrinsics.m1832c(n);
                        n.mo811n(e);
                        Intrinsics.m1832c(n);
                        return n.mo812d();
                    } else if (v == AbstractChannelKt.f21299b) {
                        break;
                    } else if (v != AtomicKt.f23891b) {
                        if (v != SelectKt.m306d() && !(v instanceof Closed)) {
                            throw new IllegalStateException(("performAtomicTrySelect(describeTryOffer) returned " + v).toString());
                        }
                        return v;
                    }
                }
            }
            if (!selectInstance.mo314e()) {
                return SelectKt.m306d();
            }
            this.f22201i = e;
            return AbstractChannelKt.f21298a;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractChannel
    /* renamed from: T */
    public boolean mo839T(@NotNull Receive<? super E> receive) {
        ReentrantLock reentrantLock = this.f22200h;
        reentrantLock.lock();
        try {
            return super.mo839T(receive);
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    /* renamed from: W */
    protected final boolean mo808W() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractChannel
    /* renamed from: X */
    public final boolean mo807X() {
        return this.f22201i == f22199j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractChannel
    /* renamed from: Z */
    public void mo838Z(boolean z) {
        if (z) {
            ReentrantLock reentrantLock = this.f22200h;
            reentrantLock.lock();
            try {
                this.f22201i = f22199j;
                Unit unit = Unit.f20447a;
            } finally {
                reentrantLock.unlock();
            }
        }
        super.mo838Z(z);
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    @Nullable
    /* renamed from: c0 */
    protected Object mo837c0() {
        ReentrantLock reentrantLock = this.f22200h;
        reentrantLock.lock();
        try {
            if (this.f22201i == f22199j) {
                Object m = m1043m();
                if (m == null) {
                    m = AbstractChannelKt.f21300c;
                }
                return m;
            }
            Object obj = this.f22201i;
            this.f22201i = f22199j;
            Unit unit = Unit.f20447a;
            return obj;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    @Nullable
    /* renamed from: d0 */
    protected Object mo836d0(@NotNull SelectInstance<?> selectInstance) {
        ReentrantLock reentrantLock = this.f22200h;
        reentrantLock.lock();
        try {
            if (this.f22201i == f22199j) {
                Object m = m1043m();
                if (m == null) {
                    m = AbstractChannelKt.f21300c;
                }
                return m;
            } else if (!selectInstance.mo314e()) {
                return SelectKt.m306d();
            } else {
                Object obj = this.f22201i;
                this.f22201i = f22199j;
                Unit unit = Unit.f20447a;
                return obj;
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    @NotNull
    /* renamed from: k */
    protected String mo835k() {
        return "(value=" + this.f22201i + ')';
    }

    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    /* renamed from: z */
    protected final boolean mo806z() {
        return false;
    }
}
