package p081h.p203i.p204a.p224e.p259j.p269j;
/* renamed from: h.i.a.e.j.j.o */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/o.class */
public final class C7882o {
    /* renamed from: a */
    public static int m19119a(int i) {
        if (i >= 0 && i <= 1) {
            return i;
        }
        StringBuilder sb = new StringBuilder(48);
        sb.append(i);
        sb.append(" is not a valid enum SessionVerbosity");
        throw new IllegalArgumentException(sb.toString());
    }
}
