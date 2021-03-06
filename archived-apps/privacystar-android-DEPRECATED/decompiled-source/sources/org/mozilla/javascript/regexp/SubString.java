package org.mozilla.javascript.regexp;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/regexp/SubString.class */
public class SubString {
    public static final SubString emptySubString = new SubString();
    int index;
    int length;
    String str;

    public SubString() {
    }

    public SubString(String str) {
        this.str = str;
        this.index = 0;
        this.length = str.length();
    }

    public SubString(String str, int i, int i2) {
        this.str = str;
        this.index = i;
        this.length = i2;
    }

    public String toString() {
        return this.str == null ? "" : this.str.substring(this.index, this.index + this.length);
    }
}
