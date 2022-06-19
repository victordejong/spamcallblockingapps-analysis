package p046g.p056i.p057a;

import java.lang.reflect.Method;
/* renamed from: g.i.a.b */
/* loaded from: classes2-dex2jar.jar:g/i/a/b.class */
class C1964b {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g.i.a.b$a */
    /* loaded from: classes2-dex2jar.jar:g/i/a/b$a.class */
    public enum EnumC1965a {
        Picasso252,
        Picasso271828,
        None
    }

    /* renamed from: a */
    public static EnumC1965a m493a() {
        Method[] declaredMethods;
        Class<?> m492b = m492b("com.squareup.picasso.Picasso");
        if (m492b != null) {
            for (Method method : m492b.getDeclaredMethods()) {
                if (method.getName().equals("with")) {
                    return EnumC1965a.Picasso252;
                }
                if (method.getName().equals("get")) {
                    return EnumC1965a.Picasso271828;
                }
            }
        }
        return EnumC1965a.None;
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
