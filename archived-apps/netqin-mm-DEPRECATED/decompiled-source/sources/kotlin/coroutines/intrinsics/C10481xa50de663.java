package kotlin.coroutines.intrinsics;

import kotlin.TypeCastException;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import p573f.C9927e;
import p573f.p579t.AbstractC9993a;
import p573f.p590w.p591b.AbstractC10035p;
import p573f.p590w.p592c.C10064v;
/* renamed from: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4 */
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4.class */
public final class C10481xa50de663 extends ContinuationImpl {
    public final /* synthetic */ AbstractC9993a $completion;
    public final /* synthetic */ CoroutineContext $context;
    public final /* synthetic */ Object $receiver$inlined;
    public final /* synthetic */ AbstractC10035p $this_createCoroutineUnintercepted$inlined;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10481xa50de663(AbstractC9993a aVar, CoroutineContext coroutineContext, AbstractC9993a aVar2, CoroutineContext coroutineContext2, AbstractC10035p pVar, Object obj) {
        super(aVar2, coroutineContext2);
        this.$completion = aVar;
        this.$context = coroutineContext;
        this.$this_createCoroutineUnintercepted$inlined = pVar;
        this.$receiver$inlined = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public Object invokeSuspend(Object obj) {
        int i = this.label;
        if (i == 0) {
            this.label = 1;
            C9927e.m1779a(obj);
            AbstractC10035p pVar = this.$this_createCoroutineUnintercepted$inlined;
            if (pVar != null) {
                C10064v.m1606a(pVar, 2);
                obj = pVar.invoke(this.$receiver$inlined, this);
            } else {
                throw new TypeCastException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
            }
        } else if (i == 1) {
            this.label = 2;
            C9927e.m1779a(obj);
        } else {
            throw new IllegalStateException("This coroutine had already completed".toString());
        }
        return obj;
    }
}
