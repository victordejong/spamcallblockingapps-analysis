package kotlin.text;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\b\u0003"}, m254d2 = {"<anonymous>", "Lkotlin/text/MatchResult;", "p1", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/text/Regex$findAll$2.class */
public final class Regex$findAll$2 extends FunctionReference implements Function1<MatchResult, MatchResult> {
    public static final Regex$findAll$2 INSTANCE = new Regex$findAll$2();

    Regex$findAll$2() {
        super(1);
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    public final String getName() {
        return "next";
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass(MatchResult.class);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final String getSignature() {
        return "next()Lkotlin/text/MatchResult;";
    }

    @Nullable
    public final MatchResult invoke(@NotNull MatchResult p1) {
        Intrinsics.checkParameterIsNotNull(p1, "p1");
        return p1.next();
    }
}
