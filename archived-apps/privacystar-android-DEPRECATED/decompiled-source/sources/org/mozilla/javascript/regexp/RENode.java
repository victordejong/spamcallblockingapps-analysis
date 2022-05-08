package org.mozilla.javascript.regexp;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/regexp/RENode.class */
class RENode {
    int bmsize;
    char chr;
    int flatIndex;
    boolean greedy;
    int index;
    RENode kid;
    RENode kid2;
    int kidlen;
    int length;
    int max;
    int min;
    RENode next;

    /* renamed from: op */
    byte f836op;
    int parenCount;
    int parenIndex;
    boolean sense;
    int startIndex;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RENode(byte b) {
        this.f836op = b;
    }
}
