package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.intrinsics.CancellableKt;
import kotlinx.coroutines.intrinsics.UndispatchedKt;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0086\u0001\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0015\u0010\u0016JE\u0010\t\u001a\u00020\b\"\u0004\b��\u0010\u00022\u001c\u0010\u0006\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00032\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\u0004H\u0087\u0002ø\u0001��¢\u0006\u0004\b\t\u0010\nJ^\u0010\t\u001a\u00020\b\"\u0004\b��\u0010\u000b\"\u0004\b\u0001\u0010\u00022'\u0010\u0006\u001a#\b\u0001\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\f¢\u0006\u0002\b\r2\u0006\u0010\u000e\u001a\u00028��2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004H\u0087\u0002ø\u0001��¢\u0006\u0004\b\t\u0010\u000fR\u001c\u0010\u0011\u001a\u00020\u00108F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001a\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, d2 = {"Lkotlinx/coroutines/CoroutineStart;", "Ljava/lang/Enum;", "T", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "block", "completion", "", "invoke", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V", "R", "Lkotlin/Function2;", "Lkotlin/ExtensionFunctionType;", "receiver", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V", "", "isLazy", "()Z", "isLazy$annotations", "()V", "<init>", "(Ljava/lang/String;I)V", "DEFAULT", "LAZY", "ATOMIC", "UNDISPATCHED", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/CoroutineStart.class */
public enum CoroutineStart {
    DEFAULT,
    LAZY,
    ATOMIC,
    UNDISPATCHED;

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/CoroutineStart$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {

        /* renamed from: a */
        public static final /* synthetic */ int[] f21143a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f21144b;

        static {
            int[] iArr = new int[CoroutineStart.values().length];
            f21143a = iArr;
            iArr[CoroutineStart.DEFAULT.ordinal()] = 1;
            f21143a[CoroutineStart.ATOMIC.ordinal()] = 2;
            f21143a[CoroutineStart.UNDISPATCHED.ordinal()] = 3;
            f21143a[CoroutineStart.LAZY.ordinal()] = 4;
            int[] iArr2 = new int[CoroutineStart.values().length];
            f21144b = iArr2;
            iArr2[CoroutineStart.DEFAULT.ordinal()] = 1;
            f21144b[CoroutineStart.ATOMIC.ordinal()] = 2;
            f21144b[CoroutineStart.UNDISPATCHED.ordinal()] = 3;
            f21144b[CoroutineStart.LAZY.ordinal()] = 4;
        }
    }

    @InternalCoroutinesApi
    public static /* synthetic */ void isLazy$annotations() {
    }

    @InternalCoroutinesApi
    public final <T> void invoke(@NotNull Function1<? super Continuation<? super T>, ? extends Object> function1, @NotNull Continuation<? super T> continuation) {
        int i = WhenMappings.f21143a[ordinal()];
        if (i == 1) {
            CancellableKt.m400b(function1, continuation);
        } else if (i == 2) {
            ContinuationKt.m1935a(function1, continuation);
        } else if (i == 3) {
            UndispatchedKt.m398a(function1, continuation);
        } else if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
    }

    @InternalCoroutinesApi
    public final <R, T> void invoke(@NotNull Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2, R r, @NotNull Continuation<? super T> continuation) {
        int i = WhenMappings.f21144b[ordinal()];
        if (i == 1) {
            CancellableKt.m399c(function2, r, continuation);
        } else if (i == 2) {
            ContinuationKt.m1934b(function2, r, continuation);
        } else if (i == 3) {
            UndispatchedKt.m397b(function2, r, continuation);
        } else if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
    }

    public final boolean isLazy() {
        return this == LAZY;
    }
}
