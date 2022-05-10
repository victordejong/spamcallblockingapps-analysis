package kotlin.text;

import p573f.p576c0.AbstractC9912d;
import p573f.p590w.p592c.C10057o;
/* loaded from: classes2-dex2jar.jar:kotlin/text/RegexOption.class */
public enum RegexOption implements AbstractC9912d {
    IGNORE_CASE(2, 0, 2, null),
    MULTILINE(8, 0, 2, null),
    LITERAL(16, 0, 2, null),
    UNIX_LINES(1, 0, 2, null),
    COMMENTS(4, 0, 2, null),
    DOT_MATCHES_ALL(32, 0, 2, null),
    CANON_EQ(128, 0, 2, null);
    
    public final int mask;
    public final int value;

    RegexOption(int i, int i2) {
        this.value = i;
        this.mask = i2;
    }

    /* synthetic */ RegexOption(int i, int i2, int i3, C10057o oVar) {
        this(i, (i3 & 2) != 0 ? i : i2);
    }

    @Override // p573f.p576c0.AbstractC9912d
    public int getMask() {
        return this.mask;
    }

    @Override // p573f.p576c0.AbstractC9912d
    public int getValue() {
        return this.value;
    }
}
