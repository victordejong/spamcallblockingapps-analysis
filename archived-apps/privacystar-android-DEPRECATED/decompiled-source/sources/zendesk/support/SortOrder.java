package zendesk.support;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SortOrder.class */
public enum SortOrder {
    ASCENDING("asc"),
    DESCENDING("desc");
    
    private final String apiValue;

    SortOrder(String str) {
        this.apiValue = str;
    }

    public String getApiValue() {
        return this.apiValue;
    }
}
