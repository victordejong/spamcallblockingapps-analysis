package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0017\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001��\b\n\u0018��2\u00020\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002H\u0096@ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006��"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1.class */
public final class FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1 implements Flow<T> {

    /* renamed from: a */
    final /* synthetic */ Flow f22640a;

    /* renamed from: b */
    final /* synthetic */ Function2 f22641b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n��\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0096@¨\u0006\b"}, d2 = {"collect", "", "T", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "continuation", "Lkotlin/coroutines/Continuation;", "", "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    @DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1", m1914f = "Emitters.kt", m1913l = {115, 122}, m1912m = "collect")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1.class */
    public static final class C22991 extends ContinuationImpl {

        /* renamed from: f */
        /* synthetic */ Object f22642f;

        /* renamed from: g */
        int f22643g;

        /* renamed from: i */
        Object f22645i;

        /* renamed from: j */
        Object f22646j;

        /* renamed from: k */
        Object f22647k;

        /* renamed from: l */
        Object f22648l;

        /* renamed from: m */
        Object f22649m;

        /* renamed from: n */
        Object f22650n;

        public C22991(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f22642f = obj;
            this.f22643g |= Integer.MIN_VALUE;
            return FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1.this.mo589a(null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0140  */
    @Override // kotlinx.coroutines.flow.Flow
    @org.jetbrains.annotations.Nullable
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo589a(@org.jetbrains.annotations.NotNull final kotlinx.coroutines.flow.FlowCollector r6, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation r7) {
        /*
            Method dump skipped, instructions count: 437
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1.mo589a(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
