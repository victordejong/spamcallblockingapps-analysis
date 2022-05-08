package kotlinx.coroutines.test;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.Delay;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.EventLoop;
import kotlinx.coroutines.internal.ThreadSafeHeap;
import kotlinx.coroutines.test.TestCoroutineContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Deprecated
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0006\b\u0007\u0018��2\u00020\u0001:\u0001NB\u0013\u0012\n\b\u0002\u0010C\u001a\u0004\u0018\u00010\f¢\u0006\u0004\bL\u0010MJ\u001f\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u000bJ+\u0010\u0012\u001a\u00020\t2\b\b\u0002\u0010\r\u001a\u00020\f2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e¢\u0006\u0004\b\u0012\u0010\u0013J+\u0010\u0014\u001a\u00020\t2\b\b\u0002\u0010\r\u001a\u00020\f2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e¢\u0006\u0004\b\u0014\u0010\u0013J1\u0010\u0016\u001a\u00020\t2\b\b\u0002\u0010\r\u001a\u00020\f2\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u0015\u0012\u0004\u0012\u00020\u00100\u000e¢\u0006\u0004\b\u0016\u0010\u0013J+\u0010\u0017\u001a\u00020\t2\b\b\u0002\u0010\r\u001a\u00020\f2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e¢\u0006\u0004\b\u0017\u0010\u0013J\r\u0010\u0018\u001a\u00020\t¢\u0006\u0004\b\u0018\u0010\u0019J\u001b\u0010\u001d\u001a\u00020\t2\n\u0010\u001c\u001a\u00060\u001aj\u0002`\u001bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ7\u0010$\u001a\u00028��\"\u0004\b��\u0010\u001f2\u0006\u0010 \u001a\u00028��2\u0018\u0010#\u001a\u0014\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00028��0!H\u0016¢\u0006\u0004\b$\u0010%J*\u0010)\u001a\u0004\u0018\u00018��\"\b\b��\u0010&*\u00020\"2\f\u0010(\u001a\b\u0012\u0004\u0012\u00028��0'H\u0096\u0002¢\u0006\u0004\b)\u0010*J\u001b\u0010+\u001a\u00020\u00012\n\u0010(\u001a\u0006\u0012\u0002\b\u00030'H\u0016¢\u0006\u0004\b+\u0010,J\u0017\u0010-\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b-\u0010.J#\u00100\u001a\u00020/2\n\u0010\u001c\u001a\u00060\u001aj\u0002`\u001b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b0\u00101J\u000f\u00102\u001a\u00020\u0002H\u0002¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020\fH\u0016¢\u0006\u0004\b4\u00105J\r\u00106\u001a\u00020\t¢\u0006\u0004\b6\u0010\u0019J\u0017\u00106\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0002H\u0002¢\u0006\u0004\b6\u00107R\u0016\u00108\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u001a\u0010;\u001a\u00060:R\u00020��8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<R\u0016\u0010>\u001a\u00020=8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010?R\u0019\u0010B\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00158F@\u0006¢\u0006\u0006\u001a\u0004\b@\u0010AR\u0018\u0010C\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010DR\u001c\u0010F\u001a\b\u0012\u0004\u0012\u00020/0E8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bF\u0010GR\u0016\u0010H\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u00109R\u001c\u0010J\u001a\b\u0012\u0004\u0012\u00020\u000f0I8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bJ\u0010K¨\u0006O"}, d2 = {"Lkotlinx/coroutines/test/TestCoroutineContext;", "Lkotlin/coroutines/CoroutineContext;", "", "delayTime", "Ljava/util/concurrent/TimeUnit;", "unit", "advanceTimeBy", "(JLjava/util/concurrent/TimeUnit;)J", "targetTime", "", "advanceTimeTo", "(JLjava/util/concurrent/TimeUnit;)V", "", "message", "Lkotlin/Function1;", "", "", "predicate", "assertAllUnhandledExceptions", "(Ljava/lang/String;Lkotlin/Function1;)V", "assertAnyUnhandledException", "", "assertExceptions", "assertUnhandledException", "cancelAllActions", "()V", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "enqueue", "(Ljava/lang/Runnable;)V", "R", "initial", "Lkotlin/Function2;", "Lkotlin/coroutines/CoroutineContext$Element;", "operation", "fold", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "E", "Lkotlin/coroutines/CoroutineContext$Key;", "key", "get", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "minusKey", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;", "now", "(Ljava/util/concurrent/TimeUnit;)J", "Lkotlinx/coroutines/test/TimedRunnableObsolete;", "postDelayed", "(Ljava/lang/Runnable;J)Lkotlinx/coroutines/test/TimedRunnableObsolete;", "processNextEvent", "()J", "toString", "()Ljava/lang/String;", "triggerActions", "(J)V", "counter", "J", "Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;", "ctxDispatcher", "Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "ctxHandler", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "getExceptions", "()Ljava/util/List;", "exceptions", "name", "Ljava/lang/String;", "Lkotlinx/coroutines/internal/ThreadSafeHeap;", "queue", "Lkotlinx/coroutines/internal/ThreadSafeHeap;", "time", "", "uncaughtExceptions", "Ljava/util/List;", "<init>", "(Ljava/lang/String;)V", "Dispatcher", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/test/TestCoroutineContext.class */
public final class TestCoroutineContext implements CoroutineContext {

    /* renamed from: f */
    private final List<Throwable> f24101f;

    /* renamed from: g */
    private final Dispatcher f24102g;

