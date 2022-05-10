package p573f.p576c0;

import p573f.p595z.C10080c;
/* renamed from: f.c0.a */
/* loaded from: classes2-dex2jar.jar:f/c0/a.class */
public class C9908a {
    /* renamed from: a */
    public static final int m1803a(int i) {
        if (2 <= i && 36 >= i) {
            return i;
        }
        throw new IllegalArgumentException("radix " + i + " was not in valid range " + new C10080c(2, 36));
    }

    /* renamed from: a */
    public static final boolean m1804a(char c) {
        return Character.isWhitespace(c) || Character.isSpaceChar(c);
    }
}
