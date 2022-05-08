package com.google.firebase.installations;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.firebase.installations.local.PersistedInstallationEntry;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/firebase/installations/Utils.class */
class Utils {
    private static final String APP_ID_IDENTIFICATION_SUBSTRING = ":";
    public static final long AUTH_TOKEN_EXPIRATION_BUFFER_IN_SECS = TimeUnit.HOURS.toSeconds(1);
    private static final Pattern API_KEY_FORMAT = Pattern.compile("\\AA[\\w-]{38}\\z");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isValidApiKeyFormat(@Nullable String str) {
        return API_KEY_FORMAT.matcher(str).matches();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isValidAppIdFormat(@Nullable String str) {
        return str.contains(APP_ID_IDENTIFICATION_SUBSTRING);
    }

    public long currentTimeInSecs() {
        return TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis());
    }

    public boolean isAuthTokenExpired(PersistedInstallationEntry persistedInstallationEntry) {
        return TextUtils.isEmpty(persistedInstallationEntry.getAuthToken()) || persistedInstallationEntry.getTokenCreationEpochInSecs() + persistedInstallationEntry.getExpiresInSecs() < currentTimeInSecs() + AUTH_TOKEN_EXPIRATION_BUFFER_IN_SECS;
    }
}
