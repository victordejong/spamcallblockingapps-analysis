package zendesk.support;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ResponseWrapper.class */
public abstract class ResponseWrapper {
    private Integer count;
    private String nextPage;
    private String previousPage;

    public Integer getCount() {
        return this.count;
    }

    public String getNextPage() {
        return this.nextPage;
    }

    public String getPreviousPage() {
        return this.previousPage;
    }
}
