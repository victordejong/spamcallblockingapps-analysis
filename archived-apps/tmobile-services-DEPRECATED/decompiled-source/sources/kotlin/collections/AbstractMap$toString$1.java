package kotlin.collections;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0010&\n��\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0006\b\u0001\u0010\u0003 \u00012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "K", "V", "it", "", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/AbstractMap$toString$1.class */
final class AbstractMap$toString$1 extends Lambda implements Function1<Map.Entry<? extends K, ? extends V>, CharSequence> {

    /* renamed from: f */
    final /* synthetic */ AbstractMap f20466f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractMap$toString$1(AbstractMap abstractMap) {
        super(1);
        this.f20466f = abstractMap;
    }

    @NotNull
    /* renamed from: b */
    public final CharSequence invoke(@NotNull Map.Entry<? extends K, ? extends V> it) {
        String k;
        Intrinsics.m1830e(it, "it");
        k = this.f20466f.m2358k(it);
        return k;
    }
}
