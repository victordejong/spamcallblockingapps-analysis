package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.flow.internal.CombineKt;
import okhttp3.internal.http.StatusLine;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0017\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001��\b\n\u0018��2\u00020\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002H\u0096@ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\b"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$combine$2"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$2.class */
public final class FlowKt__MigrationKt$combineLatest$$inlined$combine$2 implements Flow<R> {

    /* renamed from: a */
    final /* synthetic */ Flow[] f23042a;

    /* renamed from: b */
    final /* synthetic */ Function5 f23043b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0096@¨\u0006\n"}, d2 = {"collect", "", "T", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "continuation", "Lkotlin/coroutines/Continuation;", "", "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$unsafeFlow$2$1", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$combine$2$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__MigrationKt$combineLatest$$inlined$combine$2$1 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$2$1.class */
    public static final class C23431 extends ContinuationImpl {

        /* renamed from: f */
        /* synthetic */ Object f23044f;

        /* renamed from: g */
        int f23045g;

        /* renamed from: h */
        final /* synthetic */ FlowKt__MigrationKt$combineLatest$$inlined$combine$2 f23046h;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f23044f = obj;
            this.f23045g |= Integer.MIN_VALUE;
            return this.f23046h.mo589a(null, this);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u0011\n\u0002\b\u0007\u0010��\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0001\"\u0006\b��\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003H\n¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "R", "invoke", "()[Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$5$1", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$unsafeFlow$2$lambda$1", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$combine$2$2"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__MigrationKt$combineLatest$$inlined$combine$2$2 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$2$2.class */
    public static final class C23442 extends Lambda implements Function0<Object[]> {
        public C23442() {
            super(0);
        }

        @NotNull
        /* renamed from: b */
        public final Object[] invoke() {
            return new Object[FlowKt__MigrationKt$combineLatest$$inlined$combine$2.this.f23042a.length];
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0005\u0010��\u001a\u00020\u0001\"\u0006\b��\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u008a@¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"<anonymous>", "", "T", "R", "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$5$2", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$unsafeFlow$2$lambda$2", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$combine$2$3"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    @DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__MigrationKt$combineLatest$$inlined$combine$2$3", m1914f = "Migration.kt", m1913l = {StatusLine.HTTP_PERM_REDIRECT, StatusLine.HTTP_PERM_REDIRECT}, m1912m = "invokeSuspend")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__MigrationKt$combineLatest$$inlined$combine$2$3 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$2$3.class */
    public static final class C23453 extends SuspendLambda implements Function3<FlowCollector<? super R>, Object[], Continuation<? super Unit>, Object> {

        /* renamed from: g */
        private FlowCollector f23048g;

        /* renamed from: h */
        private Object[] f23049h;

        /* renamed from: i */
        Object f23050i;

        /* renamed from: j */
        Object f23051j;

        /* renamed from: k */
        Object f23052k;

        /* renamed from: l */
        int f23053l;

        /* renamed from: m */
        Object f23054m;

        /* renamed from: n */
        Object f23055n;

        /* renamed from: o */
        final /* synthetic */ FlowKt__MigrationKt$combineLatest$$inlined$combine$2 f23056o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C23453(Continuation continuation, FlowKt__MigrationKt$combineLatest$$inlined$combine$2 flowKt__MigrationKt$combineLatest$$inlined$combine$2) {
            super(3, continuation);
            this.f23056o = flowKt__MigrationKt$combineLatest$$inlined$combine$2;
        }

        @Override // kotlin.jvm.functions.Function3
        /* renamed from: a */
        public final Object mo594a(Object obj, Object[] objArr, Continuation<? super Unit> continuation) {
            return ((C23453) m683d((FlowCollector) obj, objArr, continuation)).invokeSuspend(Unit.f20447a);
        }

        @NotNull
        /* renamed from: d */
        public final Continuation<Unit> m683d(@NotNull FlowCollector<? super R> flowCollector, @NotNull Object[] objArr, @NotNull Continuation<? super Unit> continuation) {
            C23453 r0 = new C23453(continuation, this.f23056o);
            r0.f23048g = flowCollector;
            r0.f23049h = objArr;
            return r0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object d;
            Object obj2;
            FlowCollector flowCollector;
            Object[] objArr;
            FlowCollector flowCollector2;
            d = IntrinsicsKt__IntrinsicsKt.m1920d();
            int i = this.f23053l;
            if (i == 0) {
                ResultKt.m2472b(obj);
                FlowCollector flowCollector3 = this.f23048g;
                objArr = this.f23049h;
                Function5 function5 = this.f23056o.f23043b;
                Object obj3 = objArr[0];
                Object obj4 = objArr[1];
                Object obj5 = objArr[2];
                Object obj6 = objArr[3];
                this.f23050i = flowCollector3;
                this.f23051j = objArr;
                this.f23052k = flowCollector3;
                this.f23054m = this;
                this.f23055n = objArr;
                this.f23053l = 1;
                obj2 = function5.mo1840t(obj3, obj4, obj5, obj6, this);
                if (obj2 == d) {
                    return d;
                }
                flowCollector = flowCollector3;
                flowCollector2 = flowCollector3;
            } else if (i == 1) {
                Object[] objArr2 = (Object[]) this.f23055n;
                Continuation continuation = (Continuation) this.f23054m;
                flowCollector2 = (FlowCollector) this.f23052k;
                objArr = (Object[]) this.f23051j;
                flowCollector = (FlowCollector) this.f23050i;
                ResultKt.m2472b(obj);
                obj2 = obj;
            } else if (i == 2) {
                Object[] objArr3 = (Object[]) this.f23051j;
                FlowCollector flowCollector4 = (FlowCollector) this.f23050i;
                ResultKt.m2472b(obj);
                return Unit.f20447a;
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            this.f23050i = flowCollector;
            this.f23051j = objArr;
            this.f23053l = 2;
            if (flowCollector2.mo588b(obj2, this) == d) {
                return d;
            }
            return Unit.f20447a;
        }
    }

    @Override // kotlinx.coroutines.flow.Flow
    @Nullable
    /* renamed from: a */
    public Object mo589a(@NotNull FlowCollector flowCollector, @NotNull Continuation continuation) {
        Object d;
        Object e = CombineKt.m608e(flowCollector, this.f23042a, new C23442(), new C23453(null, this), continuation);
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        return e == d ? e : Unit.f20447a;
    }
}
