package kotlin.sequences;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "T", "R", "Lkotlin/sequences/SequenceScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlin.sequences.SequencesKt___SequencesKt$runningFoldIndexed$1", m1914f = "_Sequences.kt", m1913l = {2099, 2104}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1.class */
final class SequencesKt___SequencesKt$runningFoldIndexed$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super R>, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private SequenceScope f20950g;

    /* renamed from: h */
    Object f20951h;

    /* renamed from: i */
    Object f20952i;

    /* renamed from: j */
    Object f20953j;

    /* renamed from: k */
    Object f20954k;

    /* renamed from: l */
    int f20955l;

    /* renamed from: m */
    int f20956m;

    /* renamed from: n */
    final /* synthetic */ Sequence f20957n;

    /* renamed from: o */
    final /* synthetic */ Object f20958o;

    /* renamed from: p */
    final /* synthetic */ Function3 f20959p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SequencesKt___SequencesKt$runningFoldIndexed$1(Sequence sequence, Object obj, Function3 function3, Continuation continuation) {
        super(2, continuation);
        this.f20957n = sequence;
        this.f20958o = obj;
        this.f20959p = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.m1830e(completion, "completion");
        SequencesKt___SequencesKt$runningFoldIndexed$1 sequencesKt___SequencesKt$runningFoldIndexed$1 = new SequencesKt___SequencesKt$runningFoldIndexed$1(this.f20957n, this.f20958o, this.f20959p, completion);
        sequencesKt___SequencesKt$runningFoldIndexed$1.f20950g = (SequenceScope) obj;
        return sequencesKt___SequencesKt$runningFoldIndexed$1;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00aa  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r6) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.sequences.SequencesKt___SequencesKt$runningFoldIndexed$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(Object obj, Continuation<? super Unit> continuation) {
        return ((SequencesKt___SequencesKt$runningFoldIndexed$1) create(obj, continuation)).invokeSuspend(Unit.f20447a);
    }
}
