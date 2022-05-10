package kotlin.coroutines.intrinsics;

import kotlin.TypeCastException;
import kotlin.coroutines.jvm.internal.RestrictedContinuationImpl;
import p573f.C9927e;
import p573f.p579t.AbstractC9993a;
import p573f.p590w.p591b.AbstractC10031l;
import p573f.p590w.p592c.C10064v;
/* renamed from: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$1 */
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$1.class */
public final class C10478xa50de660 extends RestrictedContinuationImpl {
    public final /* synthetic */ AbstractC9993a $completion;
    public final /* synthetic */ AbstractC10031l $this_createCoroutineUnintercepted$inlined;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10478xa50de660(AbstractC9993a aVar, AbstractC9993a aVar2, AbstractC10031l lVar) {
        super(aVar2);
        this.$completion = aVar;
        this.$this_createCoroutineUnintercepted$inlined = lVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public Object invokeSuspend(Object obj) {
        int i = this.label;
        if (i == 0) {
            this.label = 1;
            C9927e.m1779a(obj);
            AbstractC10031l lVar = this.$this_createCoroutineUnintercepted$inlined;
            if (lVar != null) {
                C10064v.m1606a(lVar, 1);
                obj = lVar.invoke(this);
            } else {
                throw new TypeCastException("null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
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
