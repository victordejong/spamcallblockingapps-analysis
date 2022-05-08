package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018��2\u00020\u0001B0\u0012'\u0010\u000e\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0003\u0012\u0004\u0012\u00020\u00040\nj\u0002`\r¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tR7\u0010\u000e\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0003\u0012\u0004\u0012\u00020\u00040\nj\u0002`\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/InvokeOnCancel;", "Lkotlinx/coroutines/CancelHandler;", "", "cause", "", "invoke", "(Ljava/lang/Throwable;)V", "", "toString", "()Ljava/lang/String;", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "Lkotlinx/coroutines/CompletionHandler;", "handler", "Lkotlin/Function1;", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/InvokeOnCancel.class */
final class InvokeOnCancel extends CancelHandler {

    /* renamed from: f */
    private final Function1<Throwable, Unit> f21194f;

    /* JADX WARN: Multi-variable type inference failed */
    public InvokeOnCancel(@NotNull Function1<? super Throwable, Unit> function1) {
        this.f21194f = function1;
    }

    @Override // kotlinx.coroutines.CancelHandlerBase
    /* renamed from: b */
    public void mo295b(@Nullable Throwable th) {
        this.f21194f.invoke(th);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        mo295b(th);
        return Unit.f20447a;
    }

    @NotNull
    public String toString() {
        return "InvokeOnCancel[" + DebugStringsKt.m1304a(this.f21194f) + '@' + DebugStringsKt.m1303b(this) + ']';
    }
}
