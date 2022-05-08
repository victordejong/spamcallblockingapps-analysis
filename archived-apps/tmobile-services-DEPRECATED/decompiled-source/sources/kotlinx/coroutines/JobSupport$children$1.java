package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "Lkotlin/sequences/SequenceScope;", "Lkotlinx/coroutines/ChildJob;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.JobSupport$children$1", m1914f = "JobSupport.kt", m1913l = {949, 951}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/JobSupport$children$1.class */
final class JobSupport$children$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super ChildJob>, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private SequenceScope f21213g;

    /* renamed from: h */
    Object f21214h;

    /* renamed from: i */
    Object f21215i;

    /* renamed from: j */
    Object f21216j;

    /* renamed from: k */
    Object f21217k;

    /* renamed from: l */
    Object f21218l;

    /* renamed from: m */
    Object f21219m;

    /* renamed from: n */
    int f21220n;

    /* renamed from: o */
    final /* synthetic */ JobSupport f21221o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    JobSupport$children$1(JobSupport jobSupport, Continuation continuation) {
        super(2, continuation);
        this.f21221o = jobSupport;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        JobSupport$children$1 jobSupport$children$1 = new JobSupport$children$1(this.f21221o, continuation);
        jobSupport$children$1.f21213g = (SequenceScope) obj;
        return jobSupport$children$1;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00ea  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0105 -> B:33:0x016a). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0165 -> B:33:0x016a). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r5) {
        /*
            Method dump skipped, instructions count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobSupport$children$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(SequenceScope<? super ChildJob> sequenceScope, Continuation<? super Unit> continuation) {
        return ((JobSupport$children$1) create(sequenceScope, continuation)).invokeSuspend(Unit.f20447a);
    }
}
