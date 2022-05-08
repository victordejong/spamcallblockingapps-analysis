package kotlin.reflect;

import java.util.Collection;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018��2\u00020\u0001R\u001c\u0010\u0002\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00040\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m254d2 = {"Lkotlin/reflect/KDeclarationContainer;", "", "members", "", "Lkotlin/reflect/KCallable;", "getMembers", "()Ljava/util/Collection;", "kotlin-stdlib"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/reflect/KDeclarationContainer.class */
public interface KDeclarationContainer {
    @NotNull
    Collection<KCallable<?>> getMembers();
}
