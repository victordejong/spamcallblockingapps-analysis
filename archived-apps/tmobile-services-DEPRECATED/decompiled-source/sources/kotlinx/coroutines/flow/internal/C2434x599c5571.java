package kotlinx.coroutines.flow.internal;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010��\n\u0002\b\u0003\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u008a@¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"<anonymous>", "", "T1", "T2", "R", FirebaseAnalytics.Param.VALUE, "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2$1$4"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$3 */
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$3.class */
final class C2434x599c5571 extends SuspendLambda implements Function2<Object, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private Object f23765g;

    /* renamed from: h */
    Object f23766h;

    /* renamed from: i */
    int f23767i;

    /* renamed from: j */
    final /* synthetic */ CombineKt$combineTransformInternal$2 f23768j;

    /* renamed from: k */
    final /* synthetic */ Ref.BooleanRef f23769k;

    /* renamed from: l */
    final /* synthetic */ Ref.ObjectRef f23770l;

    /* renamed from: m */
    final /* synthetic */ Ref.ObjectRef f23771m;

    /* renamed from: n */
    final /* synthetic */ Ref.ObjectRef f23772n;

    /* renamed from: o */
    final /* synthetic */ Ref.BooleanRef f23773o;

    /* renamed from: p */
    final /* synthetic */ Ref.ObjectRef f23774p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2434x599c5571(Continuation continuation, CombineKt$combineTransformInternal$2 combineKt$combineTransformInternal$2, Ref.BooleanRef booleanRef, Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2, Ref.ObjectRef objectRef3, Ref.BooleanRef booleanRef2, Ref.ObjectRef objectRef4) {
        super(2, continuation);
        this.f23768j = combineKt$combineTransformInternal$2;
        this.f23769k = booleanRef;
        this.f23770l = objectRef;
        this.f23771m = objectRef2;
        this.f23772n = objectRef3;
        this.f23773o = booleanRef2;
        this.f23774p = objectRef4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        C2434x599c5571 combineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$3 = new C2434x599c5571(continuation, this.f23768j, this.f23769k, this.f23770l, this.f23771m, this.f23772n, this.f23773o, this.f23774p);
        combineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$3.f23765g = obj;
        return combineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [T] */
    /* JADX WARN: Type inference failed for: r0v29, types: [T] */
    /* JADX WARN: Type inference failed for: r0v7, types: [T, java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 3 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.m1924d()
            r8 = r0
            r0 = r6
            int r0 = r0.f23767i
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0023
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L_0x0019
            r0 = r7
            kotlin.ResultKt.m2472b(r0)
            goto L_0x00b4
        L_0x0019:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x0023:
            r0 = r7
            kotlin.ResultKt.m2472b(r0)
            r0 = r6
            java.lang.Object r0 = r0.f23765g
            r10 = r0
            r0 = r6
            kotlin.jvm.internal.Ref$ObjectRef r0 = r0.f23772n
            r1 = r10
            r0.f20751f = r1
            r0 = r6
            kotlin.jvm.internal.Ref$ObjectRef r0 = r0.f23771m
            T r0 = r0.f20751f
            if (r0 == 0) goto L_0x00b4
            r0 = r6
            kotlinx.coroutines.flow.internal.CombineKt$combineTransformInternal$2 r0 = r0.f23768j
            r7 = r0
            r0 = r7
            kotlin.jvm.functions.Function4 r0 = r0.f23846t
            r11 = r0
            r0 = r7
            kotlinx.coroutines.flow.FlowCollector r0 = r0.f23843q
            r12 = r0
            kotlinx.coroutines.internal.Symbol r0 = kotlinx.coroutines.flow.internal.CombineKt.m606g()
            r13 = r0
            r0 = r6
            kotlin.jvm.internal.Ref$ObjectRef r0 = r0.f23771m
            T r0 = r0.f20751f
            r14 = r0
            r0 = 0
            r15 = r0
            r0 = r14
            r7 = r0
            r0 = r14
            r1 = r13
            if (r0 != r1) goto L_0x006e
            r0 = 0
            r7 = r0
        L_0x006e:
            kotlinx.coroutines.internal.Symbol r0 = kotlinx.coroutines.flow.internal.CombineKt.m606g()
            r13 = r0
            r0 = r6
            kotlin.jvm.internal.Ref$ObjectRef r0 = r0.f23772n
            T r0 = r0.f20751f
            r14 = r0
            r0 = r14
            r1 = r13
            if (r0 != r1) goto L_0x0086
            goto L_0x008a
        L_0x0086:
            r0 = r14
            r15 = r0
        L_0x008a:
            r0 = r6
            r1 = r10
            r0.f23766h = r1
            r0 = r6
            r1 = 1
            r0.f23767i = r1
            r0 = 6
            kotlin.jvm.internal.InlineMarker.m1835c(r0)
            r0 = r11
            r1 = r12
            r2 = r7
            r3 = r15
            r4 = r6
            java.lang.Object r0 = r0.mo643h(r1, r2, r3, r4)
            r7 = r0
            r0 = 7
            kotlin.jvm.internal.InlineMarker.m1835c(r0)
            r0 = r7
            r1 = r8
            if (r0 != r1) goto L_0x00b4
            r0 = r8
            return r0
        L_0x00b4:
            kotlin.Unit r0 = kotlin.Unit.f20447a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.C2434x599c5571.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(Object obj, Continuation<? super Unit> continuation) {
        return ((C2434x599c5571) create(obj, continuation)).invokeSuspend(Unit.f20447a);
    }
}
