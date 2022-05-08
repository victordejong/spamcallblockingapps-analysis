package kotlin.jvm.internal;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.reflect.KDeclarationContainer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SinceKotlin(version = "1.1")
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\b\u0017\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, m254d2 = {"Lkotlin/jvm/internal/LocalVariableReference;", "Lkotlin/jvm/internal/PropertyReference0;", "()V", "get", "", "getOwner", "Lkotlin/reflect/KDeclarationContainer;", "kotlin-stdlib"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/LocalVariableReference.class */
public class LocalVariableReference extends PropertyReference0 {
    @Override // kotlin.reflect.KProperty0
    @Nullable
    public Object get() {
        LocalVariableReferencesKt.notSupportedError();
        throw null;
    }

    @Override // kotlin.jvm.internal.CallableReference
    @NotNull
    public KDeclarationContainer getOwner() {
        LocalVariableReferencesKt.notSupportedError();
        throw null;
    }
}
