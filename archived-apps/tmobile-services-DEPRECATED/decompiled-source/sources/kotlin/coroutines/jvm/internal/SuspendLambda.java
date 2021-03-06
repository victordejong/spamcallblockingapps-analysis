package kotlin.coroutines.jvm.internal;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.FunctionBase;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\b!\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0011\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\rB!\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0010\u0010\u0010\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\u000e¢\u0006\u0004\b\f\u0010\u0011J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006R\u001c\u0010\b\u001a\u00020\u00078\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u0012"}, d2 = {"Lkotlin/coroutines/jvm/internal/SuspendLambda;", "Lkotlin/jvm/internal/FunctionBase;", "Lkotlin/coroutines/jvm/internal/SuspendFunction;", "Lkotlin/coroutines/jvm/internal/ContinuationImpl;", "", "toString", "()Ljava/lang/String;", "", "arity", "I", "getArity", "()I", "<init>", "(I)V", "Lkotlin/coroutines/Continuation;", "", "completion", "(ILkotlin/coroutines/Continuation;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/jvm/internal/SuspendLambda.class */
public abstract class SuspendLambda extends ContinuationImpl implements FunctionBase<Object>, SuspendFunction {

    /* renamed from: f */
    private final int f20670f;

    public SuspendLambda(int i, @Nullable Continuation<Object> continuation) {
        super(continuation);
        this.f20670f = i;
    }

    @Override // kotlin.jvm.internal.FunctionBase
    public int getArity() {
        return this.f20670f;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public String toString() {
        String str;
        if (getCompletion() == null) {
            str = Reflection.m1800k(this);
            Intrinsics.m1831d(str, "Reflection.renderLambdaToString(this)");
        } else {
            str = super.toString();
        }
        return str;
    }
}
