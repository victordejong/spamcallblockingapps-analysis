package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.intrinsics.UndispatchedKt;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020��2\u0006\u0010\u0003\u001a\u00020\u0002H��¢\u0006\u0004\b\u0005\u0010\u0006\u001aa\u0010\u0010\u001a\u0004\u0018\u00010\r\"\u0004\b��\u0010\u0007\"\b\b\u0001\u0010\b*\u00028��2\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\t2'\u0010\u000f\u001a#\b\u0001\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\f\u0012\u0006\u0012\u0004\u0018\u00010\r0\n¢\u0006\u0002\b\u000eH\u0002ø\u0001��¢\u0006\u0004\b\u0010\u0010\u0011\u001aW\u0010\u0013\u001a\u00028��\"\u0004\b��\u0010\b2\u0006\u0010\u0012\u001a\u00020��2'\u0010\u000f\u001a#\b\u0001\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\f\u0012\u0006\u0012\u0004\u0018\u00010\r0\n¢\u0006\u0002\b\u000eH\u0086@ø\u0001��\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0004\b\u0013\u0010\u0014\u001aZ\u0010\u0013\u001a\u00028��\"\u0004\b��\u0010\b2\u0006\u0010\u0016\u001a\u00020\u00152'\u0010\u000f\u001a#\b\u0001\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\f\u0012\u0006\u0012\u0004\u0018\u00010\r0\n¢\u0006\u0002\b\u000eH\u0087@ø\u0001��ø\u0001��\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0004\b\u0017\u0010\u0018\u001aL\u0010\u0019\u001a\u0004\u0018\u00018��\"\u0004\b��\u0010\b2\u0006\u0010\u0012\u001a\u00020��2'\u0010\u000f\u001a#\b\u0001\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\f\u0012\u0006\u0012\u0004\u0018\u00010\r0\n¢\u0006\u0002\b\u000eH\u0086@ø\u0001��¢\u0006\u0004\b\u0019\u0010\u0014\u001aO\u0010\u0019\u001a\u0004\u0018\u00018��\"\u0004\b��\u0010\b2\u0006\u0010\u0016\u001a\u00020\u00152'\u0010\u000f\u001a#\b\u0001\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\f\u0012\u0006\u0012\u0004\u0018\u00010\r0\n¢\u0006\u0002\b\u000eH\u0087@ø\u0001��ø\u0001��¢\u0006\u0004\b\u001a\u0010\u0018\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, d2 = {"", "time", "Lkotlinx/coroutines/Job;", "coroutine", "Lkotlinx/coroutines/TimeoutCancellationException;", "TimeoutCancellationException", "(JLkotlinx/coroutines/Job;)Lkotlinx/coroutines/TimeoutCancellationException;", "U", "T", "Lkotlinx/coroutines/TimeoutCoroutine;", "Lkotlin/Function2;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "block", "setupTimeout", "(Lkotlinx/coroutines/TimeoutCoroutine;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "timeMillis", "withTimeout", "(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/time/Duration;", "timeout", "withTimeout-lwyi7ZQ", "(DLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "withTimeoutOrNull", "withTimeoutOrNull-lwyi7ZQ", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/TimeoutKt.class */
public final class TimeoutKt {
    @NotNull
    /* renamed from: a */
    public static final TimeoutCancellationException m1089a(long j, @NotNull Job job) {
        return new TimeoutCancellationException("Timed out waiting for " + j + " ms", job);
    }

    /* renamed from: b */
    private static final <U, T extends U> Object m1088b(TimeoutCoroutine<U, ? super T> timeoutCoroutine, Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2) {
        JobKt.m1213f(timeoutCoroutine, DelayKt.m1292b(timeoutCoroutine.f23944i.getContext()).mo242q(timeoutCoroutine.f21256j, timeoutCoroutine));
        return UndispatchedKt.m393f(timeoutCoroutine, timeoutCoroutine, function2);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00fc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00fe  */
    /* JADX WARN: Type inference failed for: r0v25, types: [kotlinx.coroutines.TimeoutCoroutine, T] */
    /* JADX WARN: Unknown variable types count: 1 */
    @org.jetbrains.annotations.Nullable
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object m1087c(long r5, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super kotlinx.coroutines.CoroutineScope, ? super kotlin.coroutines.Continuation<? super T>, ? extends java.lang.Object> r7, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super T> r8) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.TimeoutKt.m1087c(long, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
