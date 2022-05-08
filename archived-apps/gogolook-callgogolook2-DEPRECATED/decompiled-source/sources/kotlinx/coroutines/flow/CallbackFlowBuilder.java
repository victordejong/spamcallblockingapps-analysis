package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p634w.C15055h;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��:\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\b\u0002\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002BK\u0012-\u0010\u0003\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0004¢\u0006\u0002\b\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\rø\u0001��¢\u0006\u0002\u0010\u000eJ\u001f\u0010\u0010\u001a\u00020\u00072\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028��0\u0005H\u0094@ø\u0001��¢\u0006\u0002\u0010\u0012J\u001e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028��0\u00142\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0014R:\u0010\u0003\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0004¢\u0006\u0002\b\tX\u0082\u0004ø\u0001��¢\u0006\u0004\n\u0002\u0010\u000f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0015"}, m815d2 = {"Lkotlinx/coroutines/flow/CallbackFlowBuilder;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/ChannelFlowBuilder;", "block", "Lkotlin/Function2;", "Lkotlinx/coroutines/channels/ProducerScope;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "context", "Lkotlin/coroutines/CoroutineContext;", "capacity", "", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/CoroutineContext;I)V", "Lkotlin/jvm/functions/Function2;", "collectTo", "scope", "(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "create", "Lkotlinx/coroutines/flow/internal/ChannelFlow;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/CallbackFlowBuilder.class */
public final class CallbackFlowBuilder<T> extends ChannelFlowBuilder<T> {
    public final AbstractC15122p<ProducerScope<? super T>, AbstractC15044d<? super C14989s>, Object> block;

    /* JADX WARN: Multi-variable type inference failed */
    public CallbackFlowBuilder(AbstractC15122p<? super ProducerScope<? super T>, ? super AbstractC15044d<? super C14989s>, ? extends Object> pVar, AbstractC15049g gVar, int i) {
        super(pVar, gVar, i);
        this.block = pVar;
    }

    public /* synthetic */ CallbackFlowBuilder(AbstractC15122p pVar, AbstractC15049g gVar, int i, int i2, C15145g gVar2) {
        this(pVar, (i2 & 2) != 0 ? C15055h.f33080a : gVar, (i2 & 4) != 0 ? -2 : i);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a1  */
    @Override // kotlinx.coroutines.flow.ChannelFlowBuilder, kotlinx.coroutines.flow.internal.ChannelFlow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object collectTo(kotlinx.coroutines.channels.ProducerScope<? super T> r6, p626l.p634w.AbstractC15044d<? super p626l.C14989s> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1
            if (r0 == 0) goto L_0x0028
            r0 = r7
            kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1 r0 = (kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1) r0
            r8 = r0
            r0 = r8
            int r0 = r0.label
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0028
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.label = r1
            r0 = r8
            r7 = r0
            goto L_0x0032
        L_0x0028:
            kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1 r0 = new kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r2, r3)
            r7 = r0
        L_0x0032:
            r0 = r7
            java.lang.Object r0 = r0.result
            r10 = r0
            java.lang.Object r0 = p626l.p634w.p635j.C15064c.m478a()
            r11 = r0
            r0 = r7
            int r0 = r0.label
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0070
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L_0x0066
            r0 = r7
            java.lang.Object r0 = r0.L$1
            kotlinx.coroutines.channels.ProducerScope r0 = (kotlinx.coroutines.channels.ProducerScope) r0
            r8 = r0
            r0 = r7
            java.lang.Object r0 = r0.L$0
            kotlinx.coroutines.flow.CallbackFlowBuilder r0 = (kotlinx.coroutines.flow.CallbackFlowBuilder) r0
            r6 = r0
            r0 = r10
            p626l.C14982l.m653a(r0)
            goto L_0x0094
        L_0x0066:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x0070:
            r0 = r10
            p626l.C14982l.m653a(r0)
            r0 = r7
            r1 = r5
            r0.L$0 = r1
            r0 = r7
            r1 = r6
            r0.L$1 = r1
            r0 = r7
            r1 = 1
            r0.label = r1
            r0 = r6
            r8 = r0
            r0 = r5
            r1 = r6
            r2 = r7
            java.lang.Object r0 = super.collectTo(r1, r2)
            r1 = r11
            if (r0 != r1) goto L_0x0094
            r0 = r11
            return r0
        L_0x0094:
            r0 = r8
            boolean r0 = r0.isClosedForSend()
            if (r0 == 0) goto L_0x00a1
            l.s r0 = p626l.C14989s.f33022a
            return r0
        L_0x00a1:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "'awaitClose { yourCallbackOrListener.cancel() }' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details."
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.CallbackFlowBuilder.collectTo(kotlinx.coroutines.channels.ProducerScope, l.w.d):java.lang.Object");
    }

    @Override // kotlinx.coroutines.flow.ChannelFlowBuilder, kotlinx.coroutines.flow.internal.ChannelFlow
    public ChannelFlow<T> create(AbstractC15049g gVar, int i) {
        return new CallbackFlowBuilder(this.block, gVar, i);
    }
}
