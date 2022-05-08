package kotlinx.coroutines.flow;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u001f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002\"\u0010\b\u0001\u0010\u0003*\n\u0012\u0006\b��\u0012\u0002H\u00020\u0004*\b\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0006\u001a\u0002H\u00032\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00030\bH\u0086@"}, d2 = {"toCollection", "", "T", "C", "", "Lkotlinx/coroutines/flow/Flow;", FirebaseAnalytics.Param.DESTINATION, "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__CollectionKt", m1914f = "Collection.kt", m1913l = {32}, m1912m = "toCollection")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__CollectionKt$toCollection$1.class */
public final class FlowKt__CollectionKt$toCollection$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f22454f;

    /* renamed from: g */
    int f22455g;

    /* renamed from: h */
    Object f22456h;

    /* renamed from: i */
    Object f22457i;

    /* renamed from: j */
    Object f22458j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlowKt__CollectionKt$toCollection$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f22454f = obj;
        this.f22455g |= Integer.MIN_VALUE;
        return FlowKt.m726s(null, null, this);
    }
}
