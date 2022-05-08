package com.privacystar.core.p011ui.intro.verification;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.MatchResult;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u000e\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m254d2 = {"<anonymous>", "", "it", "Lkotlin/text/MatchResult;", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.verification.NumberVerificationFragment$numberOfDigits$1 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/verification/NumberVerificationFragment$numberOfDigits$1.class */
final class NumberVerificationFragment$numberOfDigits$1 extends Lambda implements Function1<MatchResult, Integer> {
    public static final NumberVerificationFragment$numberOfDigits$1 INSTANCE = new NumberVerificationFragment$numberOfDigits$1();

    NumberVerificationFragment$numberOfDigits$1() {
        super(1);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final int invoke2(@NotNull MatchResult it) {
        Intrinsics.checkParameterIsNotNull(it, "it");
        return it.getValue().length();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Integer invoke(MatchResult matchResult) {
        return Integer.valueOf(invoke2(matchResult));
    }
}
