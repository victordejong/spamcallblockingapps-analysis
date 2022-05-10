package p573f.p587u;

import com.google.common.collect.MapMakerInternalMap;
import kotlin.TypeCastException;
import kotlin.text.StringsKt__StringsKt;
import p573f.p590w.p592c.C10059q;
/* renamed from: f.u.b */
/* loaded from: classes2-dex2jar.jar:f/u/b.class */
public final class C10015b {

    /* renamed from: a */
    public static final C10014a f37171a;

    static {
        C10014a aVar;
        Object newInstance;
        Object newInstance2;
        int a = m1670a();
        if (a >= 65544) {
            try {
                newInstance = Class.forName("kotlin.internal.jdk8.JDK8PlatformImplementations").newInstance();
                C10059q.m1642a(newInstance, "Class.forName(\"kotlin.in…entations\").newInstance()");
                try {
                } catch (ClassCastException e) {
                    ClassLoader classLoader = newInstance.getClass().getClassLoader();
                    ClassLoader classLoader2 = C10014a.class.getClassLoader();
                    Throwable initCause = new ClassCastException("Instance classloader: " + classLoader + ", base type classloader: " + classLoader2).initCause(e);
                    C10059q.m1642a((Object) initCause, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                    throw initCause;
                }
            } catch (ClassNotFoundException e2) {
                try {
                    Object newInstance3 = Class.forName("kotlin.internal.JRE8PlatformImplementations").newInstance();
                    C10059q.m1642a(newInstance3, "Class.forName(\"kotlin.in…entations\").newInstance()");
                    try {
                        if (newInstance3 != null) {
                            aVar = (C10014a) newInstance3;
                        } else {
                            throw new TypeCastException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
                        }
                    } catch (ClassCastException e3) {
                        ClassLoader classLoader3 = newInstance3.getClass().getClassLoader();
                        ClassLoader classLoader4 = C10014a.class.getClassLoader();
                        Throwable initCause2 = new ClassCastException("Instance classloader: " + classLoader3 + ", base type classloader: " + classLoader4).initCause(e3);
                        C10059q.m1642a((Object) initCause2, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                        throw initCause2;
                    }
                } catch (ClassNotFoundException e4) {
                }
            }
            if (newInstance != null) {
                aVar = (C10014a) newInstance;
                f37171a = aVar;
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
        }
        if (a >= 65543) {
            try {
                try {
                    newInstance2 = Class.forName("f.u.d.a").newInstance();
                    C10059q.m1642a(newInstance2, "Class.forName(\"kotlin.in…entations\").newInstance()");
                    try {
                    } catch (ClassCastException e5) {
                        ClassLoader classLoader5 = newInstance2.getClass().getClassLoader();
                        ClassLoader classLoader6 = C10014a.class.getClassLoader();
                        Throwable initCause3 = new ClassCastException("Instance classloader: " + classLoader5 + ", base type classloader: " + classLoader6).initCause(e5);
                        C10059q.m1642a((Object) initCause3, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                        throw initCause3;
                    }
                } catch (ClassNotFoundException e6) {
                    Object newInstance4 = Class.forName("kotlin.internal.JRE7PlatformImplementations").newInstance();
                    C10059q.m1642a(newInstance4, "Class.forName(\"kotlin.in…entations\").newInstance()");
                    try {
                        if (newInstance4 != null) {
                            aVar = (C10014a) newInstance4;
                        } else {
                            throw new TypeCastException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
                        }
                    } catch (ClassCastException e7) {
                        ClassLoader classLoader7 = newInstance4.getClass().getClassLoader();
                        ClassLoader classLoader8 = C10014a.class.getClassLoader();
                        Throwable initCause4 = new ClassCastException("Instance classloader: " + classLoader7 + ", base type classloader: " + classLoader8).initCause(e7);
                        C10059q.m1642a((Object) initCause4, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                        throw initCause4;
                    }
                }
            } catch (ClassNotFoundException e8) {
            }
            if (newInstance2 != null) {
                aVar = (C10014a) newInstance2;
                f37171a = aVar;
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
        }
        aVar = new C10014a();
        f37171a = aVar;
    }

    /* renamed from: a */
    public static final int m1670a() {
        String property = System.getProperty("java.specification.version");
        int i = 65542;
        if (property == null) {
            return 65542;
        }
        int a = StringsKt__StringsKt.m33a((CharSequence) property, '.', 0, false, 6, (Object) null);
        if (a < 0) {
            try {
                i = Integer.parseInt(property) * MapMakerInternalMap.MAX_SEGMENTS;
            } catch (NumberFormatException e) {
            }
            return i;
        }
        int i2 = a + 1;
        int a2 = StringsKt__StringsKt.m33a((CharSequence) property, '.', i2, false, 4, (Object) null);
        int i3 = a2;
        if (a2 < 0) {
            i3 = property.length();
        }
        if (property != null) {
            String substring = property.substring(0, a);
            C10059q.m1642a((Object) substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            if (property != null) {
                String substring2 = property.substring(i2, i3);
                C10059q.m1642a((Object) substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                try {
                    int parseInt = Integer.parseInt(substring);
                    i = (parseInt * MapMakerInternalMap.MAX_SEGMENTS) + Integer.parseInt(substring2);
                } catch (NumberFormatException e2) {
                }
                return i;
            }
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }
}
