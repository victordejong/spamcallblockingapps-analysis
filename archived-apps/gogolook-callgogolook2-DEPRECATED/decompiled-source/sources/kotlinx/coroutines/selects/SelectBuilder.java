package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import p626l.p634w.AbstractC15044d;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��@\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018��*\u0006\b��\u0010\u0001 ��2\u00020\u0002J6\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u001c\u0010\u0007\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\t\u0012\u0006\u0012\u0004\u0018\u00010\u00020\bH'ø\u0001��¢\u0006\u0002\u0010\nJ3\u0010\u000b\u001a\u00020\u0004*\u00020\f2\u001c\u0010\u0007\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\t\u0012\u0006\u0012\u0004\u0018\u00010\u00020\bH¦\u0002ø\u0001��¢\u0006\u0002\u0010\rJE\u0010\u000b\u001a\u00020\u0004\"\u0004\b\u0001\u0010\u000e*\b\u0012\u0004\u0012\u0002H\u000e0\u000f2\"\u0010\u0007\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\t\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0010H¦\u0002ø\u0001��¢\u0006\u0002\u0010\u0011JY\u0010\u000b\u001a\u00020\u0004\"\u0004\b\u0001\u0010\u0012\"\u0004\b\u0002\u0010\u000e*\u000e\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u000e0\u00132\u0006\u0010\u0014\u001a\u0002H\u00122\"\u0010\u0007\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\t\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0010H¦\u0002ø\u0001��¢\u0006\u0002\u0010\u0015JS\u0010\u000b\u001a\u00020\u0004\"\u0004\b\u0001\u0010\u0012\"\u0004\b\u0002\u0010\u000e*\u0010\u0012\u0006\u0012\u0004\u0018\u0001H\u0012\u0012\u0004\u0012\u0002H\u000e0\u00132\"\u0010\u0007\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\t\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0010H\u0096\u0002ø\u0001��¢\u0006\u0002\u0010\u0016\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0017"}, m815d2 = {"Lkotlinx/coroutines/selects/SelectBuilder;", "R", "", "onTimeout", "", "timeMillis", "", "block", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "(JLkotlin/jvm/functions/Function1;)V", "invoke", "Lkotlinx/coroutines/selects/SelectClause0;", "(Lkotlinx/coroutines/selects/SelectClause0;Lkotlin/jvm/functions/Function1;)V", "Q", "Lkotlinx/coroutines/selects/SelectClause1;", "Lkotlin/Function2;", "(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V", "P", "Lkotlinx/coroutines/selects/SelectClause2;", "param", "(Lkotlinx/coroutines/selects/SelectClause2;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "(Lkotlinx/coroutines/selects/SelectClause2;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/selects/SelectBuilder.class */
public interface SelectBuilder<R> {

    @Metadata(m817bv = {1, 0, 3}, m814k = 3, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/selects/SelectBuilder$DefaultImpls.class */
    public static final class DefaultImpls {
        /* JADX WARN: Multi-variable type inference failed */
        public static <R, P, Q> void invoke(SelectBuilder<? super R> selectBuilder, SelectClause2<? super P, ? extends Q> selectClause2, AbstractC15122p<? super Q, ? super AbstractC15044d<? super R>, ? extends Object> pVar) {
            selectBuilder.invoke(selectClause2, null, pVar);
        }
    }

    void invoke(SelectClause0 selectClause0, AbstractC15118l<? super AbstractC15044d<? super R>, ? extends Object> lVar);

    <Q> void invoke(SelectClause1<? extends Q> selectClause1, AbstractC15122p<? super Q, ? super AbstractC15044d<? super R>, ? extends Object> pVar);

    <P, Q> void invoke(SelectClause2<? super P, ? extends Q> selectClause2, P p, AbstractC15122p<? super Q, ? super AbstractC15044d<? super R>, ? extends Object> pVar);

    <P, Q> void invoke(SelectClause2<? super P, ? extends Q> selectClause2, AbstractC15122p<? super Q, ? super AbstractC15044d<? super R>, ? extends Object> pVar);

    @ExperimentalCoroutinesApi
    void onTimeout(long j, AbstractC15118l<? super AbstractC15044d<? super R>, ? extends Object> lVar);
}
