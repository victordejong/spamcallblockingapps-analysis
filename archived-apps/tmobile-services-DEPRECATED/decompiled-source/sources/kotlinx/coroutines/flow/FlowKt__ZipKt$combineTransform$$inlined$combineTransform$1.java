package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.flow.internal.CombineKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u0001\"\u0006\b��\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"<anonymous>", "", "T", "R", "Lkotlinx/coroutines/flow/FlowCollector;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$6"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$$inlined$combineTransform$1", m1914f = "Zip.kt", m1913l = {253}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$$inlined$combineTransform$1.class */
public final class FlowKt__ZipKt$combineTransform$$inlined$combineTransform$1 extends SuspendLambda implements Function2<FlowCollector<? super R>, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private FlowCollector f23533g;

    /* renamed from: h */
    Object f23534h;

    /* renamed from: i */
    int f23535i;

    /* renamed from: j */
    final /* synthetic */ Flow[] f23536j;

    /* renamed from: k */
    final /* synthetic */ Function4 f23537k;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u0011\n\u0002\b\u0005\u0010��\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0001\"\u0006\b��\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003H\n¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"<anonymous>", "", "T", "R", "invoke", "()[Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$6$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$$inlined$combineTransform$1$1 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$$inlined$combineTransform$1$1.class */
    public static final class C24121 extends Lambda implements Function0<Object[]> {
        public C24121() {
            super(0);
        }

        @NotNull
        /* renamed from: b */
        public final Object[] invoke() {
            return new Object[FlowKt__ZipKt$combineTransform$$inlined$combineTransform$1.this.f23536j.length];
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0003\u0010��\u001a\u00020\u0001\"\u0006\b��\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u008a@¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"<anonymous>", "", "T", "R", "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$6$2"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    @DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$$inlined$combineTransform$1$2", m1914f = "Zip.kt", m1913l = {306}, m1912m = "invokeSuspend")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$$inlined$combineTransform$1$2 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$$inlined$combineTransform$1$2.class */
    public static final class C24132 extends SuspendLambda implements Function3<FlowCollector<? super R>, Object[], Continuation<? super Unit>, Object> {

        /* renamed from: g */
        private FlowCollector f23539g;

        /* renamed from: h */
        private Object[] f23540h;

        /* renamed from: i */
        Object f23541i;

        /* renamed from: j */
        Object f23542j;

        /* renamed from: k */
        int f23543k;

        /* renamed from: m */
        Object f23545m;

        /* renamed from: n */
        Object f23546n;

        /* renamed from: o */
        Object f23547o;

        public C24132(Continuation continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        /* renamed from: a */
        public final Object mo594a(Object obj, Object[] objArr, Continuation<? super Unit> continuation) {
            return ((C24132) m651d((FlowCollector) obj, objArr, continuation)).invokeSuspend(Unit.f20447a);
        }

        @NotNull
        /* renamed from: d */
        public final Continuation<Unit> m651d(@NotNull FlowCollector<? super R> flowCollector, @NotNull Object[] objArr, @NotNull Continuation<? super Unit> continuation) {
            C24132 r0 = new C24132(continuation);
            r0.f23539g = flowCollector;
            r0.f23540h = objArr;
            return r0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object d;
            d = IntrinsicsKt__IntrinsicsKt.m1920d();
            int i = this.f23543k;
            if (i == 0) {
                ResultKt.m2472b(obj);
                FlowCollector flowCollector = this.f23539g;
                Object[] objArr = this.f23540h;
                Function4 function4 = FlowKt__ZipKt$combineTransform$$inlined$combineTransform$1.this.f23537k;
                Object obj2 = objArr[0];
                Object obj3 = objArr[1];
                this.f23541i = flowCollector;
                this.f23542j = objArr;
                this.f23545m = this;
                this.f23546n = objArr;
                this.f23547o = flowCollector;
                this.f23543k = 1;
                InlineMarker.m1835c(6);
                Object h = function4.mo643h(flowCollector, obj2, obj3, this);
                InlineMarker.m1835c(7);
                if (h == d) {
                    return d;
                }
            } else if (i == 1) {
                FlowCollector flowCollector2 = (FlowCollector) this.f23547o;
                Object[] objArr2 = (Object[]) this.f23546n;
                Continuation continuation = (Continuation) this.f23545m;
                Object[] objArr3 = (Object[]) this.f23542j;
                FlowCollector flowCollector3 = (FlowCollector) this.f23541i;
                ResultKt.m2472b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Unit.f20447a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__ZipKt$combineTransform$$inlined$combineTransform$1(Flow[] flowArr, Continuation continuation, Function4 function4) {
        super(2, continuation);
        this.f23536j = flowArr;
        this.f23537k = function4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        FlowKt__ZipKt$combineTransform$$inlined$combineTransform$1 flowKt__ZipKt$combineTransform$$inlined$combineTransform$1 = new FlowKt__ZipKt$combineTransform$$inlined$combineTransform$1(this.f23536j, continuation, this.f23537k);
        flowKt__ZipKt$combineTransform$$inlined$combineTransform$1.f23533g = (FlowCollector) obj;
        return flowKt__ZipKt$combineTransform$$inlined$combineTransform$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f23535i;
        if (i == 0) {
            ResultKt.m2472b(obj);
            FlowCollector flowCollector = this.f23533g;
            Flow[] flowArr = this.f23536j;
            C24121 r0 = new C24121();
            C24132 r02 = new C24132(null);
            this.f23534h = flowCollector;
            this.f23535i = 1;
            if (CombineKt.m608e(flowCollector, flowArr, r0, r02, this) == d) {
                return d;
            }
        } else if (i == 1) {
            FlowCollector flowCollector2 = (FlowCollector) this.f23534h;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.f20447a;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(Object obj, Continuation<? super Unit> continuation) {
        return ((FlowKt__ZipKt$combineTransform$$inlined$combineTransform$1) create(obj, continuation)).invokeSuspend(Unit.f20447a);
    }
}
