package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
@Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0006\b\u0001\u0010\u0003 ��H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "Q", "R", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/selects/UnbiasedSelectBuilderImpl$invoke$2.class */
final class UnbiasedSelectBuilderImpl$invoke$2 extends Lambda implements Function0<Unit> {

    /* renamed from: f */
    final /* synthetic */ UnbiasedSelectBuilderImpl f24040f;

    /* renamed from: g */
    final /* synthetic */ SelectClause1 f24041g;

    /* renamed from: h */
    final /* synthetic */ Function2 f24042h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnbiasedSelectBuilderImpl$invoke$2(UnbiasedSelectBuilderImpl unbiasedSelectBuilderImpl, SelectClause1 selectClause1, Function2 function2) {
        super(0);
        this.f24040f = unbiasedSelectBuilderImpl;
        this.f24041g = selectClause1;
        this.f24042h = function2;
    }

    /* renamed from: b */
    public final void m299b() {
        this.f24041g.mo317f(this.f24040f.m302a(), this.f24042h);
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        m299b();
        return Unit.f20447a;
    }
}
