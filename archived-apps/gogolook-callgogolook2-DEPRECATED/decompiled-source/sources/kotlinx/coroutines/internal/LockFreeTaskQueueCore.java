package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlinx.coroutines.DebugKt;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\b\u0016\b��\u0018�� /*\b\b��\u0010\u0002*\u00020\u00012\u00020\u0001:\u0002/0B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00028��¢\u0006\u0004\b\n\u0010\u000bJ'\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00028��0��j\b\u0012\u0004\u0012\u00028��`\u000e2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J'\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00028��0��j\b\u0012\u0004\u0012\u00028��`\u000e2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0011\u0010\u0010J\r\u0010\u0012\u001a\u00020\u0005¢\u0006\u0004\b\u0012\u0010\u0013J3\u0010\u0015\u001a\u0016\u0012\u0004\u0012\u00028��\u0018\u00010��j\n\u0012\u0004\u0012\u00028��\u0018\u0001`\u000e2\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\t\u001a\u00028��H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u0005¢\u0006\u0004\b\u0017\u0010\u0013J-\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00010\u001b\"\u0004\b\u0001\u0010\u00182\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0019¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\fH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0013\u0010 \u001a\b\u0012\u0004\u0012\u00028��0��¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\"\u0010#J3\u0010&\u001a\u0016\u0012\u0004\u0012\u00028��\u0018\u00010��j\n\u0012\u0004\u0012\u00028��\u0018\u0001`\u000e2\u0006\u0010$\u001a\u00020\u00032\u0006\u0010%\u001a\u00020\u0003H\u0002¢\u0006\u0004\b&\u0010'R\u0016\u0010\u0004\u001a\u00020\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010(R\u0013\u0010)\u001a\u00020\u00058F@\u0006¢\u0006\u0006\u001a\u0004\b)\u0010\u0013R\u0016\u0010*\u001a\u00020\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010(R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010+R\u0013\u0010.\u001a\u00020\u00038F@\u0006¢\u0006\u0006\u001a\u0004\b,\u0010-¨\u00061"}, m815d2 = {"Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "", ExifInterface.LONGITUDE_EAST, "", "capacity", "", "singleConsumer", "<init>", "(IZ)V", "element", "addLast", "(Ljava/lang/Object;)I", "", IapProductRealmObject.STATE, "Lkotlinx/coroutines/internal/Core;", "allocateNextCopy", "(J)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "allocateOrGetNextCopy", MraidParser.MRAID_COMMAND_CLOSE, "()Z", "index", "fillPlaceholder", "(ILjava/lang/Object;)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "isClosed", "R", "Lkotlin/Function1;", "transform", "", "map", "(Lkotlin/jvm/functions/Function1;)Ljava/util/List;", "markFrozen", "()J", "next", "()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "removeFirstOrNull", "()Ljava/lang/Object;", "oldHead", "newHead", "removeSlowPath", "(II)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "I", "isEmpty", "mask", "Z", "getSize", "()I", "size", "Companion", "Placeholder", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/internal/LockFreeTaskQueueCore.class */
public final class LockFreeTaskQueueCore<E> {
    public static final int ADD_CLOSED = 2;
    public static final int ADD_FROZEN = 1;
    public static final int ADD_SUCCESS = 0;
    public static final int CAPACITY_BITS = 30;
    public static final long CLOSED_MASK = 2305843009213693952L;
    public static final int CLOSED_SHIFT = 61;
    public static final long FROZEN_MASK = 1152921504606846976L;
    public static final int FROZEN_SHIFT = 60;
    public static final long HEAD_MASK = 1073741823;
    public static final int HEAD_SHIFT = 0;
    public static final int INITIAL_CAPACITY = 8;
    public static final int MAX_CAPACITY_MASK = 1073741823;
    public static final int MIN_ADD_SPIN_CAPACITY = 1024;
    public static final long TAIL_MASK = 1152921503533105152L;
    public static final int TAIL_SHIFT = 30;
    public volatile Object _next = null;
    public volatile long _state = 0;
    public AtomicReferenceArray array;
    public final int capacity;
    public final int mask;
    public final boolean singleConsumer;
    public static final Companion Companion = new Companion(null);
    public static final Symbol REMOVE_FROZEN = new Symbol("REMOVE_FROZEN");
    public static final AtomicReferenceFieldUpdater _next$FU = AtomicReferenceFieldUpdater.newUpdater(LockFreeTaskQueueCore.class, Object.class, "_next");
    public static final AtomicLongFieldUpdater _state$FU = AtomicLongFieldUpdater.newUpdater(LockFreeTaskQueueCore.class, "_state");

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0080\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0016\u001a\u00020\u0004*\u00020\tJ\u0012\u0010\u0017\u001a\u00020\t*\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0004J\u0012\u0010\u0019\u001a\u00020\t*\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0004JP\u0010\u001b\u001a\u0002H\u001c\"\u0004\b\u0001\u0010\u001c*\u00020\t26\u0010\u001d\u001a2\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(!\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(\"\u0012\u0004\u0012\u0002H\u001c0\u001eH\u0086\b¢\u0006\u0002\u0010#J\u0015\u0010$\u001a\u00020\t*\u00020\t2\u0006\u0010%\u001a\u00020\tH\u0086\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\tX\u0086T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\tX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u0010\u0010\u0012\u001a\u00020\u00138\u0006X\u0087\u0004¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\tX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006&"}, m815d2 = {"Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;", "", "()V", "ADD_CLOSED", "", "ADD_FROZEN", "ADD_SUCCESS", "CAPACITY_BITS", "CLOSED_MASK", "", "CLOSED_SHIFT", "FROZEN_MASK", "FROZEN_SHIFT", "HEAD_MASK", "HEAD_SHIFT", "INITIAL_CAPACITY", "MAX_CAPACITY_MASK", "MIN_ADD_SPIN_CAPACITY", "REMOVE_FROZEN", "Lkotlinx/coroutines/internal/Symbol;", "TAIL_MASK", "TAIL_SHIFT", "addFailReason", "updateHead", "newHead", "updateTail", "newTail", "withState", ExifInterface.GPS_DIRECTION_TRUE, "block", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", TtmlNode.TAG_HEAD, "tail", "(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "wo", "other", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }

        public final int addFailReason(long j) {
            return (j & LockFreeTaskQueueCore.CLOSED_MASK) != 0 ? 2 : 1;
        }

        public final long updateHead(long j, int i) {
            return m809wo(j, LockFreeTaskQueueCore.HEAD_MASK) | (i << 0);
        }

        public final long updateTail(long j, int i) {
            return m809wo(j, LockFreeTaskQueueCore.TAIL_MASK) | (i << 30);
        }

        public final <T> T withState(long j, AbstractC15122p<? super Integer, ? super Integer, ? extends T> pVar) {
            return (T) pVar.invoke(Integer.valueOf((int) ((LockFreeTaskQueueCore.HEAD_MASK & j) >> 0)), Integer.valueOf((int) ((j & LockFreeTaskQueueCore.TAIL_MASK) >> 30)));
        }

        /* renamed from: wo */
        public final long m809wo(long j, long j2) {
            return j & (j2 ^ (-1));
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0002\b��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\u0005"}, m815d2 = {"Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;", "", "index", "", "(I)V", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder.class */
    public static final class Placeholder {
        public final int index;

        public Placeholder(int i) {
            this.index = i;
        }
    }

    public LockFreeTaskQueueCore(int i, boolean z) {
        this.capacity = i;
        this.singleConsumer = z;
        int i2 = this.capacity;
        this.mask = i2 - 1;
        this.array = new AtomicReferenceArray(i2);
        boolean z2 = false;
        if (this.mask <= 1073741823) {
            if (!((this.capacity & this.mask) == 0 ? true : z2)) {
                throw new IllegalStateException("Check failed.".toString());
            }
            return;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final LockFreeTaskQueueCore<E> allocateNextCopy(long j) {
        LockFreeTaskQueueCore<E> lockFreeTaskQueueCore = new LockFreeTaskQueueCore<>(this.capacity * 2, this.singleConsumer);
        int i = (int) ((HEAD_MASK & j) >> 0);
        int i2 = (int) ((TAIL_MASK & j) >> 30);
        while (true) {
            int i3 = this.mask;
            if ((i & i3) != (i2 & i3)) {
                Object obj = this.array.get(i3 & i);
                if (obj == null) {
                    obj = new Placeholder(i);
                }
                lockFreeTaskQueueCore.array.set(lockFreeTaskQueueCore.mask & i, obj);
                i++;
            } else {
                lockFreeTaskQueueCore._state = Companion.m809wo(j, FROZEN_MASK);
                return lockFreeTaskQueueCore;
            }
        }
    }

    private final LockFreeTaskQueueCore<E> allocateOrGetNextCopy(long j) {
        while (true) {
            LockFreeTaskQueueCore<E> lockFreeTaskQueueCore = (LockFreeTaskQueueCore) this._next;
            if (lockFreeTaskQueueCore != null) {
                return lockFreeTaskQueueCore;
            }
            _next$FU.compareAndSet(this, null, allocateNextCopy(j));
        }
    }

    private final LockFreeTaskQueueCore<E> fillPlaceholder(int i, E e) {
        Object obj = this.array.get(this.mask & i);
        if (!(obj instanceof Placeholder) || ((Placeholder) obj).index != i) {
            return null;
        }
        this.array.set(i & this.mask, e);
        return this;
    }

    private final long markFrozen() {
        long j;
        long j2;
        do {
            j = this._state;
            if ((j & FROZEN_MASK) != 0) {
                return j;
            }
            j2 = j | FROZEN_MASK;
        } while (!_state$FU.compareAndSet(this, j, j2));
        return j2;
    }

    private final LockFreeTaskQueueCore<E> removeSlowPath(int i, int i2) {
        long j;
        int i3;
        do {
            j = this._state;
            boolean z = false;
            i3 = (int) ((HEAD_MASK & j) >> 0);
            if (DebugKt.getASSERTIONS_ENABLED()) {
                if (i3 == i) {
                    z = true;
                }
                if (!z) {
                    throw new AssertionError();
                }
            }
            if ((FROZEN_MASK & j) != 0) {
                return next();
            }
        } while (!_state$FU.compareAndSet(this, j, Companion.updateHead(j, i2)));
        this.array.set(this.mask & i3, null);
        return null;
    }

    public final int addLast(E e) {
        while (true) {
            long j = this._state;
            if ((3458764513820540928L & j) != 0) {
                return Companion.addFailReason(j);
            }
            int i = (int) ((HEAD_MASK & j) >> 0);
            int i2 = (int) ((TAIL_MASK & j) >> 30);
            int i3 = this.mask;
            if (((i2 + 2) & i3) == (i & i3)) {
                return 1;
            }
            if (!this.singleConsumer && this.array.get(i2 & i3) != null) {
                int i4 = this.capacity;
                if (i4 < 1024 || ((i2 - i) & MAX_CAPACITY_MASK) > (i4 >> 1)) {
                    return 1;
                }
            } else if (_state$FU.compareAndSet(this, j, Companion.updateTail(j, (i2 + 1) & MAX_CAPACITY_MASK))) {
                this.array.set(i2 & i3, e);
                LockFreeTaskQueueCore<E> lockFreeTaskQueueCore = this;
                while ((lockFreeTaskQueueCore._state & FROZEN_MASK) != 0) {
                    lockFreeTaskQueueCore = lockFreeTaskQueueCore.next().fillPlaceholder(i2, e);
                    if (lockFreeTaskQueueCore == null) {
                        return 0;
                    }
                }
                return 0;
            }
        }
    }

    public final boolean close() {
        long j;
        do {
            j = this._state;
            if ((j & CLOSED_MASK) != 0) {
                return true;
            }
            if ((FROZEN_MASK & j) != 0) {
                return false;
            }
        } while (!_state$FU.compareAndSet(this, j, j | CLOSED_MASK));
        return true;
    }

    public final int getSize() {
        long j = this._state;
        return 1073741823 & (((int) ((j & TAIL_MASK) >> 30)) - ((int) ((HEAD_MASK & j) >> 0)));
    }

    public final boolean isClosed() {
        return (this._state & CLOSED_MASK) != 0;
    }

    public final boolean isEmpty() {
        long j = this._state;
        boolean z = false;
        if (((int) ((HEAD_MASK & j) >> 0)) == ((int) ((j & TAIL_MASK) >> 30))) {
            z = true;
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <R> List<R> map(AbstractC15118l<? super E, ? extends R> lVar) {
        ArrayList arrayList = new ArrayList(this.capacity);
        long j = this._state;
        int i = (int) ((HEAD_MASK & j) >> 0);
        int i2 = (int) ((j & TAIL_MASK) >> 30);
        while (true) {
            int i3 = this.mask;
            if ((i & i3) == (i2 & i3)) {
                return arrayList;
            }
            Object obj = (Object) this.array.get(i3 & i);
            if (obj != 0 && !(obj instanceof Placeholder)) {
                arrayList.add(lVar.invoke(obj));
            }
            i++;
        }
    }

    public final LockFreeTaskQueueCore<E> next() {
        return allocateOrGetNextCopy(markFrozen());
    }

    public final Object removeFirstOrNull() {
        while (true) {
            long j = this._state;
            if ((FROZEN_MASK & j) != 0) {
                return REMOVE_FROZEN;
            }
            int i = (int) ((HEAD_MASK & j) >> 0);
            int i2 = (int) ((TAIL_MASK & j) >> 30);
            int i3 = this.mask;
            if ((i2 & i3) == (i & i3)) {
                return null;
            }
            Object obj = this.array.get(i3 & i);
            if (obj == null) {
                if (this.singleConsumer) {
                    return null;
                }
            } else if (obj instanceof Placeholder) {
                return null;
            } else {
                int i4 = (i + 1) & MAX_CAPACITY_MASK;
                if (_state$FU.compareAndSet(this, j, Companion.updateHead(j, i4))) {
                    this.array.set(this.mask & i, null);
                    return obj;
                } else if (this.singleConsumer) {
                    LockFreeTaskQueueCore<E> lockFreeTaskQueueCore = this;
                    do {
                        lockFreeTaskQueueCore = lockFreeTaskQueueCore.removeSlowPath(i, i4);
                    } while (lockFreeTaskQueueCore != null);
                    return obj;
                }
            }
        }
    }
}
