package kotlinx.coroutines.intrinsics;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.DispatchedContinuationKt;
import kotlinx.coroutines.InternalCoroutinesApi;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a*\u0010\u0005\u001a\u00020\u00032\n\u0010\u0001\u001a\u0006\u0012\u0002\b\u00030��2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0082\b¢\u0006\u0004\b\u0005\u0010\u0006\u001a%\u0010\b\u001a\u00020\u0003*\b\u0012\u0004\u0012\u00020\u00030��2\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030��H��¢\u0006\u0004\b\b\u0010\t\u001a@\u0010\b\u001a\u00020\u0003\"\u0004\b��\u0010\n*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0��\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000b2\f\u0010\u0001\u001a\b\u0012\u0004\u0012\u00028��0��H\u0007ø\u0001��¢\u0006\u0004\b\b\u0010\r\u001aT\u0010\b\u001a\u00020\u0003\"\u0004\b��\u0010\u000e\"\u0004\b\u0001\u0010\n*\u001e\b\u0001\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010��\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000f2\u0006\u0010\u0010\u001a\u00028��2\f\u0010\u0001\u001a\b\u0012\u0004\u0012\u00028\u00010��H��ø\u0001��¢\u0006\u0004\b\b\u0010\u0011\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Lkotlin/coroutines/Continuation;", "completion", "Lkotlin/Function0;", "", "block", "runSafely", "(Lkotlin/coroutines/Continuation;Lkotlin/Function0;)V", "fatalCompletion", "startCoroutineCancellable", "(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V", "T", "Lkotlin/Function1;", "", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V", "R", "Lkotlin/Function2;", "receiver", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/intrinsics/CancellableKt.class */
public final class CancellableKt {
    /* renamed from: a */
    public static final void m401a(@NotNull Continuation<? super Unit> continuation, @NotNull Continuation<?> continuation2) {
        Continuation c;
        try {
            c = IntrinsicsKt__IntrinsicsJvmKt.m1921c(continuation);
            Result.Companion companion = Result.f20418g;
            Unit unit = Unit.f20447a;
            Result.m2481b(unit);
            DispatchedContinuationKt.m1284b(c, unit);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.f20418g;
            Object a = ResultKt.m2473a(th);
            Result.m2481b(a);
            continuation2.resumeWith(a);
        }
    }

    @InternalCoroutinesApi
    /* renamed from: b */
    public static final <T> void m400b(@NotNull Function1<? super Continuation<? super T>, ? extends Object> function1, @NotNull Continuation<? super T> continuation) {
        Continuation<Unit> a;
        Continuation c;
        try {
            a = IntrinsicsKt__IntrinsicsJvmKt.m1923a(function1, continuation);
            c = IntrinsicsKt__IntrinsicsJvmKt.m1921c(a);
            Result.Companion companion = Result.f20418g;
            Unit unit = Unit.f20447a;
            Result.m2481b(unit);
            DispatchedContinuationKt.m1284b(c, unit);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.f20418g;
            Object a2 = ResultKt.m2473a(th);
            Result.m2481b(a2);
            continuation.resumeWith(a2);
        }
    }

    /* renamed from: c */
    public static final <R, T> void m399c(@NotNull Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2, R r, @NotNull Continuation<? super T> continuation) {
        Continuation<Unit> b;
        Continuation c;
        try {
            b = IntrinsicsKt__IntrinsicsJvmKt.m1922b(function2, r, continuation);
            c = IntrinsicsKt__IntrinsicsJvmKt.m1921c(b);
            Result.Companion companion = Result.f20418g;
            Unit unit = Unit.f20447a;
            Result.m2481b(unit);
            DispatchedContinuationKt.m1284b(c, unit);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.f20418g;
            Object a = ResultKt.m2473a(th);
            Result.m2481b(a);
            continuation.resumeWith(a);
        }
    }
}
