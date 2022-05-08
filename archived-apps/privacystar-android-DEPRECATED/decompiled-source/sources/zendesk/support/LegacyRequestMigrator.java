package zendesk.support;

import android.content.SharedPreferences;
import com.zendesk.logger.Logger;
import com.zendesk.util.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:zendesk/support/LegacyRequestMigrator.class */
class LegacyRequestMigrator implements RequestMigrator {
    private static final String LOG_TAG = "LegacyRequestMigrator";
    private static final String PREFS_COMMENT_COUNT_KEY_PREFIX = "request-id-cc";
    private static final String REQUEST_KEY = "stored_requests";
    private SharedPreferences legacyRequestStorage;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LegacyRequestMigrator(SharedPreferences sharedPreferences) {
        this.legacyRequestStorage = sharedPreferences;
    }

    private String getCommentCountKey(String str) {
        return String.format(Locale.US, "%s-%s", PREFS_COMMENT_COUNT_KEY_PREFIX, str);
    }

    @Override // zendesk.support.RequestMigrator
    public void clearLegacyRequestStorage() {
        this.legacyRequestStorage.edit().clear().apply();
    }

    @Override // zendesk.support.RequestMigrator
    public List<RequestData> getLegacyRequests() {
        String string = this.legacyRequestStorage.getString(REQUEST_KEY, null);
        if (StringUtils.isEmpty(string)) {
            return Collections.emptyList();
        }
        Logger.m298d(LOG_TAG, "Migrating legacy request IDs.", new Object[0]);
        List<String> fromCsv = StringUtils.fromCsv(string);
        ArrayList arrayList = new ArrayList(fromCsv.size());
        for (String str : fromCsv) {
            int i = this.legacyRequestStorage.getInt(getCommentCountKey(str), -1);
            if (i > -1) {
                arrayList.add(RequestData.create(str, i, 0));
            } else {
                arrayList.add(RequestData.create(str, 0, 0));
            }
        }
        return arrayList;
    }
}
