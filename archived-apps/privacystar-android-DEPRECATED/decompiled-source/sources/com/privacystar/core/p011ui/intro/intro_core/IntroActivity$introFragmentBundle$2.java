package com.privacystar.core.p011ui.intro.intro_core;

import com.privacystar.core.p011ui.intro.InfoModule;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m254d2 = {"<anonymous>", "Lcom/privacystar/core/ui/intro/intro_core/IntroFragmentBundle;", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.intro_core.IntroActivity$introFragmentBundle$2 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/intro_core/IntroActivity$introFragmentBundle$2.class */
final class IntroActivity$introFragmentBundle$2 extends Lambda implements Function0<IntroFragmentBundle> {
    public static final IntroActivity$introFragmentBundle$2 INSTANCE = new IntroActivity$introFragmentBundle$2();

    IntroActivity$introFragmentBundle$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @NotNull
    public final IntroFragmentBundle invoke() {
        return new IntroFragmentBundle(InfoModule.INSTANCE.provideIntroFragments());
    }
}
