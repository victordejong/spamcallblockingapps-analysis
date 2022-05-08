package com.privacystar.core.p011ui.intro.environment_check;

import com.privacystar.core.p011ui.intro.environment_check.EnvironmentCheck;
import kotlin.Metadata;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016¨\u0006\u0005"}, m254d2 = {"Lcom/privacystar/core/ui/intro/environment_check/EnvironmentCheckManagerImpl;", "Lcom/privacystar/core/ui/intro/environment_check/EnvironmentCheck$Manager;", "()V", "shouldAlertTwice", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.environment_check.EnvironmentCheckManagerImpl */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/environment_check/EnvironmentCheckManagerImpl.class */
public final class EnvironmentCheckManagerImpl implements EnvironmentCheck.Manager {
    public static final EnvironmentCheckManagerImpl INSTANCE = new EnvironmentCheckManagerImpl();

    private EnvironmentCheckManagerImpl() {
    }

    @Override // com.privacystar.core.p011ui.intro.environment_check.EnvironmentCheck.Manager
    public boolean shouldAlertTwice() {
        return true;
    }
}
