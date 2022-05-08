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
import kotlin.jvm.functions.Function6;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.flow.internal.CombineKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0017\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001��\b\n\u0018��2\u00020\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002H\u0096@ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\b"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$combine$3"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$3.class */
public final class FlowKt__MigrationKt$combineLatest$$inlined$combine$3 implements Flow<R> {

    /* renamed from: a */
    final /* synthetic */ Flow[] f23057a;

    /* renamed from: b */
    final /* synthetic */ Function6 f23058b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0096@¨\u0006\n"}, d2 = {"collect", "", "T", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "continuation", "Lkotlin/coroutines/Continuation;", "", "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$unsafeFlow$3$1", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$combine$3$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__MigrationKt$combineLatest$$inlined$combine$3$1 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$3$1.class */
    public static final class C23461 extends ContinuationImpl {

        /* renamed from: f */
        /* synthetic */ Object f23059f;

        /* renamed from: g */
        int f23060g;

        /* renamed from: h */
        final /* synthetic */ FlowKt__MigrationKt$combineLatest$$inlined$combine$3 f23061h;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f23059f = obj;
            this.f23060g |= Integer.MIN_VALUE;
            return this.f23061h.mo589a(null, this);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u0011\n\u0002\b\u0007\u0010��\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0001\"\u0006\b��\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003H\n¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "R", "invoke", "()[Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$5$1", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$unsafeFlow$3$lambda$1", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$combine$3$2"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__MigrationKt$combineLatest$$inlined$combine$3$2 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$3$2.class */
    public static final class C23472 extends Lambda implements Function0<Object[]> {
        public C23472() {
            super(0);
        }

        @NotNull
        /* renamed from: b */
        public final Object[] invoke() {
            return new Object[FlowKt__MigrationKt$combineLatest$$inlined$combine$3.this.f23057a.length];
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0005\u0010��\u001a\u00020\u0001\"\u0006\b��\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u008a@¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"<anonymous>", "", "T", "R", "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$5$2", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$unsafeFlow$3$lambda$2", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$combine$3$3"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    @DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__MigrationKt$combineLatest$$inlined$combine$3$3", m1914f = "Migration.kt", m1913l = {309, 309}, m1912m = "invokeSuspend")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__MigrationKt$combineLatest$$inlined$combine$3$3 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$3$3.class */
    public static final class C23483 extends SuspendLambda implements Function3<FlowCollector<? super R>, Object[], Continuation<? super Unit>, Object> {

        /* renamed from: g */
        private FlowCollector f23063g;

        /* renamed from: h */
        private Object[] f23064h;

        /* renamed from: i */
        Object f23065i;

        /* renamed from: j */
        Object f23066j;

        /* renamed from: k */
        Object f23067k;

        /* renamed from: l */
        int f23068l;

        /* renamed from: m */
        Object f23069m;

        /* renamed from: n */
        Object f23070n;

        /* renamed from: o */
        final /* synthetic */ FlowKt__MigrationKt$combineLatest$$inlined$combine$3 f23071o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C23483(Continuation continuation, FlowKt__MigrationKt$combineLatest$$inlined$combine$3 flowKt__MigrationKt$combineLatest$$inlined$combine$3) {
            super(3, continuation);
            this.f23071o = flowKt__MigrationKt$combineLatest$$inlined$combine$3;
        }

        @Override // kotlin.jvm.functions.Function3
        /* renamed from: a */
        public final Object mo594a(Object obj, Object[] objArr, Continuation<? super Unit> continuation) {
            return ((C23483) m681d((FlowCollector) obj, objArr, continuation)).invokeSuspend(Unit.f20447a);
        }

        @NotNull
        /* renamed from: d */
        public final Continuation<Unit> m681d(@NotNull FlowCollector<? super R> flowCollector, @NotNull Object[] objArr, @NotNull Continuation<? super Unit> continuation) {
            C23483 r0 = new C23483(continuation, this.f23071o);
            r0.f23063g = flowCollector;
            r0.f23064h = objArr;
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
            int i = this.f23068l;
            if (i == 0) {
                ResultKt.m2472b(obj);
                FlowCollector flowCollector3 = this.f23063g;
                Object[] objArr2 = this.f23064h;
                Function6 function6 = this.f23071o.f23058b;
                Object obj3 = objArr2[0];
                Object obj4 = objArr2[1];
                Object obj5 = objArr2[2];
                Object obj6 = objArr2[3];
                Object obj7 = objArr2[4];
                this.f23065i = flowCollector3;
                this.f23066j = objArr2;
                this.f23067k = flowCollector3;
                this.f23069m = this;
                this.f23070n = objArr2;
                this.f23068l = 1;
                obj2 = function6.mo1842l(obj3, obj4, obj5, obj6, obj7, this);
                if (obj2 == d) {
                    return d;
                }
                flowCollector = flowCollector3;
                objArr = objArr2;
                flowCollector2 = flowCollector3;
            } else if (i == 1) {
                Object[] objArr3 = (Object[]) this.f23070n;
                Continuation continuation = (Continuation) this.f23069m;
                flowCollector2 = (FlowCollector) this.f23067k;
                objArr = (Object[]) this.f23066j;
                flowCollector = (FlowCollector) this.f23065i;
                ResultKt.m2472b(obj);
                obj2 = obj;
            } else if (i == 2) {
                Object[] objArr4 = (Object[]) this.f23066j;
                FlowCollector flowCollector4 = (FlowCollector) this.f23065i;
                ResultKt.m2472b(obj);
                return Unit.f20447a;
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            this.f23065i = flowCollector;
            this.f23066j = objArr;
            this.f23068l = 2;
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
        Object e = CombineKt.m608e(flowCollector, this.f23057a, new C23472(), new C23483(null, this), continuation);
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        return e == d ? e : Unit.f20447a;
    }
}