    /* renamed from: h */
    private final CoroutineExceptionHandler f24103h;

    /* renamed from: i */
    private final ThreadSafeHeap<TimedRunnableObsolete> f24104i;

    /* renamed from: j */
    private long f24105j;

    /* renamed from: k */
    private long f24106k;

    /* renamed from: l */
    private final String f24107l;

    @Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0082\u0004\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ#\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\n\u0010\u0007\u001a\u00060\u0005j\u0002`\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ#\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000b2\n\u0010\u0007\u001a\u00060\u0005j\u0002`\u0006H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J%\u0010\u0014\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\b0\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, d2 = {"Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;", "Lkotlinx/coroutines/Delay;", "Lkotlinx/coroutines/EventLoop;", "Lkotlin/coroutines/CoroutineContext;", "context", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "", "dispatch", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V", "", "timeMillis", "Lkotlinx/coroutines/DisposableHandle;", "invokeOnTimeout", "(JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;", "processNextEvent", "()J", "Lkotlinx/coroutines/CancellableContinuation;", "continuation", "scheduleResumeAfterDelay", "(JLkotlinx/coroutines/CancellableContinuation;)V", "", "shouldBeProcessedFromContext", "()Z", "", "toString", "()Ljava/lang/String;", "<init>", "(Lkotlinx/coroutines/test/TestCoroutineContext;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/test/TestCoroutineContext$Dispatcher.class */
    private final class Dispatcher extends EventLoop implements Delay {
        public Dispatcher() {
            EventLoop.m1262d0(this, false, 1, null);
        }

        @Override // kotlinx.coroutines.Delay
        /* renamed from: h */
        public void mo243h(long j, @NotNull final CancellableContinuation<? super Unit> cancellableContinuation) {
            TestCoroutineContext.this.m244k(new Runnable() { // from class: kotlinx.coroutines.test.TestCoroutineContext$Dispatcher$scheduleResumeAfterDelay$$inlined$Runnable$1
                @Override // java.lang.Runnable
                public final void run() {
                    cancellableContinuation.mo1348s(TestCoroutineContext.Dispatcher.this, Unit.f20447a);
                }
            }, j);
        }

        @Override // kotlinx.coroutines.Delay
        @NotNull
        /* renamed from: q */
        public DisposableHandle mo242q(long j, @NotNull Runnable runnable) {
            final TimedRunnableObsolete k = TestCoroutineContext.this.m244k(runnable, j);
            return new DisposableHandle() { // from class: kotlinx.coroutines.test.TestCoroutineContext$Dispatcher$invokeOnTimeout$1
                @Override // kotlinx.coroutines.DisposableHandle
                public void dispose() {
                    ThreadSafeHeap threadSafeHeap;
                    threadSafeHeap = TestCoroutineContext.this.f24104i;
                    threadSafeHeap.m412h(k);
                }
            };
        }

        @Override // kotlinx.coroutines.CoroutineDispatcher
        /* renamed from: t */
        public void mo241t(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
            TestCoroutineContext.this.m245j(runnable);
        }

        @Override // kotlinx.coroutines.CoroutineDispatcher
        @NotNull
        public String toString() {
            return "Dispatcher(" + TestCoroutineContext.this + ')';
        }
    }

    public TestCoroutineContext() {
        this(null, 1, null);
    }

    public TestCoroutineContext(@Nullable String str) {
        this.f24107l = str;
        this.f24101f = new ArrayList();
        this.f24102g = new Dispatcher();
        this.f24103h = new C2439x96bc1e17(CoroutineExceptionHandler.f21135c, this);
        this.f24104i = new ThreadSafeHeap<>();
    }

    public /* synthetic */ TestCoroutineContext(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public final void m245j(Runnable runnable) {
        ThreadSafeHeap<TimedRunnableObsolete> threadSafeHeap = this.f24104i;
        long j = this.f24105j;
        this.f24105j = 1 + j;
        threadSafeHeap.m418b(new TimedRunnableObsolete(runnable, j, 0L, 4, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public final TimedRunnableObsolete m244k(Runnable runnable, long j) {
        long j2 = this.f24105j;
        this.f24105j = 1 + j2;
        TimedRunnableObsolete timedRunnableObsolete = new TimedRunnableObsolete(runnable, j2, this.f24106k + TimeUnit.MILLISECONDS.toNanos(j));
        this.f24104i.m418b(timedRunnableObsolete);
        return timedRunnableObsolete;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public <R> R fold(R r, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) function2.mo422o((Object) function2.mo422o(r, this.f24102g), this.f24103h);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.Key<E> key) {
        E e;
        if (key == ContinuationInterceptor.f20640b) {
            e = this.f24102g;
            if (e == null) {
                throw new NullPointerException("null cannot be cast to non-null type E");
            }
        } else if (key == CoroutineExceptionHandler.f21135c) {
            e = this.f24103h;
            if (e == null) {
                throw new NullPointerException("null cannot be cast to non-null type E");
            }
        } else {
            e = null;
        }
        return e;
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.Key<?> key) {
        return key == ContinuationInterceptor.f20640b ? this.f24103h : key == CoroutineExceptionHandler.f21135c ? this.f24102g : this;
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        return CoroutineContext.DefaultImpls.m1932a(this, coroutineContext);
    }

    @NotNull
    public String toString() {
        String str = this.f24107l;
        if (str == null) {
            str = "TestCoroutineContext@" + DebugStringsKt.m1303b(this);
        }
        return str;
    }
}
