package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p641z.p643d.C15164z;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��3\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0004*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, m815d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", "emit", "", C13032a.f29462d, "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__DistinctKt$$special$$inlined$collect$1"}, m814k = 1, m813mv = {1, 1, 16})
/* renamed from: kotlinx.coroutines.flow.FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$1$lambda$1 */
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$1$lambda$1.class */
public final class C14726x59d1cced implements FlowCollector<T> {
    public final /* synthetic */ C15164z $previousKey$inlined;
    public final /* synthetic */ FlowCollector $this_unsafeFlow$inlined;
    public final /* synthetic */ FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$1 this$0;

    @AbstractC15070f(m473c = "kotlinx.coroutines.flow.FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$1$lambda$1", m472f = "Distinct.kt", m471l = {141}, m470m = "emit")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��6\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0096@¨\u0006\b"}, m815d2 = {"emit", "", ExifInterface.GPS_DIRECTION_TRUE, C13032a.f29462d, "continuation", "Lkotlin/coroutines/Continuation;", "", "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3$emit$1", "kotlinx/coroutines/flow/FlowKt__DistinctKt$$special$$inlined$collect$1$1"}, m814k = 3, m813mv = {1, 1, 16})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$1$lambda$1$1 */
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$1$lambda$1$1.class */
    public static final class C147271 extends AbstractC15068d {
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public Object L$4;
        public int label;
        public /* synthetic */ Object result;

        public C147271(AbstractC15044d dVar) {
            super(dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return C14726x59d1cced.this.emit(null, this);
        }
    }

    public C14726x59d1cced(FlowCollector flowCollector, C15164z zVar, FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$1 flowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$1) {
        this.$this_unsafeFlow$inlined = flowCollector;
        this.$previousKey$inlined = zVar;
        this.this$0 = flowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$1;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007d  */
    /* JADX WARN: Type inference failed for: r0v13, types: [T, java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object emit(java.lang.Object r6, p626l.p634w.AbstractC15044d r7) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.C14726x59d1cced.emit(java.lang.Object, l.w.d):java.lang.Object");
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [T, java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object emit$$forInline(java.lang.Object r6, p626l.p634w.AbstractC15044d r7) {
        /*
            r5 = this;
            r0 = 4
            p626l.p641z.p643d.C15148j.m388c(r0)
            kotlinx.coroutines.flow.FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$1$lambda$1$1 r0 = new kotlinx.coroutines.flow.FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$1$lambda$1$1
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r0 = 5
            p626l.p641z.p643d.C15148j.m388c(r0)
            r0 = r5
            kotlinx.coroutines.flow.FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$1 r0 = r0.this$0
            l.z.c.l r0 = r0.$keySelector$inlined
            r1 = r6
            java.lang.Object r0 = r0.invoke(r1)
            r8 = r0
            r0 = r5
            l.z.d.z r0 = r0.$previousKey$inlined
            T r0 = r0.f33152a
            r9 = r0
            r0 = r9
            kotlinx.coroutines.internal.Symbol r1 = kotlinx.coroutines.flow.internal.NullSurrogateKt.NULL
            if (r0 == r1) goto L_0x0049
            r0 = r5
            kotlinx.coroutines.flow.FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$1 r0 = r0.this$0
            l.z.c.p r0 = r0.$areEquivalent$inlined
            r1 = r9
            r2 = r8
            java.lang.Object r0 = r0.invoke(r1, r2)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L_0x0070
        L_0x0049:
            r0 = r5
            l.z.d.z r0 = r0.$previousKey$inlined
            r1 = r8
            r0.f33152a = r1
            r0 = r5
            kotlinx.coroutines.flow.FlowCollector r0 = r0.$this_unsafeFlow$inlined
            r8 = r0
            r0 = 0
            p626l.p641z.p643d.C15148j.m388c(r0)
            r0 = r8
            r1 = r6
            r2 = r7
            java.lang.Object r0 = r0.emit(r1, r2)
            r6 = r0
            r0 = 2
            p626l.p641z.p643d.C15148j.m388c(r0)
            r0 = 1
            p626l.p641z.p643d.C15148j.m388c(r0)
            r0 = r6
            l.s r0 = (p626l.C14989s) r0
            r6 = r0
        L_0x0070:
            l.s r0 = p626l.C14989s.f33022a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.C14726x59d1cced.emit$$forInline(java.lang.Object, l.w.d):java.lang.Object");
    }
}
