package org.threeten.p040bp.format;
/* renamed from: org.threeten.bp.format.TextStyle */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/TextStyle.class */
public enum TextStyle {
    FULL,
    FULL_STANDALONE,
    SHORT,
    SHORT_STANDALONE,
    NARROW,
    NARROW_STANDALONE;

    public TextStyle asNormal() {
        return values()[ordinal() & (-2)];
    }

    public TextStyle asStandalone() {
        return values()[ordinal() | 1];
    }

    public boolean isStandalone() {
        boolean z = true;
        if ((ordinal() & 1) != 1) {
            z = false;
        }
        return z;
    }
}
