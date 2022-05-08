package zendesk.support;
/* loaded from: classes3-dex2jar.jar:zendesk/support/RequestData.class */
public final class RequestData {
    public final int commentCount;

    /* renamed from: id */
    public final String f33481id;
    public int readCommentCount;

    public RequestData(String str, int i, int i2) {
        this.commentCount = i;
        this.f33481id = str;
        this.readCommentCount = i2;
    }

    public static RequestData create(String str, int i, int i2) {
        return new RequestData(str, i, i2);
    }

    public static RequestData create(Request request) {
        return new RequestData(request.getId(), request.getCommentCount().intValue(), 0);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || RequestData.class != obj.getClass()) {
            return false;
        }
        String str = this.f33481id;
        String str2 = ((RequestData) obj).f33481id;
        if (str != null) {
            z = str.equals(str2);
        } else if (str2 != null) {
            z = false;
        }
        return z;
    }

    public String getId() {
        return this.f33481id;
    }

    public int getReadCommentCount() {
        return this.readCommentCount;
    }

    public int hashCode() {
        String str = this.f33481id;
        return str != null ? str.hashCode() : 0;
    }

    public String toString() {
        return "RequestData{commentCount=" + this.commentCount + "readCommentCount=" + this.readCommentCount + ", id='" + this.f33481id + "'}";
    }
}
