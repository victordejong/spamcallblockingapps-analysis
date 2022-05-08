package org.mozilla.javascript.regexp;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/regexp/REBackTrackData.class */
public class REBackTrackData {
    final int continuationOp;
    final int continuationPc;

    /* renamed from: cp */
    final int f832cp;

    /* renamed from: op */
    final int f833op;
    final long[] parens;

    /* renamed from: pc */
    final int f834pc;
    final REBackTrackData previous;
    final REProgState stateStackTop;

    /* JADX INFO: Access modifiers changed from: package-private */
    public REBackTrackData(REGlobalData rEGlobalData, int i, int i2, int i3, int i4, int i5) {
        this.previous = rEGlobalData.backTrackStackTop;
        this.f833op = i;
        this.f834pc = i2;
        this.f832cp = i3;
        this.continuationOp = i4;
        this.continuationPc = i5;
        this.parens = rEGlobalData.parens;
        this.stateStackTop = rEGlobalData.stateStackTop;
    }
}
