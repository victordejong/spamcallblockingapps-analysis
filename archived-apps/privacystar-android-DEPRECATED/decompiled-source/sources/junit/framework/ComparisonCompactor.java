package junit.framework;
/* loaded from: classes2-dex2jar.jar:junit/framework/ComparisonCompactor.class */
public class ComparisonCompactor {
    private static final String DELTA_END = "]";
    private static final String DELTA_START = "[";
    private static final String ELLIPSIS = "...";
    private String fActual;
    private int fContextLength;
    private String fExpected;
    private int fPrefix;
    private int fSuffix;

    public ComparisonCompactor(int i, String str, String str2) {
        this.fContextLength = i;
        this.fExpected = str;
        this.fActual = str2;
    }

    private boolean areStringsEqual() {
        return this.fExpected.equals(this.fActual);
    }

    private String compactString(String str) {
        String str2 = DELTA_START + str.substring(this.fPrefix, (str.length() - this.fSuffix) + 1) + DELTA_END;
        String str3 = str2;
        if (this.fPrefix > 0) {
            str3 = computeCommonPrefix() + str2;
        }
        String str4 = str3;
        if (this.fSuffix > 0) {
            str4 = str3 + computeCommonSuffix();
        }
        return str4;
    }

    private String computeCommonPrefix() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.fPrefix > this.fContextLength ? ELLIPSIS : "");
        sb.append(this.fExpected.substring(Math.max(0, this.fPrefix - this.fContextLength), this.fPrefix));
        return sb.toString();
    }

    private String computeCommonSuffix() {
        int min = Math.min((this.fExpected.length() - this.fSuffix) + 1 + this.fContextLength, this.fExpected.length());
        StringBuilder sb = new StringBuilder();
        sb.append(this.fExpected.substring((this.fExpected.length() - this.fSuffix) + 1, min));
        sb.append((this.fExpected.length() - this.fSuffix) + 1 < this.fExpected.length() - this.fContextLength ? ELLIPSIS : "");
        return sb.toString();
    }

    private void findCommonPrefix() {
        this.fPrefix = 0;
        int min = Math.min(this.fExpected.length(), this.fActual.length());
        while (this.fPrefix < min && this.fExpected.charAt(this.fPrefix) == this.fActual.charAt(this.fPrefix)) {
            this.fPrefix++;
        }
    }

    private void findCommonSuffix() {
        int length = this.fExpected.length() - 1;
        int length2 = this.fActual.length() - 1;
        while (length2 >= this.fPrefix && length >= this.fPrefix && this.fExpected.charAt(length) == this.fActual.charAt(length2)) {
            length2--;
            length--;
        }
        this.fSuffix = this.fExpected.length() - length;
    }

    public String compact(String str) {
        if (this.fExpected == null || this.fActual == null || areStringsEqual()) {
            return Assert.format(str, this.fExpected, this.fActual);
        }
        findCommonPrefix();
        findCommonSuffix();
        return Assert.format(str, compactString(this.fExpected), compactString(this.fActual));
    }
}
