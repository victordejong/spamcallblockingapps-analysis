package kotlinx.coroutines;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\t\bf\u0018��*\u0006\b��\u0010\u0001 ��2\u00020\u00022\u00020\u0003J\u001b\u0010\u0007\u001a\u00020\u00062\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004H&¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH'¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH'¢\u0006\u0004\b\u000e\u0010\u000fJ8\u0010\u0015\u001a\u00020\u000b2'\u0010\u0014\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0004¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u000b0\u0010j\u0002`\u0013H&¢\u0006\u0004\b\u0015\u0010\u0016J:\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00028��2!\u0010\u0018\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u000b0\u0010H'¢\u0006\u0004\b\u0019\u0010\u001aJ%\u0010\u001c\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0017\u001a\u00028��2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\tH'¢\u0006\u0004\b\u001c\u0010\u001dJ\u0019\u0010\u001f\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001e\u001a\u00020\u0004H'¢\u0006\u0004\b\u001f\u0010 J\u001b\u0010\"\u001a\u00020\u000b*\u00020!2\u0006\u0010\u0017\u001a\u00028��H'¢\u0006\u0004\b\"\u0010#J\u001b\u0010$\u001a\u00020\u000b*\u00020!2\u0006\u0010\u001e\u001a\u00020\u0004H'¢\u0006\u0004\b$\u0010%R\u0016\u0010&\u001a\u00020\u00068&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b&\u0010'R\u0016\u0010(\u001a\u00020\u00068&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b(\u0010'R\u0016\u0010)\u001a\u00020\u00068&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b)\u0010'¨\u0006*"}, d2 = {"Lkotlinx/coroutines/CancellableContinuation;", "T", "Lkotlin/coroutines/Continuation;", "Lkotlin/Any;", "", "cause", "", "cancel", "(Ljava/lang/Throwable;)Z", "", "token", "", "completeResume", "(Ljava/lang/Object;)V", "initCancellability", "()V", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "Lkotlinx/coroutines/CompletionHandler;", "handler", "invokeOnCancellation", "(Lkotlin/Function1;)V", FirebaseAnalytics.Param.VALUE, "onCancellation", "resume", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "idempotent", "tryResume", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "exception", "tryResumeWithException", "(Ljava/lang/Throwable;)Ljava/lang/Object;", "Lkotlinx/coroutines/CoroutineDispatcher;", "resumeUndispatched", "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V", "resumeUndispatchedWithException", "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Throwable;)V", "isActive", "()Z", "isCancelled", "isCompleted", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/CancellableContinuation.class */
public interface CancellableContinuation<T> extends Continuation<T> {

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/CancellableContinuation$DefaultImpls.class */
    public static final class DefaultImpls {
        /* renamed from: a */
        public static /* synthetic */ Object m1368a(CancellableContinuation cancellableContinuation, Object obj, Object obj2, int i, Object obj3) {
            if (obj3 == null) {
                if ((i & 2) != 0) {
                    obj2 = null;
                }
                return cancellableContinuation.mo1359c(obj, obj2);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: tryResume");
        }
    }

    @InternalCoroutinesApi
    /* renamed from: D */
    void mo1365D(@NotNull Object obj);

    @InternalCoroutinesApi
    @Nullable
    /* renamed from: c */
    Object mo1359c(T t, @Nullable Object obj);

    /* renamed from: p */
    void mo1351p(@NotNull Function1<? super Throwable, Unit> function1);

    @InternalCoroutinesApi
    @Nullable
    /* renamed from: q */
    Object mo1350q(@NotNull Throwable th);

    @ExperimentalCoroutinesApi
    /* renamed from: s */
    void mo1348s(@NotNull CoroutineDispatcher coroutineDispatcher, T t);

    /* renamed from: y */
    boolean mo1342y();
}
