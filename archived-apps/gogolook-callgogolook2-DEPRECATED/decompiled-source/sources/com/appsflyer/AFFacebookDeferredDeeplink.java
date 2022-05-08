package com.appsflyer;

import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AFFacebookDeferredDeeplink.class */
public final class AFFacebookDeferredDeeplink {

    /* loaded from: classes-dex2jar.jar:com/appsflyer/AFFacebookDeferredDeeplink$AppLinkFetchEvents.class */
    public interface AppLinkFetchEvents {
        void onAppLinkFetchFailed(String str);

        void onAppLinkFetchFinished(@Nullable String str, @Nullable String str2, @Nullable String str3);
    }
}
