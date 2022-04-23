package p016g.p026i.p027a;

import java.lang.reflect.Method;
/* renamed from: g.i.a.b */
/* loaded from: classes2-dex2jar.jar:g/i/a/b.class */
class C0296b {

    /* renamed from: g.i.a.b$a */
    /* loaded from: classes2-dex2jar.jar:g/i/a/b$a.class */
    enum EnumC0297a {
        Picasso252,
        Picasso271828,
        None
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static EnumC0297a m493a() {
        Method[] declaredMethods;
        Class<?> b = m492b("com.squareup.picasso.Picasso");
        if (b != null) {
            for (Method method : b.getDeclaredMethods()) {
                if (method.getName().equals("with")) {
                    return EnumC0297a.Picasso252;
                }
                if (method.getName().equals("get")) {
                    return EnumC0297a.Picasso271828;
                }
            }
        }
        return EnumC0297a.None;
    }

    /* renamed from: b */
    private static Class<?> m492b(String str) {
        try {
            return Class.forName(str);
        } catch (Exception e) {
            return null;
        }
    }
}
