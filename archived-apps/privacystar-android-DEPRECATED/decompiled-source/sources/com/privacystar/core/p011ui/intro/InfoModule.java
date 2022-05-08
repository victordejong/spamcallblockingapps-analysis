package com.privacystar.core.p011ui.intro;

import com.privacystar.core.p011ui.intro.environment_check.EnvironmentCheckFragment;
import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import com.privacystar.core.p011ui.intro.verification.CodeVerificationFragment;
import com.privacystar.core.p011ui.intro.verification.NumberVerificationFragment;
import com.privacystar.core.p011ui.intro.verification.VerificationFailedFragment;
import dagger.Module;
import dagger.Provides;
import java.util.List;
import javax.inject.Named;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0007¨\u0006\u0006"}, m254d2 = {"Lcom/privacystar/core/ui/intro/InfoModule;", "", "()V", "provideIntroFragments", "", "Lcom/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityContent;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
@Module
/* renamed from: com.privacystar.core.ui.intro.InfoModule */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/InfoModule.class */
public final class InfoModule {
    public static final InfoModule INSTANCE = new InfoModule();

    private InfoModule() {
    }

    @Provides
    @Named("introFragmentItems")
    @NotNull
    @Singleton
    public final List<IntroActivity.IntroActivityContent> provideIntroFragments() {
        return CollectionsKt.arrayListOf(new EnvironmentCheckFragment(), new EulaFragment(), new ThemingFragment(), new PermissionRetryFragment(), new PermissionDeniedFragment(), new CarrierRoadblockFragment(), new NumberVerificationFragment(), new CodeVerificationFragment(), new VerificationFailedFragment(), new ProtectionSetupFragment(), new LoadingFragment());
    }
}
