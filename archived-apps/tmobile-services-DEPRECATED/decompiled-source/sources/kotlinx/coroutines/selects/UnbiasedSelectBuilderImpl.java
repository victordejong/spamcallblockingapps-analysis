package kotlinx.coroutines.selects;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��f\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0001\u0018��*\u0006\b��\u0010\u0001 ��2\u00020\u0002B\u0015\u0012\f\u0010)\u001a\b\u0012\u0004\u0012\u00028��0\u000e¢\u0006\u0004\b*\u0010+J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u0011\u0010\t\u001a\u0004\u0018\u00010\bH\u0001¢\u0006\u0004\b\t\u0010\nJ8\u0010\u0010\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000b2\u001c\u0010\u000f\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\b0\rH\u0016ø\u0001��¢\u0006\u0004\b\u0010\u0010\u0011J5\u0010\u0013\u001a\u00020\u0005*\u00020\u00122\u001c\u0010\u000f\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\b0\rH\u0096\u0002ø\u0001��¢\u0006\u0004\b\u0013\u0010\u0014JG\u0010\u0013\u001a\u00020\u0005\"\u0004\b\u0001\u0010\u0015*\b\u0012\u0004\u0012\u00028\u00010\u00162\"\u0010\u000f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0017H\u0096\u0002ø\u0001��¢\u0006\u0004\b\u0013\u0010\u0018J[\u0010\u0013\u001a\u00020\u0005\"\u0004\b\u0001\u0010\u0019\"\u0004\b\u0002\u0010\u0015*\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u001a2\u0006\u0010\u001b\u001a\u00028\u00012\"\u0010\u000f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0017H\u0096\u0002ø\u0001��¢\u0006\u0004\b\u0013\u0010\u001cR5\u0010 \u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u001e0\u001dj\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u001e`\u001f8\u0006@\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u001f\u0010%\u001a\b\u0012\u0004\u0012\u00028��0$8\u0006@\u0006¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006,"}, d2 = {"Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;", "R", "Lkotlinx/coroutines/selects/SelectBuilder;", "", "e", "", "handleBuilderException", "(Ljava/lang/Throwable;)V", "", "initSelectResult", "()Ljava/lang/Object;", "", "timeMillis", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "block", "onTimeout", "(JLkotlin/jvm/functions/Function1;)V", "Lkotlinx/coroutines/selects/SelectClause0;", "invoke", "(Lkotlinx/coroutines/selects/SelectClause0;Lkotlin/jvm/functions/Function1;)V", "Q", "Lkotlinx/coroutines/selects/SelectClause1;", "Lkotlin/Function2;", "(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V", "P", "Lkotlinx/coroutines/selects/SelectClause2;", "param", "(Lkotlinx/coroutines/selects/SelectClause2;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "Ljava/util/ArrayList;", "Lkotlin/Function0;", "Lkotlin/collections/ArrayList;", "clauses", "Ljava/util/ArrayList;", "getClauses", "()Ljava/util/ArrayList;", "Lkotlinx/coroutines/selects/SelectBuilderImpl;", "instance", "Lkotlinx/coroutines/selects/SelectBuilderImpl;", "getInstance", "()Lkotlinx/coroutines/selects/SelectBuilderImpl;", "uCont", "<init>", "(Lkotlin/coroutines/Continuation;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@PublishedApi
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/selects/UnbiasedSelectBuilderImpl.class */
public final class UnbiasedSelectBuilderImpl<R> implements SelectBuilder<R> {
    @NotNull

    /* renamed from: f */
    private final SelectBuilderImpl<R> f24035f;
    @NotNull

    /* renamed from: g */
    private final ArrayList<Function0<Unit>> f24036g;

    @Override // kotlinx.coroutines.selects.SelectBuilder
    /* renamed from: B */
    public <Q> void mo303B(@NotNull SelectClause1<? extends Q> selectClause1, @NotNull Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
        this.f24036g.add(new UnbiasedSelectBuilderImpl$invoke$2(this, selectClause1, function2));
    }

    @NotNull
    /* renamed from: a */
    public final SelectBuilderImpl<R> m302a() {
        return this.f24035f;
    }

    @Override // kotlinx.coroutines.selects.SelectBuilder
    /* renamed from: m */
    public void mo301m(long j, @NotNull Function1<? super Continuation<? super R>, ? extends Object> function1) {
        this.f24036g.add(new UnbiasedSelectBuilderImpl$onTimeout$1(this, j, function1));
    }
}
