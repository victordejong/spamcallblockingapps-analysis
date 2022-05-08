package io.reactivex.rxkotlin;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 1}, m255d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m254d2 = {"<anonymous>", "", "it", "", "invoke"}, m253k = 3, m252mv = {1, 1, 6})
/* loaded from: classes2-dex2jar.jar:io/reactivex/rxkotlin/SubscribersKt$onErrorStub$1.class */
final class SubscribersKt$onErrorStub$1 extends Lambda implements Function1<Throwable, Unit> {
    public static final SubscribersKt$onErrorStub$1 INSTANCE = new SubscribersKt$onErrorStub$1();

    SubscribersKt$onErrorStub$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull Throwable it) {
        Intrinsics.checkParameterIsNotNull(it, "it");
        throw new OnErrorNotImplementedException(it);
    }
}
