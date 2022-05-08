package p081h.p203i.p316b.p318b;

import gogolook.callgogolook2.gson.UserProfile;
import java.util.HashMap;
import java.util.Map;
import p081h.p203i.p316b.p317a.AbstractC9292d;
/* renamed from: h.i.b.b.o */
/* loaded from: classes2-dex2jar.jar:h/i/b/b/o.class */
public final class C9337o {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: h.i.b.b.o$a */
    /* loaded from: classes2-dex2jar.jar:h/i/b/b/o$a.class */
    public static abstract class EnumC9338a extends Enum<EnumC9338a> implements AbstractC9292d<Map.Entry<?, ?>, Object> {

        /* renamed from: a */
        public static final EnumC9338a f21369a = new C9339a("KEY", 0);

        /* renamed from: b */
        public static final EnumC9338a f21370b = new C9340b("VALUE", 1);

        /* renamed from: c */
        public static final /* synthetic */ EnumC9338a[] f21371c = {f21369a, f21370b};

        /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
        /* renamed from: h.i.b.b.o$a$a */
        /* loaded from: classes2-dex2jar.jar:h/i/b/b/o$a$a.class */
        public static final class C9339a extends EnumC9338a {
            public C9339a(String str, int i) {
                super(str, i, null);
            }

            /* renamed from: a */
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getKey();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
        /* renamed from: h.i.b.b.o$a$b */
        /* loaded from: classes2-dex2jar.jar:h/i/b/b/o$a$b.class */
        public static final class C9340b extends EnumC9338a {
            public C9340b(String str, int i) {
                super(str, i, null);
            }

            /* renamed from: a */
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getValue();
            }
        }

        public EnumC9338a(String str, int i) {
        }

        public /* synthetic */ EnumC9338a(String str, int i, C9336n nVar) {
            this(str, i);
        }

        public static EnumC9338a valueOf(String str) {
            return (EnumC9338a) Enum.valueOf(EnumC9338a.class, str);
        }

        public static EnumC9338a[] values() {
            return (EnumC9338a[]) f21371c.clone();
        }
    }

    /* renamed from: a */
    public static String m15404a(Map<?, ?> map) {
        StringBuilder a = C9318e.m15437a(map.size());
        a.append('{');
        boolean z = true;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            if (!z) {
                a.append(UserProfile.CARD_CATE_SEPARATOR);
            }
            z = false;
            a.append(entry.getKey());
            a.append('=');
            a.append(entry.getValue());
        }
        a.append('}');
        return a.toString();
    }

    /* renamed from: a */
    public static <K, V> HashMap<K, V> m15405a() {
        return new HashMap<>();
    }

    /* renamed from: a */
    public static boolean m15403a(Map<?, ?> map, Object obj) {
        if (map == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return map.entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    /* renamed from: b */
    public static <V> AbstractC9292d<Map.Entry<?, V>, V> m15402b() {
        return EnumC9338a.f21370b;
    }
}
