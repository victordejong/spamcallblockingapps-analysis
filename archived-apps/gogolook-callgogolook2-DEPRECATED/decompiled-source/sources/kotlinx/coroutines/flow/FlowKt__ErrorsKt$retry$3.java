package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import androidx.media2.exoplayer.external.text.cea.Cea708Decoder;
import kotlin.Metadata;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p642c.AbstractC15124r;
@AbstractC15070f(m473c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$retry$3", m472f = "Errors.kt", m471l = {Cea708Decoder.CHARACTER_LOWER_RIGHT_BORDER}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001c\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n��\n\u0002\u0010\t\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u008a@¢\u0006\u0004\b\b\u0010\t"}, m815d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/FlowCollector;", "cause", "", "attempt", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$3.class */
public final class FlowKt__ErrorsKt$retry$3 extends AbstractC15078m implements AbstractC15124r<FlowCollector<? super T>, Throwable, Long, AbstractC15044d<? super Boolean>, Object> {
    public final /* synthetic */ AbstractC15122p $predicate;
    public final /* synthetic */ long $retries;
    public long J$0;
    public Object L$0;
    public Object L$1;
    public int label;

    /* renamed from: p$ */
    public FlowCollector f32873p$;
    public Throwable p$0;
    public long p$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__ErrorsKt$retry$3(long j, AbstractC15122p pVar, AbstractC15044d dVar) {
        super(4, dVar);
        this.$retries = j;
        this.$predicate = pVar;
    }

    public final AbstractC15044d<C14989s> create(FlowCollector<? super T> flowCollector, Throwable th, long j, AbstractC15044d<? super Boolean> dVar) {
        FlowKt__ErrorsKt$retry$3 flowKt__ErrorsKt$retry$3 = new FlowKt__ErrorsKt$retry$3(this.$retries, this.$predicate, dVar);
        flowKt__ErrorsKt$retry$3.f32873p$ = flowCollector;
        flowKt__ErrorsKt$retry$3.p$0 = th;
        flowKt__ErrorsKt$retry$3.p$1 = j;
        return flowKt__ErrorsKt$retry$3;
    }

    @Override // p626l.p641z.p642c.AbstractC15124r
    public final Object invoke(Object obj, Throwable th, Long l, AbstractC15044d<? super Boolean> dVar) {
        return ((FlowKt__ErrorsKt$retry$3) create((FlowCollector) obj, th, l.longValue(), dVar)).invokeSuspend(C14989s.f33022a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0090, code lost:
        if (((java.lang.Boolean) r6).booleanValue() != false) goto L_0x0099;
     */
    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = p626l.p634w.p635j.C15064c.m478a()
            r7 = r0
            r0 = r5
            int r0 = r0.label
            r8 = r0
            r0 = 1
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0038
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L_0x002e
            r0 = r5
            java.lang.Object r0 = r0.L$1
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r10 = r0
            r0 = r5
            java.lang.Object r0 = r0.L$0
            kotlinx.coroutines.flow.FlowCollector r0 = (kotlinx.coroutines.flow.FlowCollector) r0
            r10 = r0
            r0 = r6
            p626l.C14982l.m653a(r0)
            goto L_0x0089
        L_0x002e:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x0038:
            r0 = r6
            p626l.C14982l.m653a(r0)
            r0 = r5
            kotlinx.coroutines.flow.FlowCollector r0 = r0.f32873p$
            r11 = r0
            r0 = r5
            java.lang.Throwable r0 = r0.p$0
            r6 = r0
            r0 = r5
            long r0 = r0.p$1
            r12 = r0
            r0 = r12
            r1 = r5
            long r1 = r1.$retries
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0096
            r0 = r5
            l.z.c.p r0 = r0.$predicate
            r10 = r0
            r0 = r5
            r1 = r11
            r0.L$0 = r1
            r0 = r5
            r1 = r6
            r0.L$1 = r1
            r0 = r5
            r1 = r12
            r0.J$0 = r1
            r0 = r5
            r1 = 1
            r0.label = r1
            r0 = r10
            r1 = r6
            r2 = r5
            java.lang.Object r0 = r0.invoke(r1, r2)
            r10 = r0
            r0 = r10
            r6 = r0
            r0 = r10
            r1 = r7
            if (r0 != r1) goto L_0x0089
            r0 = r7
            return r0
        L_0x0089:
            r0 = r6
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x0096
            goto L_0x0099
        L_0x0096:
            r0 = 0
            r9 = r0
        L_0x0099:
            r0 = r9
            java.lang.Boolean r0 = p626l.p634w.p636k.p637a.C15066b.m474a(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ErrorsKt$retry$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
