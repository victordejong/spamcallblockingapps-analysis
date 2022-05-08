package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p641z.p642c.AbstractC15124r;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001d\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0002*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0005H\u0096@ø\u0001��¢\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006��"}, m815d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "collect", "", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1.class */
public final class FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1 implements Flow<T> {
    public final /* synthetic */ AbstractC15124r $predicate$inlined;
    public final /* synthetic */ Flow $this_retryWhen$inlined;

    @AbstractC15070f(m473c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1", m472f = "Errors.kt", m471l = {117, 119}, m470m = "collect")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001e\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n��\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0096@¨\u0006\b"}, m815d2 = {"collect", "", ExifInterface.GPS_DIRECTION_TRUE, "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "continuation", "Lkotlin/coroutines/Continuation;", "", "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1"}, m814k = 3, m813mv = {1, 1, 16})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1 */
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1.class */
    public static final class C147421 extends AbstractC15068d {
        public int I$0;
        public long J$0;
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public Object L$4;
        public int label;
        public /* synthetic */ Object result;

        public C147421(AbstractC15044d dVar) {
            super(dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1.this.collect(null, this);
        }
    }

    public FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1(Flow flow, AbstractC15124r rVar) {
        this.$this_retryWhen$inlined = flow;
        this.$predicate$inlined = rVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0204  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x01be -> B:30:0x01c3). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x01ec -> B:36:0x01f8). Please submit an issue!!! */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object collect(kotlinx.coroutines.flow.FlowCollector r7, p626l.p634w.AbstractC15044d r8) {
        /*
            Method dump skipped, instructions count: 525
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1.collect(kotlinx.coroutines.flow.FlowCollector, l.w.d):java.lang.Object");
    }
}
