package kotlin.text;

import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\r\n\u0002\b\u0002\u0010��\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Lkotlin/Pair;", "", "", "currentIndex", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2.class */
public final class StringsKt__StringsKt$rangesDelimitedBy$2 extends Lambda implements Function2<CharSequence, Integer, Pair<? extends Integer, ? extends Integer>> {

    /* renamed from: f */
    final /* synthetic */ char[] f21052f;

    /* renamed from: g */
    final /* synthetic */ boolean f21053g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringsKt__StringsKt$rangesDelimitedBy$2(char[] cArr, boolean z) {
        super(2);
        this.f21052f = cArr;
        this.f21053g = z;
    }

    @Nullable
    /* renamed from: b */
    public final Pair<Integer, Integer> m1420b(@NotNull CharSequence receiver, int i) {
        Intrinsics.m1830e(receiver, "$receiver");
        int V = StringsKt__StringsKt.m1452V(receiver, this.f21052f, i, this.f21053g);
        return V < 0 ? null : TuplesKt.m2469a(Integer.valueOf(V), 1);
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public /* bridge */ /* synthetic */ Pair<? extends Integer, ? extends Integer> mo422o(CharSequence charSequence, Integer num) {
        return m1420b(charSequence, num.intValue());
    }
}
