package com.google.p051a.p059e;
/* renamed from: com.google.a.e.a */
/* loaded from: classes-dex2jar.jar:com/google/a/e/a.class */
public final class C1501a {

    /* renamed from: a */
    private static final int f5747a;

    static {
        String[] split = System.getProperty("java.version").split("[._]");
        int parseInt = Integer.parseInt(split[0]);
        int i = parseInt;
        if (parseInt == 1) {
            i = parseInt;
            if (split.length > 1) {
                i = Integer.parseInt(split[1]);
            }
        }
        f5747a = i;
    }

    /* renamed from: a */
    public static int m6187a() {
        return f5747a;
    }

    /* renamed from: b */
    public static boolean m6186b() {
        return f5747a >= 9;
    }
}
