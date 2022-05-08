package zendesk.support;

import android.support.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:zendesk/support/LastSearch.class */
class LastSearch {
    private final String origin = "mobile_sdk";
    private final String query;
    private final int resultsCount;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LastSearch(String str, int i) {
        this.query = str;
        this.resultsCount = i;
    }

    @Nullable
    String getQuery() {
        return this.query;
    }

    int getResultsCount() {
        return this.resultsCount;
    }
}
