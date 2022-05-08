package p626l.p641z;

import p626l.C14986p;
import p626l.p629c0.AbstractC14900c;
import p626l.p641z.p643d.AbstractC15137d;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.z.a */
/* loaded from: classes3-dex2jar.jar:l/z/a.class */
public final class C15105a {
    /* renamed from: a */
    public static final <T> Class<T> m425a(T t) {
        C15149k.m377b(t, "$this$javaClass");
        Class<T> cls = (Class<T>) t.getClass();
        if (cls != null) {
            return cls;
        }
        throw new C14986p("null cannot be cast to non-null type java.lang.Class<T>");
    }

    /* renamed from: a */
    public static final <T> Class<T> m424a(AbstractC14900c<T> cVar) {
        C15149k.m377b(cVar, "$this$java");
        Class<T> cls = (Class<T>) ((AbstractC15137d) cVar).mo372a();
        if (cls != null) {
            return cls;
        }
        throw new C14986p("null cannot be cast to non-null type java.lang.Class<T>");
    }

    /* renamed from: a */
    public static final <T> AbstractC14900c<T> m426a(Class<T> cls) {
        C15149k.m377b(cls, "$this$kotlin");
        return C15131a0.m419a(cls);
    }

    /* renamed from: b */
    public static final <T> Class<T> m423b(AbstractC14900c<T> cVar) {
        C15149k.m377b(cVar, "$this$javaObjectType");
        Class<T> cls = (Class<T>) ((AbstractC15137d) cVar).mo372a();
        if (cls.isPrimitive()) {
            String name = cls.getName();
            if (name != null) {
                switch (name.hashCode()) {
                    case -1325958191:
                        if (name.equals("double")) {
                            cls = (Class<T>) Double.class;
                            break;
                        }
                        break;
                    case 104431:
                        if (name.equals("int")) {
                            cls = (Class<T>) Integer.class;
                            break;
                        }
                        break;
                    case 3039496:
                        if (name.equals("byte")) {
                            cls = (Class<T>) Byte.class;
                            break;
                        }
                        break;
                    case 3052374:
                        if (name.equals("char")) {
                            cls = (Class<T>) Character.class;
                            break;
                        }
                        break;
                    case 3327612:
                        if (name.equals("long")) {
                            cls = (Class<T>) Long.class;
                            break;
                        }
                        break;
                    case 3625364:
                        if (name.equals("void")) {
                            cls = (Class<T>) Void.class;
                            break;
                        }
                        break;
                    case 64711720:
                        if (name.equals("boolean")) {
                            cls = (Class<T>) Boolean.class;
                            break;
                        }
                        break;
                    case 97526364:
                        if (name.equals("float")) {
                            cls = (Class<T>) Float.class;
                            break;
                        }
                        break;
                    case 109413500:
                        if (name.equals("short")) {
                            cls = (Class<T>) Short.class;
                            break;
                        }
                        break;
                }
            }
            if (cls != null) {
                return cls;
            }
            throw new C14986p("null cannot be cast to non-null type java.lang.Class<T>");
        } else if (cls != null) {
            return cls;
        } else {
            throw new C14986p("null cannot be cast to non-null type java.lang.Class<T>");
        }
    }
}
