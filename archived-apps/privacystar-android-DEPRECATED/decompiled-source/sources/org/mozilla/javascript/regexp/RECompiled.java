package org.mozilla.javascript.regexp;

import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/regexp/RECompiled.class */
class RECompiled implements Serializable {
    static final long serialVersionUID = -6144956577595844213L;
    int anchorCh = -1;
    int classCount;
    RECharSet[] classList;
    int flags;
    int parenCount;
    byte[] program;
    final char[] source;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RECompiled(String str) {
        this.source = str.toCharArray();
    }
}
